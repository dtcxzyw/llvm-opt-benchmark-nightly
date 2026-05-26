inline.NumInlined: 4271
inline.NumDeleted: 1977
begin_hunk_0_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE5parseIPKDsEENS0_9constants9ErrorTypeET_S9_:bb.a

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit: ; preds = %bb.e, %bb.g, %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !249, !noalias !250 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !233, !noalias !250 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !234, !noalias !250 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !232, !noalias !250 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.bb, ptr %3, align 8, !tbaa !249
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bd, ptr %i.bm, align 8, !tbaa !233
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bf, ptr %i.bn, align 8, !tbaa !234
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bh, ptr %i.bo, align 8, !tbaa !232
  %i.bp = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !204, !noalias !253
  store <2 x ptr> %i.bp, ptr %4, align 16, !tbaa !204
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !208, !noalias !253
  store <2 x ptr> %i.br, ptr %i.bq, align 16, !tbaa !208
  call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !214 ; 2 uses
  %i.bt = icmp ult ptr %i.bh, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit, %.lr.ph.i.i.i
  %.06.i.pn.i.i = phi ptr [ %.06.i.i.i, %.lr.ph.i.i.i ], [ %i.bh, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit ]
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i, i64 8 ; 3 uses
  %i.bu = load ptr, ptr %.06.i.i.i, align 8, !tbaa !204
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef 512) #16
  %i.bv = icmp ult ptr %.06.i.i.i, %i.bs
  br i1 %i.bv, label %.lr.ph.i.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit, !llvm.loop !215

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit
  store ptr %i.bb, ptr %i.bi, align 8, !tbaa !204
  store ptr %i.bd, ptr %i.bj, align 8, !tbaa !204
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !204
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !256
  %i.bw = or i1 %i.f, %or.cond
  %i.bx = call noundef i32 @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE21parseWithBackRefLimitIPKDsEENS0_9constants9ErrorTypeET_S9_jbPj(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.o, i1 noundef zeroext %i.bw, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit, %bb.a
  %.1 = phi i32 [ 10, %bb.a ], [ %i.g, %bb.c ], [ %i.bx, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit ], [ %spec.select24, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE21parseWithBackRefLimitIPKDsEENS0_9constants9ErrorTypeET_S9_jbPj(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvh::ArrayRef", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !257
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.f = tail call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_4NodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load i8, ptr %i.g, align 8, !tbaa !157
  %i.h = tail call noundef i32 @_ZN6hermes5regex10parseRegexINS0_5RegexINS0_16UTF16RegexTraitsEEEEENS0_9constants9ErrorTypeEPKDsS8_PT_NS0_11SyntaxFlagsEjbPj(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0, i8 %.sroa.01.0.copyload, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) #15 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread

bb.c:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit
  %i.j = tail call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_8GoalNodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) ; 0 uses
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 8, !tbaa !157
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN6hermes5regex4Node16optimizeNodeListERSt6vectorIPS1_SaIS3_EENS0_11SyntaxFlagsERS2_ISt10unique_ptrIS1_St14default_deleteIS1_EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !258  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !258  ; 2 uses
  %.not22.i = icmp eq ptr %i.m, %i.o
  br i1 %.not22.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.017.023.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.ak, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.s = load ptr, ptr %.sroa.017.023.i, align 8, !tbaa !200
  store ptr %i.s, ptr %6, align 8, !tbaa !259
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !261
  %i.v = zext i32 %i.u to i64
  store i64 %i.v, ptr %i.q, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.w = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !263  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !203
  %i.z = load i32, ptr %i.r, align 8, !tbaa !243
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.ac = icmp ne ptr %i.x, %i.ab
  %.not21.i = select i1 %i.w, i1 %i.ac, i1 false
  br i1 %.not21.i, label %bb.e, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !264
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !266
  %i.ah = trunc i32 %i.af to i16
  %i.ai = add i16 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i16 %i.ai, ptr %i.aj, align 8, !tbaa !268
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.o
  br i1 %.not.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread, label %bb.d

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread: ; preds = %bb.e, %bb.c, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !271 ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !271 ; 2 uses
  %.not8.i = icmp eq ptr %i.al, %i.am
  br i1 %.not8.i, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread, %.lr.ph.i9
  %.010.i = phi i8 [ %i.as, %.lr.ph.i9 ], [ 0, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread ]
  %.sroa.05.09.i = phi ptr [ %i.at, %.lr.ph.i9 ], [ %i.al, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !219 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !221
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef zeroext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #15, !inline_history !272
  %i.as = or i8 %i.ar, %.010.i                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i10 = icmp eq ptr %i.at, %i.am
  br i1 %.not.i10, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i9

_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit: ; preds = %.lr.ph.i9, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread
  %.0.lcssa.i = phi i8 [ 0, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread ], [ %i.as, %.lr.ph.i9 ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %.0.lcssa.i, ptr %i.au, align 4, !tbaa !139
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit: ; preds = %bb.d, %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit
  %.0 = phi i32 [ %i.h, %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit ], [ 15, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_4NodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18, !noalias !273 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex4NodeE, i64 16), ptr %i.a, align 8, !tbaa !221, !noalias !273
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !225
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !218
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !217  ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975) ; 2 uses
  %.not.i.i2 = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i2)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #18 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  %i.t = ptrtoint ptr %i.a to i64
  store i64 %i.t, ptr %i.s, align 8, !tbaa !219
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.u = add i64 %i.j, -8
  %i.v = sub i64 %i.u, %i.k                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.y = add i64 %i.j, -8
  %i.z = sub i64 %i.y, %i.k
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ab
  %scevgep13 = getelementptr i8, ptr %i.i, i64 %i.ab
  %bound0 = icmp ult ptr %i.r, %scevgep13
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.af ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.i, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ag = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !219, !alias.scope !281, !noalias !276
  %wide.load15 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !219, !alias.scope !281, !noalias !276
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !219, !alias.scope !284, !noalias !281
  store <2 x i64> %wide.load15, ptr %i.ah, align 8, !tbaa !219, !alias.scope !284, !noalias !281
  %i.ai = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !219, !alias.scope !281, !noalias !276
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !219, !alias.scope !281, !noalias !276
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader17

.lr.ph.i.i.i.i.preheader17:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !219, !alias.scope !279, !noalias !276
  store i64 %i.ak, ptr %.012.i.i.i.i, align 8, !tbaa !219, !alias.scope !276, !noalias !279
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !219, !alias.scope !279, !noalias !276
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !289

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.r, ptr %i.b, align 8, !tbaa !217
  store ptr %i.an, ptr %i.c, align 8, !tbaa !218
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !225
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !257 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !227
  %.not.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  store ptr %i.a, ptr %i.ar, align 8, !tbaa !219
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !226 ; 4 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ba = ashr exact i64 %i.ay, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #18 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.ay ; 2 uses
  store ptr %i.a, ptr %i.bf, align 8, !tbaa !219
  %i.bg = icmp sgt i64 %i.ay, 0
  br i1 %i.bg, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.not.i17.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.be, ptr %i.ap, align 8, !tbaa !226
  store ptr %i.bh, ptr %i.aq, align 8, !tbaa !257
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !227
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f
  ret ptr %i.a
}

declare noundef i32 @_ZN6hermes5regex10parseRegexINS0_5RegexINS0_16UTF16RegexTraitsEEEEENS0_9constants9ErrorTypeEPKDsS8_PT_NS0_11SyntaxFlagsEjbPj(ptr noundef, ptr noundef, ptr noundef, i8, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_8GoalNodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18, !noalias !290 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex8GoalNodeE, i64 16), ptr %i.a, align 8, !tbaa !221, !noalias !290
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !225
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !218
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !217  ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975) ; 2 uses
  %.not.i.i5 = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i5)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #18 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  %i.t = ptrtoint ptr %i.a to i64
  store i64 %i.t, ptr %i.s, align 8, !tbaa !219
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.u = add i64 %i.j, -8
  %i.v = sub i64 %i.u, %i.k                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.y = add i64 %i.j, -8
  %i.z = sub i64 %i.y, %i.k
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ab
  %scevgep18 = getelementptr i8, ptr %i.i, i64 %i.ab
  %bound0 = icmp ult ptr %i.r, %scevgep18
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.af ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.i, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.ag = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !219, !alias.scope !298, !noalias !293
  %wide.load20 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !219, !alias.scope !298, !noalias !293
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !219, !alias.scope !301, !noalias !298
  store <2 x i64> %wide.load20, ptr %i.ah, align 8, !tbaa !219, !alias.scope !301, !noalias !298
  %i.ai = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !219, !alias.scope !298, !noalias !293
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !219, !alias.scope !298, !noalias !293
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader22

.lr.ph.i.i.i.i.preheader22:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader22, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader22 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !219, !alias.scope !296, !noalias !293
  store i64 %i.ak, ptr %.012.i.i.i.i, align 8, !tbaa !219, !alias.scope !293, !noalias !296
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !219, !alias.scope !296, !noalias !293
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !304

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.r, ptr %i.b, align 8, !tbaa !217
  store ptr %i.an, ptr %i.c, align 8, !tbaa !218
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !225
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !257 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !227
  %.not.i.i3 = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.ar, align 8, !tbaa !219
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !257
  br label %_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !226 ; 4 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ba = ashr exact i64 %i.ay, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #18 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.ay ; 2 uses
  store ptr %i.a, ptr %i.bf, align 8, !tbaa !219
  %i.bg = icmp sgt i64 %i.ay, 0
  br i1 %i.bg, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.be, ptr %i.ap, align 8, !tbaa !226
  store ptr %i.bh, ptr %i.aq, align 8, !tbaa !257
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !227
  br label %_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4Node16optimizeNodeListERSt6vectorIPS1_SaIS3_EENS0_11SyntaxFlagsERS2_ISt10unique_ptrIS1_St14default_deleteIS1_EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 comdat align 2 {
.lr.ph83:
  %3 = alloca %"class.std::vector.156", align 8   ; 9 uses
  %4 = alloca %"class.llvh::SmallVector.137", align 8 ; 7 uses
  %5 = alloca %"class.llvh::SmallVector.163", align 8 ; 11 uses
  %6 = alloca %"class.llvh::SmallVector.163", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18 ; 3 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !307
  store ptr %i.e, ptr %i.c, align 8, !tbaa !310
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.m = and i8 %1, 1
  %i.n = lshr i8 %1, 3
  %.lobit.i = and i8 %i.n, 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph83, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.r = phi ptr [ %i.e, %.lr.ph83 ], [ %i.bm, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !305  ; 6 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !311
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !257  ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !226  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 2 uses
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit
  %.pre92 = load ptr, ptr %i.t, align 8, !tbaa !271 ; 5 uses
  %.pre93 = load ptr, ptr %i.u, align 8, !tbaa !271 ; 6 uses
  %.pre94 = ptrtoint ptr %.pre93 to i64           ; 2 uses
  %.pre95 = ptrtoint ptr %.pre92 to i64           ; 2 uses
  %.pre97 = sub i64 %.pre94, %.pre95              ; 3 uses
  %i.ab = ashr i64 %.pre97, 5                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %._crit_edge
  %i.ad = and i64 %.pre97, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %.pre92, i64 %i.ad ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.046.i.i.i.i = phi i64 [ %i.aq, %bb.e ], [ %i.ab, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.026.045.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %.pre92, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.ae = load ptr, ptr %.sroa.026.045.i.i.i.i, align 8, !tbaa !219
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !219
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !219
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit139, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i.i.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !219
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit141, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i.i.i.i, i64 32
  %i.aq = add nsw i64 %.046.i.i.i.i, -1
  %i.ar = icmp sgt i64 %.046.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !312

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre51.i.i.i.i = sub i64 %.pre94, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %._crit_edge
  %.pre-phi52.i.i.i.i = phi i64 [ %.pre51.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.pre97, %._crit_edge ]
  %.sroa.026.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.pre92, %._crit_edge ] ; 5 uses
  %i.as = ashr exact i64 %.pre-phi52.i.i.i.i, 3
  switch i64 %i.as, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.at = load ptr, ptr %.sroa.026.0.lcssa.i.i.i.i, align 8, !tbaa !219
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.026.0.lcssa.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.sroa.026.1.i.i.i.i = phi ptr [ %i.av, %bb.g ], [ %.sroa.026.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aw = load ptr, ptr %.sroa.026.1.i.i.i.i, align 8, !tbaa !219
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.026.1.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.026.2.i.i.i.i = phi ptr [ %i.ay, %bb.i ], [ %.sroa.026.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.026.2.i.i.i.i, align 8, !tbaa !219
  %i.ba = icmp eq ptr %i.az, null
  %spec.select.i.i.i.i = select i1 %i.ba, ptr %.sroa.026.2.i.i.i.i, ptr %.pre93
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit139: ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit141: ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit139, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit141, %bb.j, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.026.1.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i, %bb.j ], [ %.sroa.026.0.lcssa.i.i.i.i, %bb.f ], [ %i.bd, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit141 ], [ %i.bc, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit139 ], [ %i.bb, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.026.045.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.be = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.pre93
  %.sroa.07.026.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %.sroa.07.026.i.i, %.pre93
  %or.cond.i.i = select i1 %i.be, i1 true, i1 %.not27.i.i
  br i1 %or.cond.i.i, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i, %bb.l
  %.sroa.07.029.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %.sroa.07.026.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i ] ; 2 uses
  %.sroa.013.028.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.l ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i ] ; 3 uses
  %i.bf = load ptr, ptr %.sroa.07.029.i.i, align 8, !tbaa !219 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  store ptr %i.bf, ptr %.sroa.013.028.i.i, align 8, !tbaa !219
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %.lr.ph.i.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i, i64 8 ; 2 uses
  %.not.i.i34 = icmp eq ptr %.sroa.07.0.i.i, %.pre93
  br i1 %.not.i.i34, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit, label %.lr.ph.i.i, !llvm.loop !313

_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit: ; preds = %bb.l, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i
  %.sroa.013.2.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.not.i.i35 = icmp eq ptr %.sroa.013.2.i.i, %.pre93
  br i1 %.not.i.i35, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit
  %i.bi = ptrtoint ptr %.sroa.013.2.i.i to i64
  %i.bj = sub i64 %i.bi, %.pre95
  %i.bk = getelementptr inbounds i8, ptr %.pre92, i64 %i.bj
  store ptr %i.bk, ptr %i.u, align 8, !tbaa !257
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %bb.a, %._crit_edge.i.i.i.i, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i
  %i.bl = load ptr, ptr %3, align 8, !tbaa !314   ; 4 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !314 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %._crit_edge84, label %bb.a, !llvm.loop !315

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit
  %.074 = phi i64 [ %i.fn, %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit ], [ 0, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bo = load ptr, ptr %i.t, align 8, !tbaa !226
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.074
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !219 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !221
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr dead_on_unwind nonnull writable sret(%"class.llvh::SmallVector.137") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #15
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.bv = load ptr, ptr %4, align 8, !tbaa !200   ; 2 uses
  %i.bw = load i32, ptr %i.f, align 8, !tbaa !261
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = load ptr, ptr %3, align 8, !tbaa !314   ; 2 uses
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc
  call void @_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE15_M_range_insertIPS6_EEvN9__gnu_cxx17__normal_iteratorISA_S8_EET_SE_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.cd, ptr noundef %i.bv, ptr noundef %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.g, ptr %5, align 8, !tbaa !200
  store i32 0, ptr %i.h, align 8, !tbaa !261
  store i32 5, ptr %i.i, align 4, !tbaa !316
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %.173 = phi i64 [ %.074, %.lr.ph ], [ %i.cl, %bb.n ] ; 3 uses
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !226
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.173
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !219 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !221
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %5) #15
  br i1 %i.ck, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cl = add nuw i64 %.173, 1                    ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.aa
  br i1 %i.cm, label %bb.m, label %.critedge, !llvm.loop !317

.critedge:                                        ; preds = %bb.n, %bb.m
  %.1.lcssa = phi i64 [ %i.cl, %bb.n ], [ %.173, %bb.m ] ; 3 uses
  %i.cn = sub i64 %.1.lcssa, %.074
  %i.co = icmp ugt i64 %i.cn, 1
  br i1 %i.co, label %bb.o, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit

bb.o:                                             ; preds = %.critedge
  %i.cp = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 14 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !200
  store i32 0, ptr %i.k, align 8, !tbaa !261
  store i32 5, ptr %i.l, align 4, !tbaa !316
  %i.cq = load i32, ptr %i.h, align 8, !tbaa !261 ; 10 uses
  %.not.i.i36 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i36, label %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %5, align 8, !tbaa !200   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.g
  br i1 %i.cs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.cr, ptr %6, align 8, !tbaa !200
  store i32 %i.cq, ptr %i.k, align 8, !tbaa !261
  %i.ct = load i32, ptr %i.i, align 4, !tbaa !316
  store i32 %i.ct, ptr %i.l, align 4, !tbaa !316
  store ptr %i.g, ptr %5, align 8, !tbaa !200
  store i32 0, ptr %i.i, align 4, !tbaa !316
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cu = icmp ugt i32 %i.cq, 5
  br i1 %i.cu, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i.thread

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i:             ; preds = %bb.r
  %i.cv = zext i32 %i.cq to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %i.j, i64 noundef %i.cv, i64 noundef 4) #15
  %.pre = load i32, ptr %i.h, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i43 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i43, label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i.thread

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i.thread:      ; preds = %bb.r, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i
  %i.cw = phi i32 [ %.pre, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i ], [ %i.cq, %bb.r ]
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load ptr, ptr %5, align 8, !tbaa !200
  %i.cz = load ptr, ptr %6, align 8, !tbaa !200
  %gepdiff.i = shl nuw nsw i64 %i.cx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 4 %i.cy, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i: ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i.thread, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i
  store i32 %i.cq, ptr %i.k, align 8, !tbaa !261
  br label %bb.s

_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit:         ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex13MatchCharNodeE, i64 16), ptr %i.cp, align 8, !tbaa !221
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.db, ptr %i.da, align 8, !tbaa !200
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 0, ptr %i.dc, align 8, !tbaa !261
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  store i32 5, ptr %i.dd, align 4, !tbaa !316
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit

bb.s:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i, %bb.q
  store i32 0, ptr %i.h, align 8, !tbaa !261
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex13MatchCharNodeE, i64 16), ptr %i.cp, align 8, !tbaa !221
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !200
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !261
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 20 ; 2 uses
  store i32 5, ptr %i.dh, align 4, !tbaa !316
  %i.di = load ptr, ptr %6, align 8, !tbaa !200   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.j
  br i1 %i.dj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.di, ptr %i.de, align 8, !tbaa !200
  store i32 %i.cq, ptr %i.dg, align 8, !tbaa !261
  %i.dk = load i32, ptr %i.l, align 4, !tbaa !316
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !316
  store ptr %i.j, ptr %6, align 8, !tbaa !200
  store i32 0, ptr %i.l, align 4, !tbaa !316
  store i32 0, ptr %i.k, align 8, !tbaa !261
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit

bb.u:                                             ; preds = %bb.s
  %i.dl = zext i32 %i.cq to i64                   ; 2 uses
  %i.dm = icmp ugt i32 %i.cq, 5
  br i1 %i.dm, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51.thread

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51:           ; preds = %bb.u
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(36) %i.de, ptr noundef nonnull %i.df, i64 noundef %i.dl, i64 noundef 4) #15
  %.pre90 = load i32, ptr %i.k, align 8, !tbaa !261 ; 2 uses
  %.pre99 = zext i32 %.pre90 to i64
  %.not.i.i.i53 = icmp eq i32 %.pre90, 0
  br i1 %.not.i.i.i53, label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i56, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51.thread

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51.thread:    ; preds = %bb.u, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51
  %.pre-phi100137 = phi i64 [ %.pre99, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51 ], [ %i.dl, %bb.u ]
  %i.dn = load ptr, ptr %6, align 8, !tbaa !200
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !200
  %gepdiff.i55 = shl nuw nsw i64 %.pre-phi100137, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 4 %i.dn, i64 %gepdiff.i55, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i56

_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i56: ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51.thread, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51
  store i32 %i.cq, ptr %i.dg, align 8, !tbaa !261
  store i32 0, ptr %i.k, align 8, !tbaa !261
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit

_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit: ; preds = %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit, %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i56, %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store i8 %i.m, ptr %i.dp, align 8, !tbaa !318
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 49
  store i8 %.lobit.i, ptr %i.dq, align 1, !tbaa !325
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !218 ; 6 uses
  %i.ds = load ptr, ptr %i.p, align 8, !tbaa !225
  %.not.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit
  store ptr %i.cp, ptr %i.dr, align 8, !tbaa !219
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  store ptr %i.dt, ptr %i.o, align 8, !tbaa !218
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit

bb.w:                                             ; preds = %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit
  %i.du = load ptr, ptr %2, align 8, !tbaa !217   ; 10 uses
  %i.dv = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.x, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.dz = ashr exact i64 %i.dx, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i, %i.dz ; 2 uses
  %i.eb = call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i38 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i38)
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #18 ; 10 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dx
  store ptr %i.cp, ptr %i.ee, align 8, !tbaa !219
  %.not10.i.i.i.i.i = icmp eq ptr %i.du, %i.dr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.ef = add i64 %i.dv, -8
  %i.eg = sub i64 %i.ef, %i.dw                    ; 2 uses
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eg, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ed, i64 8
  %i.ej = add i64 %i.dv, -8
  %i.ek = sub i64 %i.ej, %i.dw
  %i.el = and i64 %i.ek, -8                       ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep, i64 %i.el
  %scevgep153 = getelementptr i8, ptr %i.du, i64 8
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.el
  %bound0 = icmp ult ptr %i.ed, %scevgep154
  %bound1 = icmp ult ptr %i.du, %scevgep152
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ei, 4611686018427387900     ; 3 uses
  %i.em = shl i64 %n.vec, 3                       ; 2 uses
  %i.en = getelementptr i8, ptr %i.ed, i64 %i.em  ; 2 uses
  %i.eo = getelementptr i8, ptr %i.du, i64 %i.em
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ep = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ed, i64 %i.ep ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.du, i64 %i.ep ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.eq = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep155, align 8, !tbaa !219, !alias.scope !331, !noalias !326
  %wide.load156 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !219, !alias.scope !331, !noalias !326
  %i.er = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !219, !alias.scope !334, !noalias !331
  store <2 x i64> %wide.load156, ptr %i.er, align 8, !tbaa !219, !alias.scope !334, !noalias !331
  %i.es = getelementptr i8, ptr %next.gep155, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep155, align 8, !tbaa !219, !alias.scope !331, !noalias !326
  store <2 x ptr> splat (ptr null), ptr %i.es, align 8, !tbaa !219, !alias.scope !331, !noalias !326
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ei, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader158

.lr.ph.i.i.i.i.i.preheader158:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ed, %vector.memcheck ], [ %i.ed, %.lr.ph.i.i.i.i.i.preheader ], [ %i.en, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.du, %vector.memcheck ], [ %i.du, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader158, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader158 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader158 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.eu = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !219, !alias.scope !329, !noalias !326
  store i64 %i.eu, ptr %.012.i.i.i.i.i, align 8, !tbaa !219, !alias.scope !326, !noalias !329
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !219, !alias.scope !329, !noalias !326
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ev, %i.dr
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !337

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ed, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.en, %middle.block ], [ %i.ew, %.lr.ph.i.i.i.i.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dx) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ed, ptr %2, align 8, !tbaa !217
  store ptr %i.ex, ptr %i.o, align 8, !tbaa !218
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb
  store ptr %i.ey, ptr %i.p, align 8, !tbaa !225
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit: ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %i.ez = phi ptr [ %i.dt, %bb.v ], [ %i.ex, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ]
  %i.fa = load ptr, ptr %6, align 8, !tbaa !200   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.j
  br i1 %i.fb, label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit
  call void @free(ptr noundef %i.fa) #15
  %.pre91 = load ptr, ptr %i.o, align 8, !tbaa !338
  br label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit

_ZN4llvh11SmallVectorIjLj5EED2Ev.exit:            ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit, %bb.z
  %i.fc = phi ptr [ %i.ez, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit ], [ %.pre91, %bb.z ]
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !219
  %i.ff = load ptr, ptr %i.t, align 8, !tbaa !226 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.074
  store ptr %i.fe, ptr %i.fg, align 8, !tbaa !219
  %.idx = shl i64 %.074, 3
  %i.fh = add i64 %.idx, 8                        ; 3 uses
  %.idx70 = shl nsw i64 %.1.lcssa, 3              ; 2 uses
  %.not4.i.i.i.i = icmp eq i64 %i.fh, %.idx70
  br i1 %.not4.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit, label %.lr.ph.preheader.i.i.i.i39

.lr.ph.preheader.i.i.i.i39:                       ; preds = %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit
  %i.fi = getelementptr i8, ptr %i.ff, i64 %i.fh
  %gepdiff = sub i64 %.idx70, %i.fh
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fi, i8 0, i64 %gepdiff, i1 false), !tbaa !219
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit: ; preds = %.lr.ph.preheader.i.i.i.i39, %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit, %.critedge
  %i.fj = load ptr, ptr %5, align 8, !tbaa !200   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.g
  br i1 %i.fk, label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40, label %bb.aa

bb.aa:                                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit
  call void @free(ptr noundef %i.fj) #15
  br label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40

_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40:          ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.fl = load ptr, ptr %4, align 8, !tbaa !200   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.q
  br i1 %i.fm, label %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40
  call void @free(ptr noundef %i.fl) #15
  br label %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit

_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.fn = add i64 %.1.lcssa, 1                    ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.aa
  br i1 %i.fo, label %.lr.ph, label %._crit_edge, !llvm.loop !339

._crit_edge84:                                    ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %.not.i.i.i41 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge84
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !310
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.bl to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.fs) #16
  br label %_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EED2Ev.exit: ; preds = %._crit_edge84, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4NodeD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node26matchesExactlyOneCharacterEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex4Node16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node6isGoalEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4Node11getChildrenEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.137") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !316
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4Node15reverseChildrenEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex4Node8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex8GoalNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex8GoalNode6isGoalEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex8GoalNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !340  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !151    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !157
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.c, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !151
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !340
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !341
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes12_GLOBAL__N_119DependencyExtractor13addDependencyEN4llvh9StringRefENS_14DependencyKindE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !1262
  %i.t = load ptr, ptr %5, align 8, !tbaa !154    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1263 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.p, align 8, !tbaa !154
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !157
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !157
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre24 = load i64, ptr %.phi.trans.insert23, align 8, !tbaa !1263
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ab = phi i64 [ %.pre24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.x, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !1263
  store i64 0, ptr %i.ac, align 8, !tbaa !1263
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.af = load i32, ptr %i.n, align 8, !tbaa !1259
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !1259
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !153
  br label %_ZN6hermes10DependencyD2Ev.exit

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b
  call void @_ZNSt6vectorIN6hermes10DependencyESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(36) %5)
  %.pre25 = load ptr, ptr %5, align 8, !tbaa !154 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %.pre25, %i.ai
  br i1 %i.aj, label %_ZN6hermes10DependencyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !157
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.pre25, i64 noundef %i.al) #16
  br label %_ZN6hermes10DependencyD2Ev.exit

_ZN6hermes10DependencyD2Ev.exit:                  ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.m

bb.e:                                             ; preds = %_ZN4llvh9StringRef13consume_frontES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %.not.i4 = icmp eq ptr %i.j, null
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.am, ptr %7, align 8, !tbaa !1262, !alias.scope !1264
  br i1 %.not.i4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !1263, !alias.scope !1264
  store i8 0, ptr %i.am, align 8, !tbaa !157, !alias.scope !1264
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !1264
  store i64 %i.i, ptr %i.a, align 8, !tbaa !180, !noalias !1264
  %i.ao = icmp ugt i64 %i.i, 15
  br i1 %i.ao, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #15 ; 2 uses
  store ptr %i.ap, ptr %7, align 8, !tbaa !154, !alias.scope !1264
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !180, !noalias !1264
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !157, !alias.scope !1264
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.ar = phi ptr [ %i.ap, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  switch i64 %i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.as = load i8, ptr %i.j, align 1, !tbaa !157
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.j, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.at = load i64, ptr %i.a, align 8, !tbaa !180, !noalias !1264 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !1263, !alias.scope !1264
  %i.av = load ptr, ptr %7, align 8, !tbaa !154, !alias.scope !1264
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !1264
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i32 %3, ptr %i.ax, align 8, !tbaa !1259
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !153 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !150
  %.not.i.i5 = icmp eq ptr %i.az, %i.bb
  br i1 %.not.i.i5, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !1262
  %i.bd = load ptr, ptr %7, align 8, !tbaa !154   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1263 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6: ; preds = %bb.k
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !154
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !157
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1263
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8.thread

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6
  %i.bl = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6 ], [ %i.bh, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !1263
  store i64 0, ptr %i.bm, align 8, !tbaa !1263
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !1259
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !1259
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !153
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr %i.br, ptr %i.ay, align 8, !tbaa !153
  br label %_ZN6hermes10DependencyD2Ev.exit11

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  call void @_ZNSt6vectorIN6hermes10DependencyESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(36) %7)
  %.pre22 = load ptr, ptr %7, align 8, !tbaa !154 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %.pre22, %i.bs
  br i1 %i.bt, label %_ZN6hermes10DependencyD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !157
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %.pre22, i64 noundef %i.bv) #16
  br label %_ZN6hermes10DependencyD2Ev.exit11

_ZN6hermes10DependencyD2Ev.exit11:                ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE9push_backEOS1_.exit8.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.m

bb.m:                                             ; preds = %_ZN6hermes10DependencyD2Ev.exit11, %_ZN6hermes10DependencyD2Ev.exit
  ret void
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes10DependencyESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !152    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %i.j, 40
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #18
  br label %_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN6hermes10DependencyESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !1262
  %i.r = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1263 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN6hermes10DependencyC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !154
  %i.y = load i64, ptr %i.s, align 8, !tbaa !157
  store i64 %i.y, ptr %i.q, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1263
  br label %_ZN6hermes10DependencyC2EOS0_.exit

_ZN6hermes10DependencyC2EOS0_.exit:               ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !1263
  store ptr %i.s, ptr %2, align 8, !tbaa !154
  store i64 0, ptr %i.aa, align 8, !tbaa !1263
  store i8 0, ptr %i.s, align 8, !tbaa !157
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1259
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !1259
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes10DependencyC2EOS0_.exit, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZN6hermes10DependencyC2EOS0_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6hermes10DependencyC2EOS0_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !1262, !alias.scope !1267, !noalias !1270
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !154, !alias.scope !1270, !noalias !1267 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1263, !alias.scope !1270, !noalias !1267 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !1272
  br label %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !154, !alias.scope !1267, !noalias !1270
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !157, !alias.scope !1270, !noalias !1267
  store i64 %i.an, ptr %i.af, align 8, !tbaa !157, !alias.scope !1267, !noalias !1270
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !1263, !alias.scope !1270, !noalias !1267
  br label %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.ao = phi i64 [ %i.ak, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !1263, !alias.scope !1267, !noalias !1270
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !154, !alias.scope !1270, !noalias !1267
  store i64 0, ptr %i.ap, align 8, !tbaa !1263, !alias.scope !1270, !noalias !1267
  store i8 0, ptr %i.ah, align 8, !tbaa !157, !alias.scope !1270, !noalias !1267
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1259, !alias.scope !1270, !noalias !1267
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !1259, !alias.scope !1267, !noalias !1270
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1273

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6hermes10DependencyC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZN6hermes10DependencyC2EOS0_.exit ], [ %i.av, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aw, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !1262, !alias.scope !1274, !noalias !1277
  %i.ay = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !154, !alias.scope !1277, !noalias !1274 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1263, !alias.scope !1277, !noalias !1274 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false), !alias.scope !1279
  br label %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !154, !alias.scope !1274, !noalias !1277
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !157, !alias.scope !1277, !noalias !1274
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !157, !alias.scope !1274, !noalias !1277
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !1263, !alias.scope !1277, !noalias !1274
  br label %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.f
  %i.bg = phi i64 [ %i.bc, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !1263, !alias.scope !1274, !noalias !1277
  store ptr %i.az, ptr %.0911.i.i.i19, align 8, !tbaa !154, !alias.scope !1277, !noalias !1274
  store i64 0, ptr %i.bh, align 8, !tbaa !1263, !alias.scope !1277, !noalias !1274
  store i8 0, ptr %i.az, align 8, !tbaa !157, !alias.scope !1277, !noalias !1274
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1259, !alias.scope !1277, !noalias !1274
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !1259, !alias.scope !1274, !noalias !1277
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1273

_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aw, %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN6hermes10DependencyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !150
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.br) #16
  br label %_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6hermes10DependencyESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !152
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !153
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.j
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !150
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes12_GLOBAL__N_119DependencyExtractor5visitEPNS_6ESTree22CallExpressionLikeNodeE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = tail call noundef ptr @_ZN6hermes6ESTree9getCalleeEPNS0_22CallExpressionLikeNodeE(ptr noundef %1) #15 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !437  ; 2 uses
  %i.d = icmp ne i32 %i.c, 66
  %.not75 = icmp eq ptr %i.a, null                ; 2 uses
  %.not = or i1 %.not75, %i.d
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1280 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %.not51 = icmp eq ptr %i.k, %i.f
  br i1 %.not51, label %bb.g, label %.critedge.1

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6hermes6ESTree12getArgumentsEPNS0_22CallExpressionLikeNodeE(ptr noundef %1) #15 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1281
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1282, !nonnull !73, !align !74
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.s, align 1, !tbaa !1258
  store ptr @.str.24, ptr %4, align 8, !tbaa !157
  store i8 3, ptr %i.r, align 8, !tbaa !1255
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.p, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !706  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !437
  %i.x = icmp ne i32 %i.w, 36
  %.not17.i = icmp eq ptr %i.u, null
  %.not.i = or i1 %.not17.i, %i.x
  br i1 %.not.i, label %bb.f, label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1282, !nonnull !73, !align !74
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i12.i = load ptr, ptr %i.aa, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i14.i = load ptr, ptr %.sroa.2.0..sroa_idx.i13.i, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.ac, align 1, !tbaa !1258
  store ptr @.str.24, ptr %5, align 8, !tbaa !157
  store i8 3, ptr %i.ab, align 8, !tbaa !1255
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.z, i32 noundef 0, ptr %.sroa.0.0.copyload.i12.i, ptr %.sroa.2.0.copyload.i14.i, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !704 ; 2 uses
  %.sroa.021.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !144
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !180
  tail call fastcc void @_ZN6hermes12_GLOBAL__N_119DependencyExtractor13addDependencyEN4llvh9StringRefENS_14DependencyKindE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %.sroa.021.0.copyload, i64 %.sroa.222.0.copyload, i32 noundef 2)
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

.critedge.1:                                      ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !148
  %.not51.1 = icmp eq ptr %i.ag, %i.f
  br i1 %.not51.1, label %bb.g, label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !148
  %.not51.2 = icmp eq ptr %i.ai, %i.f
  br i1 %.not51.2, label %bb.g, label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !148
  %.not51.3 = icmp eq ptr %i.ak, %i.f
  br i1 %.not51.3, label %bb.g, label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.3
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148
  %.not51.4 = icmp eq ptr %i.am, %i.f
  br i1 %.not51.4, label %bb.g, label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148
  %.not51.5 = icmp eq ptr %i.ao, %i.f
  br i1 %.not51.5, label %bb.g, label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

bb.g:                                             ; preds = %.critedge.5, %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ 1, %.critedge.1 ], [ 2, %.critedge.2 ], [ 3, %.critedge.3 ], [ 4, %.critedge.4 ], [ 5, %.critedge.5 ]
  %i.ap = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6hermes6ESTree12getArgumentsEPNS0_22CallExpressionLikeNodeE(ptr noundef %1) #15 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1281
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1282, !nonnull !73, !align !74
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i64 = load ptr, ptr %i.au, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i.i66 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i65, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.aw, align 1, !tbaa !1258
  store ptr @.str.24, ptr %2, align 8, !tbaa !157
  store i8 3, ptr %i.av, align 8, !tbaa !1255
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.at, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i64, ptr %.sroa.2.0.copyload.i.i66, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !706 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !437
  %i.bb = icmp ne i32 %i.ba, 36
  %.not17.i58 = icmp eq ptr %i.ay, null
  %.not.i59 = or i1 %.not17.i58, %i.bb
  br i1 %.not.i59, label %bb.j, label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit67

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1282, !nonnull !73, !align !74
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i12.i61 = load ptr, ptr %i.be, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx.i13.i62 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i14.i63 = load ptr, ptr %.sroa.2.0..sroa_idx.i13.i62, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.bg, align 1, !tbaa !1258
  store ptr @.str.24, ptr %3, align 8, !tbaa !157
  store i8 3, ptr %i.bf, align 8, !tbaa !1255
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bd, i32 noundef 0, ptr %.sroa.0.0.copyload.i12.i61, ptr %.sroa.2.0.copyload.i14.i63, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit67: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !704 ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.bi, align 8, !tbaa !144
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.213.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !180
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr @_ZN6hermes12_GLOBAL__N_116RESOURCE_CALLEESE, i64 %.lcssa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1283
  tail call fastcc void @_ZN6hermes12_GLOBAL__N_119DependencyExtractor13addDependencyEN4llvh9StringRefENS_14DependencyKindE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %.sroa.012.0.copyload, i64 %.sroa.213.0.copyload, i32 noundef %i.bl)
  br label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.bm = icmp ne i32 %i.c, 58
  %.not46 = or i1 %.not75, %i.bm
  br i1 %.not46, label %_ZN6hermes12_GLOBAL__N_119DependencyExtractor23needFirstStringArgumentEPNS_6ESTree22CallExpressionLikeNodeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !908 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !437
  %i.br = icmp ne i32 %i.bq, 66
  %.not4777 = icmp eq ptr %i.bo, null
  %.not47 = or i1 %.not4777, %i.br
end_hunk_1
