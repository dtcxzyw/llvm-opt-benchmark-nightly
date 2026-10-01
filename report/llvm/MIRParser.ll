Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MIRParser?download=true
inline.NumInlined: 7614
inline.NumDeleted: 3779
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4llvm4yaml12ScalarTraitsINS0_11StringValueEvE5inputENS_9StringRefEPvRS2_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ao = call noundef ptr @_ZNK4llvm4yaml5Input14getCurrentNodeEv(ptr noundef nonnull align 8 dereferenceable(640) %2) #18 ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !60
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret { ptr, i64 } { ptr @.str.17, i64 0 }
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS0_11StringValueENS0_12EmptyContextEEEvNS_9StringRefERT_RKS6_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = load ptr, ptr %0, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.f, label %bb.b, label %_ZNK4llvm4yaml11StringValueeqERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !184
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZNK4llvm4yaml11StringValueeqERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %_ZNK4llvm4yaml11StringValueeqERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %4, align 8, !tbaa !183
  %i.n = load ptr, ptr %3, align 8, !tbaa !183
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.m, i64 %i.h)
  %i.o = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK4llvm4yaml11StringValueeqERKS1_.exit

_ZNK4llvm4yaml11StringValueeqERKS1_.exit:         ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.p = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.o, %bb.d ], [ true, %bb.c ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext %5, i1 noundef zeroext %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm4yaml11StringValueeqERKS1_.exit
  call void @_ZN4llvm4yaml7yamlizeINS0_11StringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.v = load ptr, ptr %0, align 8, !tbaa !180
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.u) #18
  br label %bb.h

bb.f:                                             ; preds = %_ZNK4llvm4yaml11StringValueeqERKS1_.exit
  %i.y = load i8, ptr %i.b, align 1, !tbaa !431, !range !201, !noundef !173
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !532
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !488  ; 18 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !487    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 240                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !489
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 240                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 38430716820228233
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 38430716820228232, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !191
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.t, ptr %i.s, align 8, !tbaa !191
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !191
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.z, ptr %i.y, align 8, !tbaa !191
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = add nsw i64 %1, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.prol ]
  %i.ad = icmp eq i64 %1, 1
  br i1 %i.ad, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 27 uses
  %.057.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i, i8 0, i64 224, i1 false)
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !191
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !191
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i8 0, i64 40, i1 false)
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !191
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 264
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.aq, i8 0, i64 224, i1 false)
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !191
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 312
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 328
  store ptr %i.av, ptr %i.au, align 8, !tbaa !191
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 344
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 384
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i8 0, i64 40, i1 false)
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 432
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 448
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !191
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 480 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1765

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.be, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !488
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i64 %i.n, %1
  br i1 %i.bf, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.bg = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 38430716820228232) ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 240
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #21 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.f ; 16 uses
  %xtraiter37 = and i64 %1, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bk, i8 0, i64 224, i1 false)
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !191
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !191
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i8 0, i64 40, i1 false)
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !191
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 192
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 208
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !191
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  %i.bx = add nsw i64 %1, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 240
  br label %.lr.ph.i.i.i25.prol.loopexit

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.bk, %_ZNKSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.by, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bx, %.lr.ph.i.i.i25.prol ]
  %i.bz = icmp eq i64 %1, 1
  br i1 %i.bz, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.da, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 27 uses
  %.057.i.i.i27 = phi i64 [ %i.cz, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.08.i.i.i26, i8 0, i64 224, i1 false)
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !191
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 88
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !191
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 104
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 144
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i8 0, i64 40, i1 false)
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !191
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 192
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 208
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !191
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 240
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 264
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.cm, i8 0, i64 224, i1 false)
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !191
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 312
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 328
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !191
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 344
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 384
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i8 0, i64 40, i1 false)
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !191
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 432
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 448
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !191
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %i.cz = add i64 %.057.i.i.i27, -2               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 480
  %.not.i.i.i28.1 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i28.1, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1765

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit30, %.lr.ph.i.i.i31
  %.012.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i31 ], [ %i.bj, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i31 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN4llvm4yaml25VirtualRegisterDefinitionES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 240 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 240
  %.not.i.i.i32 = icmp eq ptr %i.db, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31, !llvm.loop !1766

_ZNSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !489
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.df) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.bj, ptr %0, align 8, !tbaa !487
  %i.dg = getelementptr inbounds nuw [240 x i8], ptr %i.bk, i64 %1
  store ptr %i.dg, ptr %i.a, align 8, !tbaa !488
  %i.dh = getelementptr inbounds nuw [240 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.dh, ptr %i.h, align 8, !tbaa !489
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml25VirtualRegisterDefinitionEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml25VirtualRegisterDefinitionESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt19__relocate_object_aIN4llvm4yaml25VirtualRegisterDefinitionES2_SaIS2_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 24, i1 false), !tbaa.struct !728
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !191
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !183  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !183
  %i.k = load i64, ptr %i.e, align 8, !tbaa !187
  store i64 %i.k, ptr %i.c, align 8, !tbaa !187
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !184
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit.i:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.l, ptr %i.n, align 8, !tbaa !184
  store ptr %i.e, ptr %i.b, align 8, !tbaa !183
  store i64 0, ptr %i.m, align 8, !tbaa !184
  store i8 0, ptr %i.e, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !532
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !191
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !183  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

bb.c:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load i64, ptr %i.w, align 8, !tbaa !184  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i
  store ptr %i.t, ptr %i.q, align 8, !tbaa !183
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !187
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !187
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre6 = load i64, ptr %.phi.trans.insert5, align 8, !tbaa !184
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i, %bb.c
  %i.ab = phi i64 [ %.pre6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ %i.x, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !184
  store ptr %i.u, ptr %i.r, align 8, !tbaa !183
  store i64 0, ptr %i.ac, align 8, !tbaa !184
  store i8 0, ptr %i.u, align 8, !tbaa !187
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !532
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !551
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !551
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !466
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !466
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !191
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !183 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

bb.d:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.at = load i64, ptr %i.as, align 8, !tbaa !184 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !183
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !187
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !187
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !184
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i, %bb.d
  %i.ax = phi i64 [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i ], [ %i.at, %bb.d ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !184
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !183
  store i64 0, ptr %i.ay, align 8, !tbaa !184
  store i8 0, ptr %i.aq, align 8, !tbaa !187
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !532
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !191
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !183 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

bb.e:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !184 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZN4llvm4yaml25VirtualRegisterDefinitionC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !183
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !187
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !187
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !184
  br label %_ZN4llvm4yaml25VirtualRegisterDefinitionC2EOS1_.exit

_ZN4llvm4yaml25VirtualRegisterDefinitionC2EOS1_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.bn = phi i64 [ %i.bj, %bb.e ], [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !184
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !183
  store i64 0, ptr %i.bo, align 8, !tbaa !184
  store i8 0, ptr %i.bg, align 8, !tbaa !187
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 224
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EEaSERKS4_:bb.a
bb.h:                                             ; preds = %bb.f
  %i.br = icmp sgt i64 %i.ap, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i36, label %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i36:                     ; preds = %bb.h
  %i.bs = udiv exact i64 %i.ap, 96
  br label %.lr.ph.i.i.i.i.i37

.lr.ph.i.i.i.i.i37:                               ; preds = %.lr.ph.i.i.i.i.i37, %.lr.ph.preheader.i.i.i.i.i36
  %.012.i.i.i.i.i38 = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i37 ], [ %i.bs, %.lr.ph.preheader.i.i.i.i.i36 ] ; 2 uses
  %.0811.i.i.i.i.i39 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i37 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i36 ] ; 5 uses
  %.0910.i.i.i.i.i40 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i37 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i36 ] ; 5 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(96) %.0811.i.i.i.i.i39, ptr noundef nonnull align 8 dereferenceable(96) %.0910.i.i.i.i.i40) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !532
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 48
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.bw) #18
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 80
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !532
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 96
  %i.cb = add nsw i64 %.012.i.i.i.i.i38, -1
  %i.cc = icmp samesign ugt i64 %.012.i.i.i.i.i38, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit.loopexit, !llvm.loop !1776

_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i37
  %.pre41 = load ptr, ptr %1, align 8, !tbaa !484
  %.pre42 = load ptr, ptr %i.am, align 8, !tbaa !485 ; 2 uses
  %.pre43 = load ptr, ptr %0, align 8, !tbaa !484
  %.pre44 = load ptr, ptr %i.a, align 8, !tbaa !485
  %.pre45 = ptrtoint ptr %.pre42 to i64
  %.pre46 = ptrtoint ptr %.pre43 to i64
  %.pre48 = sub i64 %.pre45, %.pre46
  br label %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit: ; preds = %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit.loopexit, %bb.h
  %.pre-phi49 = phi i64 [ %.pre48, %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ap, %bb.h ]
  %i.cd = phi ptr [ %.pre44, %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.b, %bb.h ]
  %i.ce = phi ptr [ %.pre42, %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.an, %bb.h ]
  %i.cf = phi ptr [ %.pre41, %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.c, %bb.h ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pre-phi49
  %i.ch = tail call noundef ptr @_ZSt16__do_uninit_copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_(ptr noundef %i.cg, ptr noundef %i.cd, ptr noundef %i.ce) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvm4yaml21MachineFunctionLiveInESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvm4yaml21MachineFunctionLiveInESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyIN4llvm4yaml21MachineFunctionLiveInEEvPT_.exit.i.i31, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm4yaml21MachineFunctionLiveInESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %_ZSt4copyIPN4llvm4yaml21MachineFunctionLiveInES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ci = load ptr, ptr %0, align 8, !tbaa !484
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.f
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !485
  br label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvm4yaml21MachineFunctionLiveInESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml13MappingTraitsINS0_21MachineFunctionLiveInEE7mappingERNS0_2IOERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %3 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %4 = alloca %"struct.llvm::yaml::StringValue", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = load ptr, ptr %0, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.130, i64 3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18, !inline_history !31
  br i1 %i.f, label %bb.b, label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm4yaml7yamlizeINS0_11StringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.h = load ptr, ptr %0, align 8, !tbaa !180
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.g) #18, !inline_history !31
  br label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !191
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !184
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS0_11StringValueENS0_12EmptyContextEEEvNS_9StringRefERT_RKS6_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.131, i64 11, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %4, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.p = load ptr, ptr %4, align 8, !tbaa !183    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZN4llvm4yaml11StringValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit
  %i.r = load i64, ptr %i.m, align 8, !tbaa !187
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #19
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit

_ZN4llvm4yaml11StringValueD2Ev.exit:              ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485  ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !484    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 96                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !486
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 96                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 96076792050570582
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 96076792050570581, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false)
  store ptr %i.p, ptr %i.b, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.t, ptr %i.s, align 8, !tbaa !191
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = add nsw i64 %1, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.x = icmp eq i64 %1, 1
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i8 0, i64 64, i1 false)
  store ptr %i.y, ptr %.08.i.i.i, align 8, !tbaa !191
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !184
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !191
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false)
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !191
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store i64 0, ptr %i.ag, align 8, !tbaa !184
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !191
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1777

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.am, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !485
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ult i64 %i.n, %1
  br i1 %i.an, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ao = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 96076792050570581) ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 96
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 10 uses
  %xtraiter44 = and i64 %1, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE12_M_check_lenEmPKc.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, i8 0, i64 64, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !191
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !184
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !191
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  br label %.lr.ph.i.i.i25.prol.loopexit

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i25.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bq, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 15 uses
  %.057.i.i.i27 = phi i64 [ %i.bp, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i8 0, i64 64, i1 false)
  store ptr %i.bc, ptr %.08.i.i.i26, align 8, !tbaa !191
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !184
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i8 0, i64 64, i1 false)
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !191
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 104
  store i64 0, ptr %i.bk, align 8, !tbaa !184
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 144
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 160
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !191
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %i.bp = add i64 %.057.i.i.i27, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 192
  %.not.i.i.i28.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i28.1, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1777

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit30, %_ZSt19__relocate_object_aIN4llvm4yaml21MachineFunctionLiveInES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cw, %_ZSt19__relocate_object_aIN4llvm4yaml21MachineFunctionLiveInES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.cv, %_ZSt19__relocate_object_aIN4llvm4yaml21MachineFunctionLiveInES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.br, ptr %.012.i.i.i, align 8, !tbaa !191, !alias.scope !1782, !noalias !1783
  %i.bs = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1783, !noalias !1782 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i31
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !184, !alias.scope !1783, !noalias !1782 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false), !alias.scope !1784
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i31
  store ptr %i.bs, ptr %.012.i.i.i, align 8, !tbaa !183, !alias.scope !1782, !noalias !1783
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !187, !alias.scope !1783, !noalias !1782
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !187, !alias.scope !1782, !noalias !1783
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !184, !alias.scope !1783, !noalias !1782
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ca = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.bw, %bb.e ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !184, !alias.scope !1782, !noalias !1783
  store ptr %i.bt, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1783, !noalias !1782
  store i64 0, ptr %i.cb, align 8, !tbaa !184, !alias.scope !1783, !noalias !1782
  store i8 0, ptr %i.bt, align 8, !tbaa !187, !alias.scope !1783, !noalias !1782
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1784
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !191, !alias.scope !1782, !noalias !1783
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !183, !alias.scope !1783, !noalias !1782 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i

bb.f:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !184, !alias.scope !1783, !noalias !1782 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false), !alias.scope !1784
  br label %_ZSt19__relocate_object_aIN4llvm4yaml21MachineFunctionLiveInES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i.i
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !183, !alias.scope !1782, !noalias !1783
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !187, !alias.scope !1783, !noalias !1782
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !187, !alias.scope !1782, !noalias !1783
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !184, !alias.scope !1783, !noalias !1782
  br label %_ZSt19__relocate_object_aIN4llvm4yaml21MachineFunctionLiveInES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4llvm4yaml21MachineFunctionLiveInES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i, %bb.f
  %i.cq = phi i64 [ %i.cm, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !184, !alias.scope !1782, !noalias !1783
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !183, !alias.scope !1783, !noalias !1782
  store i64 0, ptr %i.cr, align 8, !tbaa !184, !alias.scope !1783, !noalias !1782
  store i8 0, ptr %i.cj, align 8, !tbaa !187, !alias.scope !1783, !noalias !1782
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1784
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %.not.i.i.i32 = icmp eq ptr %i.cv, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31, !llvm.loop !1781

_ZNSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml21MachineFunctionLiveInES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !486
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cz) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.ar, ptr %0, align 8, !tbaa !484
  %i.da = getelementptr inbounds nuw [96 x i8], ptr %i.as, i64 %1
  store ptr %i.da, ptr %i.a, align 8, !tbaa !485
  %i.db = getelementptr inbounds nuw [96 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.db, ptr %i.h, align 8, !tbaa !486
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21MachineFunctionLiveInEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml21MachineFunctionLiveInESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4llvm4yaml21MachineFunctionLiveInESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not7 = icmp eq ptr %0, %1
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4llvm4yaml21MachineFunctionLiveInEJRKS2_EEvPT_DpOT0_.exit
  %.09 = phi ptr [ %i.aj, %_ZSt10_ConstructIN4llvm4yaml21MachineFunctionLiveInEJRKS2_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 12 uses
  %.sroa.04.08 = phi ptr [ %i.ai, %_ZSt10_ConstructIN4llvm4yaml21MachineFunctionLiveInEJRKS2_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09, i64 16 ; 3 uses
  store ptr %i.c, ptr %.09, align 8, !tbaa !191
  %i.d = load ptr, ptr %.sroa.04.08, align 8, !tbaa !183 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !184  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.f, ptr %i.b, align 8, !tbaa !67
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %.09, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18 ; 2 uses
  store ptr %i.h, ptr %.09, align 8, !tbaa !183
  %i.i = load i64, ptr %i.b, align 8, !tbaa !67
  store i64 %i.i, ptr %i.c, align 8, !tbaa !187
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.b, %.lr.ph
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4llvm4yaml11StringValueC2ERKS1_.exit.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !187
  store i8 %i.k, ptr %i.j, align 1, !tbaa !187
  br label %_ZN4llvm4yaml11StringValueC2ERKS1_.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN4llvm4yaml11StringValueC2ERKS1_.exit.i.i

_ZN4llvm4yaml11StringValueC2ERKS1_.exit.i.i:      ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !184
  %i.n = load ptr, ptr %.09, align 8, !tbaa !183
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.p = getelementptr inbounds nuw i8, ptr %.09, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !532
  %i.r = getelementptr inbounds nuw i8, ptr %.09, i64 48 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.09, i64 64 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !191
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !183  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !184  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.w, ptr %i.a, align 8, !tbaa !67
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i.i3.i.i

bb.e:                                             ; preds = %_ZN4llvm4yaml11StringValueC2ERKS1_.exit.i.i
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !183
  %i.z = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.z, ptr %i.t, align 8, !tbaa !187
  br label %._crit_edge.i.i.i3.i.i

._crit_edge.i.i.i3.i.i:                           ; preds = %bb.e, %_ZN4llvm4yaml11StringValueC2ERKS1_.exit.i.i
  %i.aa = phi ptr [ %i.y, %bb.e ], [ %i.t, %_ZN4llvm4yaml11StringValueC2ERKS1_.exit.i.i ] ; 2 uses
  switch i64 %i.w, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt10_ConstructIN4llvm4yaml21MachineFunctionLiveInEJRKS2_EEvPT_DpOT0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i3.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !187
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !187
  br label %_ZSt10_ConstructIN4llvm4yaml21MachineFunctionLiveInEJRKS2_EEvPT_DpOT0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i3.i.i
end_hunk_1
begin_hunk_2_@_ZN4llvm4yaml7yamlizeISt6vectorINS0_15FlowStringValueESaIS3_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_:bb.a
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.w = load ptr, ptr %0, align 8, !tbaa !180
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = trunc nuw i64 %indvars.iv to i32
  %i.aa = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !465
  %i.ac = load ptr, ptr %1, align 8, !tbaa !464   ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 48                ; 2 uses
  %.not.i = icmp ugt i64 %i.ag, %indvars.iv
  br i1 %.not.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorINS0_15FlowStringValueESaIS3_EEE7elementERNS0_2IOERS5_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nuw nsw i64 %indvars.iv, 1
  %i.ai = sub nuw nsw i64 %i.ah, %i.ag
  call void @_ZNSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ai)
  %.pre = load ptr, ptr %1, align 8, !tbaa !464
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorINS0_15FlowStringValueESaIS3_EEE7elementERNS0_2IOERS5_m.exit

_ZN4llvm4yaml15IsResizableBaseISt6vectorINS0_15FlowStringValueESaIS3_EEE7elementERNS0_2IOERS5_m.exit: ; preds = %bb.e, %bb.f
  %i.aj = phi ptr [ %i.ac, %bb.e ], [ %.pre, %bb.f ]
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %indvars.iv
  call void @_ZN4llvm4yaml7yamlizeINS0_15FlowStringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.am = load ptr, ptr %0, align 8, !tbaa !180
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.al) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorINS0_15FlowStringValueESaIS3_EEE7elementERNS0_2IOERS5_m.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1787
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm4yaml7yamlizeINS0_15FlowStringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %5 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 11 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !554
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !555
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 128, ptr %i.g, align 8, !tbaa !556
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %i.h, align 8, !tbaa !718
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.i, align 8, !tbaa !719
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.j, align 4, !tbaa !720
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !180
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %4, ptr %i.l, align 8, !tbaa !722
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.m = call noundef ptr @_ZNK4llvm4yaml2IO10getContextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18 ; 0 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !183
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !184
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.n, i64 noundef %i.p) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !725, !nonnull !173, !align !174 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !554  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !555  ; 2 uses
  store ptr %i.s, ptr %6, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = call noundef i32 @_ZN4llvm4yaml11needsQuotesENS_9StringRefEb(ptr %i.s, i64 %i.u, i1 noundef zeroext true)
  %i.x = load ptr, ptr %0, align 8, !tbaa !180
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.aa = load ptr, ptr %4, align 8, !tbaa !554   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.e
  br i1 %i.ab, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.aa) #18
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 1) #18
  %.sroa.01.0.copyload = load ptr, ptr %7, align 8, !tbaa !60
  %.sroa.22.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !67
  %i.af = call noundef ptr @_ZNK4llvm4yaml2IO10getContextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %i.ag = call { ptr, i64 } @_ZN4llvm4yaml12ScalarTraitsINS0_11StringValueEvE5inputENS_9StringRefEPvRS2_(ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr noundef %i.af, ptr noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 1      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = extractvalue { ptr, i64 } %i.ag, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.ak, align 8, !tbaa !197
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !198
  store ptr %i.aj, ptr %8, align 8, !tbaa !187
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ah, ptr %i.am, align 8, !tbaa !187
  %i.an = load ptr, ptr %0, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 248
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !465  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !464    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !466
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.p, ptr %.08.i.i.i.prol, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1788

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %.08.i.i.i, align 8, !tbaa !191
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !191
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store i64 0, ptr %i.aa, align 8, !tbaa !184
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !191
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store i64 0, ptr %i.ae, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  store i64 0, ptr %i.ai, align 8, !tbaa !184
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1789

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !465
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 192153584101141162) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 48
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter41 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25.prol
  %.08.i.i.i26.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i25.prol ], [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i27.prol = phi i64 [ %i.av, %.lr.ph.i.i.i25.prol ], [ %1, %_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i25.prol ], [ 0, %_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %.08.i.i.i26.prol, align 8, !tbaa !191
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add i64 %.057.i.i.i27.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 48 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !1790

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i25.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bo, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 17 uses
  %.057.i.i.i27 = phi i64 [ %i.bn, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr %i.ay, ptr %.08.i.i.i26, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !184
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !191
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 56
  store i64 0, ptr %i.bd, align 8, !tbaa !184
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 104
  store i64 0, ptr %i.bh, align 8, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !191
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 152
  store i64 0, ptr %i.bl, align 8, !tbaa !184
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = add i64 %.057.i.i.i27, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 192
  %.not.i.i.i28.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i28.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1789

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit30, %_ZSt19__relocate_object_aIN4llvm4yaml15FlowStringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ce, %_ZSt19__relocate_object_aIN4llvm4yaml15FlowStringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.cd, %_ZSt19__relocate_object_aIN4llvm4yaml15FlowStringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.bp, ptr %.012.i.i.i, align 8, !tbaa !191, !alias.scope !1795, !noalias !1796
  %i.bq = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1796, !noalias !1795 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i31
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !184, !alias.scope !1796, !noalias !1795 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false), !alias.scope !1797
  br label %_ZSt19__relocate_object_aIN4llvm4yaml15FlowStringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i31
  store ptr %i.bq, ptr %.012.i.i.i, align 8, !tbaa !183, !alias.scope !1795, !noalias !1796
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !187, !alias.scope !1796, !noalias !1795
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !187, !alias.scope !1795, !noalias !1796
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !184, !alias.scope !1796, !noalias !1795
  br label %_ZSt19__relocate_object_aIN4llvm4yaml15FlowStringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4llvm4yaml15FlowStringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.by = phi i64 [ %i.bu, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !184, !alias.scope !1795, !noalias !1796
  store ptr %i.br, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1796, !noalias !1795
  store i64 0, ptr %i.bz, align 8, !tbaa !184, !alias.scope !1796, !noalias !1795
  store i8 0, ptr %i.br, align 8, !tbaa !187, !alias.scope !1796, !noalias !1795
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1797
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i32 = icmp eq ptr %i.cd, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31, !llvm.loop !1794

_ZNSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml15FlowStringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4llvm4yaml15FlowStringValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !466
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ch) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml15FlowStringValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml15FlowStringValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm4yaml15FlowStringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.f
  store ptr %i.aq, ptr %0, align 8, !tbaa !464
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %1
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !465
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.cj, ptr %i.h, align 8, !tbaa !466
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml15FlowStringValueEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml15FlowStringValueESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS0_16MachineFrameInfoENS0_12EmptyContextEEEvNS_9StringRefERT_RKS6_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(200) %4, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = load ptr, ptr %0, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm4yaml16MachineFrameInfoeqERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(200) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  %i.i = load ptr, ptr %0, align 8, !tbaa !180
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext %5, i1 noundef zeroext %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !180
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !1798
  call void @_ZN4llvm4yaml13MappingTraitsINS0_16MachineFrameInfoEE7mappingERNS0_2IOERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(200) %3)
  %i.p = load ptr, ptr %0, align 8, !tbaa !180
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !1798
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.t = load ptr, ptr %0, align 8, !tbaa !180
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.s) #18
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.b, align 1, !tbaa !431, !range !201, !noundef !173
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.z) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !532
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.ad) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !532
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i64 20, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.ak = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.an = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4yaml16MachineFrameInfoeqERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1799, !range !201, !noundef !173
  %i.b = load i8, ptr %1, align 8, !tbaa !1799, !range !201, !noundef !173
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !1800, !range !201, !noundef !173
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1800, !range !201, !noundef !173
  %i.h = icmp eq i8 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !1801, !range !201, !noundef !173
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !1801, !range !201, !noundef !173
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !1802, !range !201, !noundef !173
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1802, !range !201, !noundef !173
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !573
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !573
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !578
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !578
  %i.ab = icmp eq i32 %i.y, %i.aa
end_hunk_2
begin_hunk_3_@_ZN4llvm4yaml13MappingTraitsINS0_21SaveRestorePointEntryEE7mappingERNS0_2IOERS2_:bb.a
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.g) #18, !inline_history !31
  br label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultISt6vectorINS0_11StringValueESaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_RKS9_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.77, i64 9, ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.l = load ptr, ptr %4, align 8, !tbaa !470    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !471  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit, %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i ], [ %i.l, %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !187
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !470
  br label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i, %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i ], [ %i.l, %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !472
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #19
  br label %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !696  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !695    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 72                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE15_M_erase_at_endEPS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !470  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !471  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !187
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #19
  br label %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !470
  br label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !472
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #19
  br label %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i.i
  %i.ab = load ptr, ptr %.05.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !187
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #19
  br label %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !696
  br label %_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !696  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !695    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 72                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !697
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 72                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 128102389400760775, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.p, ptr %.08.i.i.i.prol, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 72 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1814

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %.08.i.i.i, align 8, !tbaa !191
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !191
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store i64 0, ptr %i.aa, align 8, !tbaa !184
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !191
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  store i64 0, ptr %i.ae, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i8 0, i64 40, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 216
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 232 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  store i64 0, ptr %i.ai, align 8, !tbaa !184
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i8 0, i64 40, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1815

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !696
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 128102389400760775) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 72
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter41 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25.prol
  %.08.i.i.i26.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i25.prol ], [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i27.prol = phi i64 [ %i.av, %.lr.ph.i.i.i25.prol ], [ %1, %_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i25.prol ], [ 0, %_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %.08.i.i.i26.prol, align 8, !tbaa !191
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, i8 0, i64 40, i1 false)
  %i.av = add i64 %.057.i.i.i27.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 72 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !1816

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i25.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bo, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 17 uses
  %.057.i.i.i27 = phi i64 [ %i.bn, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr %i.ay, ptr %.08.i.i.i26, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !184
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i8 0, i64 40, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !191
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  store i64 0, ptr %i.bd, align 8, !tbaa !184
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 40, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 152
  store i64 0, ptr %i.bh, align 8, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i8 0, i64 40, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 216
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 232 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !191
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 224
  store i64 0, ptr %i.bl, align 8, !tbaa !184
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i8 0, i64 40, i1 false)
  %i.bn = add i64 %.057.i.i.i27, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 288
  %.not.i.i.i28.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i28.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1815

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit30, %_ZSt19__relocate_object_aIN4llvm4yaml21SaveRestorePointEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ck, %_ZSt19__relocate_object_aIN4llvm4yaml21SaveRestorePointEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.cj, %_ZSt19__relocate_object_aIN4llvm4yaml21SaveRestorePointEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.bp, ptr %.012.i.i.i, align 8, !tbaa !191, !alias.scope !1821, !noalias !1822
  %i.bq = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1822, !noalias !1821 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i31
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !184, !alias.scope !1822, !noalias !1821 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false), !alias.scope !1823
  br label %_ZSt19__relocate_object_aIN4llvm4yaml21SaveRestorePointEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i31
  store ptr %i.bq, ptr %.012.i.i.i, align 8, !tbaa !183, !alias.scope !1821, !noalias !1822
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !187, !alias.scope !1822, !noalias !1821
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !187, !alias.scope !1821, !noalias !1822
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !184, !alias.scope !1822, !noalias !1821
  br label %_ZSt19__relocate_object_aIN4llvm4yaml21SaveRestorePointEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4llvm4yaml21SaveRestorePointEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.by = phi i64 [ %i.bu, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !184, !alias.scope !1821, !noalias !1822
  store ptr %i.br, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1822, !noalias !1821
  store i64 0, ptr %i.bz, align 8, !tbaa !184, !alias.scope !1822, !noalias !1821
  store i8 0, ptr %i.br, align 8, !tbaa !187, !alias.scope !1822, !noalias !1821
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1823
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.cf = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !433, !alias.scope !1822, !noalias !1821
  store <2 x ptr> %i.cf, ptr %i.cd, align 8, !tbaa !433, !alias.scope !1821, !noalias !1822
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !472, !alias.scope !1822, !noalias !1821
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !472, !alias.scope !1821, !noalias !1822
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false), !alias.scope !1822, !noalias !1821
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %.not.i.i.i32 = icmp eq ptr %i.cj, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31, !llvm.loop !1820

_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml21SaveRestorePointEntryES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !697
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cn) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.f
  store ptr %i.aq, ptr %0, align 8, !tbaa !695
  %i.co = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %1
  store ptr %i.co, ptr %i.a, align 8, !tbaa !696
  %i.cp = getelementptr inbounds nuw [72 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.cp, ptr %i.h, align 8, !tbaa !697
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml21SaveRestorePointEntryEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !696  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !695    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !697
  %i.j = load ptr, ptr %0, align 8, !tbaa !695    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = sdiv exact i64 %i.g, 72
  %i.p = tail call noundef ptr @_ZNSt6vectorIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, ptr %i.d, ptr %i.c) ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !695    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !696  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i ], [ %i.q, %bb.c ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !470  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !471  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !187
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm4yaml11StringValueEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !470
  br label %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i

_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.ad = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exitthread-pre-split.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !472
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #19
  br label %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN4llvm4yaml11StringValueEEvT_S4_.exit.i.i.i.i.i
  %i.aj = load ptr, ptr %.05.i.i, align 8, !tbaa !183 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !187
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #19
  br label %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.s
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !24

_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4llvm4yaml21SaveRestorePointEntryEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !695
  br label %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exit

_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exitthread-pre-split, %bb.c
  %i.ap = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exitthread-pre-split ], [ %i.q, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exit
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !697
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml21SaveRestorePointEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm4yaml21SaveRestorePointEntryEEvT_S4_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !695
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store ptr %i.au, ptr %i.h, align 8, !tbaa !697
end_hunk_3
begin_hunk_4_@_ZN4llvm4yaml23ScalarEnumerationTraitsINS_13TargetStackID5ValueEvE11enumerationERNS0_2IOERS3_:bb.a
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.174, i64 15, i1 noundef zeroext %i.ac) #18, !inline_history !1843
  br i1 %i.ag, label %bb.j, label %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit13

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %1, align 4, !tbaa !731
  br label %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit13

_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit13: ; preds = %bb.i, %bb.j
  %i.ah = load ptr, ptr %0, align 8, !tbaa !180
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !1843
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit13
  %i.al = load i32, ptr %1, align 4, !tbaa !731
  %i.am = icmp eq i32 %i.al, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit13
  %i.an = phi i1 [ false, %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit13 ], [ %i.am, %bb.k ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !180
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.175, i64 25, i1 noundef zeroext %i.an) #18, !inline_history !1843
  br i1 %i.ar, label %bb.m, label %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit14

bb.m:                                             ; preds = %bb.l
  store i32 4, ptr %1, align 4, !tbaa !731
  br label %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit14

_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit14: ; preds = %bb.l, %bb.m
  %i.as = load ptr, ptr %0, align 8, !tbaa !180
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !1843
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit14
  %i.aw = load i32, ptr %1, align 4, !tbaa !731
  %i.ax = icmp eq i32 %i.aw, 3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit14
  %i.ay = phi i1 [ false, %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit14 ], [ %i.ax, %bb.n ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !180
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.176, i64 10, i1 noundef zeroext %i.ay) #18, !inline_history !1843
  br i1 %i.bc, label %bb.p, label %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit15

bb.p:                                             ; preds = %bb.o
  store i32 3, ptr %1, align 4, !tbaa !731
  br label %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit15

_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit15: ; preds = %bb.o, %bb.p
  %i.bd = load ptr, ptr %0, align 8, !tbaa !180
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !1843
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit15
  %i.bh = load i32, ptr %1, align 4, !tbaa !731
  %i.bi = icmp eq i32 %i.bh, 255
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit15
  %i.bj = phi i1 [ false, %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit15 ], [ %i.bi, %bb.q ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !180
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 168
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.177, i64 7, i1 noundef zeroext %i.bj) #18, !inline_history !1843
  br i1 %i.bn, label %bb.s, label %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit16

bb.s:                                             ; preds = %bb.r
  store i32 255, ptr %1, align 4, !tbaa !731
  br label %_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit16

_ZN4llvm4yaml2IO8enumCaseINS_13TargetStackID5ValueEEEvRT_NS_9StringRefES5_.exit16: ; preds = %bb.r, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !693  ; 18 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !692    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 264                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !694
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 264                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 34937015291116576
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 34937015291116575, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, i8 0, i64 248, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !191
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i8 1, ptr %i.s, align 8, !tbaa !603
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.u, ptr %i.t, align 8, !tbaa !191
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr %i.x, ptr %i.w, align 8, !tbaa !191
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !191
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = add nsw i64 %1, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.prol ]
  %i.ae = icmp eq i64 %1, 1
  br i1 %i.ae, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 29 uses
  %.057.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.08.i.i.i, i8 0, i64 248, i1 false)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !191
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store i8 1, ptr %i.ai, align 8, !tbaa !603
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !191
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184
  store ptr %i.an, ptr %i.am, align 8, !tbaa !191
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 216
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 232
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !191
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 264
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 328
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.as, i8 0, i64 248, i1 false)
  store ptr %i.au, ptr %i.at, align 8, !tbaa !191
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 376
  store i8 1, ptr %i.aw, align 8, !tbaa !603
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 384
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 400
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 432
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 448
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !191
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 480
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 496
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !191
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bg = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 528 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1844

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bh, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !693
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bi = icmp ult i64 %i.n, %1
  br i1 %i.bi, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.bj = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 34937015291116575) ; 2 uses
  %i.bl = mul nuw nsw i64 %i.bk, 264
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #21 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.f ; 17 uses
  %xtraiter33 = and i64 %1, 1
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.bn, i8 0, i64 248, i1 false)
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !191
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store i8 1, ptr %i.br, align 8, !tbaa !603
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !191
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 184
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !191
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 232
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !191
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.cb = add nsw i64 %1, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 264
  br label %.lr.ph.i.i.i25.prol.loopexit

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.bn, %_ZNKSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.cc, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.cb, %.lr.ph.i.i.i25.prol ]
  %i.cd = icmp eq i64 %1, 1
  br i1 %i.cd, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.dg, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 29 uses
  %.057.i.i.i27 = phi i64 [ %i.df, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.08.i.i.i26, i8 0, i64 248, i1 false)
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !191
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 112
  store i8 1, ptr %i.ch, align 8, !tbaa !603
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 120
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 136
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !191
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 168
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 184
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !191
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 216
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 232
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !191
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 264
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 328
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.cr, i8 0, i64 248, i1 false)
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !191
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 376
  store i8 1, ptr %i.cv, align 8, !tbaa !603
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 384
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 400
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !191
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 432
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 448
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !191
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 480
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 496
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !191
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  %i.df = add i64 %.057.i.i.i27, -2               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 528
  %.not.i.i.i28.1 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i28.1, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1844

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %i.dh = tail call noundef ptr @_ZNSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.bm, ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 0 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !694
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dk) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30, %bb.e
  store ptr %i.bm, ptr %0, align 8, !tbaa !692
  %i.dl = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %1
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !693
  %i.dm = getelementptr inbounds nuw [264 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.dm, ptr %i.h, align 8, !tbaa !694
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml23FixedMachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN4llvm4yaml23FixedMachineStackObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN4llvm4yaml23FixedMachineStackObjectES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN4llvm4yaml23FixedMachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.bq, %_ZSt19__relocate_object_aIN4llvm4yaml23FixedMachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 19 uses
  %.0911.i.i = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN4llvm4yaml23FixedMachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 27 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.012.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.0911.i.i, i64 58, i1 false), !alias.scope !1851
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !191, !alias.scope !1849, !noalias !1850
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !183, !alias.scope !1850, !noalias !1849 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849 ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false), !alias.scope !1851
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.d, ptr %i.a, align 8, !tbaa !183, !alias.scope !1849, !noalias !1850
  %i.k = load i64, ptr %i.e, align 8, !tbaa !187, !alias.scope !1850, !noalias !1849
  store i64 %i.k, ptr %i.c, align 8, !tbaa !187, !alias.scope !1849, !noalias !1850
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i:   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72
  store i64 %i.l, ptr %i.n, align 8, !tbaa !184, !alias.scope !1849, !noalias !1850
  store ptr %i.e, ptr %i.b, align 8, !tbaa !183, !alias.scope !1850, !noalias !1849
  store i64 0, ptr %i.m, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849
  store i8 0, ptr %i.e, align 8, !tbaa !187, !alias.scope !1850, !noalias !1849
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1851
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112
  %i.s = load i8, ptr %i.r, align 8, !tbaa !603, !range !201, !alias.scope !1850, !noalias !1849, !noundef !173
  store i8 %i.s, ptr %i.q, align 8, !tbaa !603, !alias.scope !1849, !noalias !1850
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 120 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 136 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !191, !alias.scope !1849, !noalias !1850
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !183, !alias.scope !1850, !noalias !1849 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 136 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i

bb.c:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false), !alias.scope !1851
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !183, !alias.scope !1849, !noalias !1850
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !187, !alias.scope !1850, !noalias !1849
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !187, !alias.scope !1849, !noalias !1850
  %.phi.trans.insert5.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128
  %.pre6.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i, %bb.c
  %i.ae = phi i64 [ %.pre6.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i ], [ %i.aa, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !184, !alias.scope !1849, !noalias !1850
  store ptr %i.x, ptr %i.u, align 8, !tbaa !183, !alias.scope !1850, !noalias !1849
  store i64 0, ptr %i.af, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849
  store i8 0, ptr %i.x, align 8, !tbaa !187, !alias.scope !1850, !noalias !1849
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1851
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 168 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 168 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 184 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !191, !alias.scope !1849, !noalias !1850
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !183, !alias.scope !1850, !noalias !1849 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 184 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i

bb.d:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !1851
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !183, !alias.scope !1849, !noalias !1850
  %i.at = load i64, ptr %i.an, align 8, !tbaa !187, !alias.scope !1850, !noalias !1849
  store i64 %i.at, ptr %i.al, align 8, !tbaa !187, !alias.scope !1849, !noalias !1850
  %.phi.trans.insert7.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  %.pre8.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i.i.i.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i, %bb.d
  %i.au = phi i64 [ %.pre8.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i ], [ %i.aq, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 176
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !184, !alias.scope !1849, !noalias !1850
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !183, !alias.scope !1850, !noalias !1849
  store i64 0, ptr %i.av, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849
  store i8 0, ptr %i.an, align 8, !tbaa !187, !alias.scope !1850, !noalias !1849
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 200
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1851
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 216 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 216 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 232 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !191, !alias.scope !1849, !noalias !1850
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !183, !alias.scope !1850, !noalias !1849 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 232 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i

bb.e:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 224
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !1851
  br label %_ZSt19__relocate_object_aIN4llvm4yaml23FixedMachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit10.i.i.i.i
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !183, !alias.scope !1849, !noalias !1850
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !187, !alias.scope !1850, !noalias !1849
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !187, !alias.scope !1849, !noalias !1850
  %.phi.trans.insert9.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 224
  %.pre10.i.i.i = load i64, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849
  br label %_ZSt19__relocate_object_aIN4llvm4yaml23FixedMachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN4llvm4yaml23FixedMachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i, %bb.e
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 224
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 224
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !184, !alias.scope !1849, !noalias !1850
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !183, !alias.scope !1850, !noalias !1849
  store i64 0, ptr %i.bl, align 8, !tbaa !184, !alias.scope !1850, !noalias !1849
  store i8 0, ptr %i.bd, align 8, !tbaa !187, !alias.scope !1850, !noalias !1849
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 248
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1851
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 264 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 264 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN4llvm4yaml23FixedMachineStackObjectES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1848

_ZSt12__relocate_aIPN4llvm4yaml23FixedMachineStackObjectES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml23FixedMachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.bq, %_ZSt19__relocate_object_aIN4llvm4yaml23FixedMachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
end_hunk_4
begin_hunk_5_@_ZN4llvm4yaml2IO21processKeyWithDefaultINS0_18MachineStackObject10ObjectTypeENS0_12EmptyContextEEEvNS_9StringRefERT_RKS7_bRT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm4yaml2IO21processKeyWithDefaultIlNS0_12EmptyContextEEEvNS_9StringRefERSt8optionalIT_ERKS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 1, ptr %i.b, align 1, !tbaa !431
  %i.c = load ptr, ptr %0, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !651, !range !201, !noundef !173
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !651, !range !201
  %i.p = trunc nuw i8 %.pre to i1                 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %3, align 8
  store i8 1, ptr %.phi.trans.insert, align 8
  br label %.thread

bb.f:                                             ; preds = %bb.c
  br i1 %i.p, label %.thread, label %.thread28

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext %5, i1 noundef zeroext %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br i1 %i.t, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.thread
  %i.u = load ptr, ptr %0, align 8, !tbaa !180
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.x, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call noundef ptr @_ZNK4llvm4yaml5Input14getCurrentNodeEv(ptr noundef nonnull align 8 dereferenceable(640) %0) #18 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !204
  %i.ab = icmp ne i32 %i.aa, 1
  %.not25 = icmp eq ptr %i.y, null
  %.not = or i1 %.not25, %i.ab
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !67 ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.2.0.copyload.i, ptr %i.ad, align 8
  %i.ae = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef signext 32, i64 noundef -1) #18
  %i.af = add i64 %i.ae, 1
  %i.ag = call i64 @llvm.usub.sat.i64(i64 %.sroa.2.0.copyload.i, i64 %i.af)
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !726 ; 2 uses
  %i.ai = sub i64 %i.ah, %i.ag
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ai)
  %.not.i = icmp eq i64 %.sroa.speculated.i.i.i, 6
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread23

_ZN4llvmeqENS_9StringRefES0_.exit.thread23:       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.i
  %i.aj = load ptr, ptr %7, align 8, !tbaa !727   ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = xor i32 %i.ak, 1852796476
  %i.am = getelementptr i8, ptr %i.aj, i64 4
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = zext i16 %i.an to i32
  %i.ap = xor i32 %i.ao, 15973
  %i.aq = or i32 %i.al, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.at, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  br label %bb.k

.critedge:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread23, %bb.g, %bb.h, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @_ZN4llvm4yaml7yamlizeIlEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS3_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.av = load ptr, ptr %0, align 8, !tbaa !180
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.au) #18
  br label %bb.m

bb.l:                                             ; preds = %.thread
  %.pre27 = load i8, ptr %i.b, align 1, !tbaa !431, !range !201
  %i.ay = trunc nuw i8 %.pre27 to i1
  br i1 %i.ay, label %.thread28, label %bb.m

.thread28:                                        ; preds = %bb.f, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread28, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml18MachineStackObjectESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !482  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !481    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 320                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !483
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 320                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 28823037615171175
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 28823037615171174, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 19 uses
  %.057.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.08.i.i.i, i8 0, i64 304, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !191
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.u, ptr %i.t, align 8, !tbaa !191
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  store i8 1, ptr %i.w, align 8, !tbaa !650
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  store ptr %i.y, ptr %i.x, align 8, !tbaa !191
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !191
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 272
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !191
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = add i64 %.057.i.i.i, -1                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 320 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml18MachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1862

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml18MachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !482
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp ult i64 %i.n, %1
  br i1 %i.ai, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml18MachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml18MachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.aj = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 28823037615171174) ; 2 uses
  %i.al = mul nuw nsw i64 %i.ak, 320
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %_ZNKSt6vectorIN4llvm4yaml18MachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bg, %.lr.ph.i.i.i25 ], [ %i.an, %_ZNKSt6vectorIN4llvm4yaml18MachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit ] ; 19 uses
  %.057.i.i.i27 = phi i64 [ %i.bf, %.lr.ph.i.i.i25 ], [ %1, %_ZNKSt6vectorIN4llvm4yaml18MachineStackObjectESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.08.i.i.i26, i8 0, i64 304, i1 false)
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !191
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !191
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 152
  store i8 1, ptr %i.av, align 8, !tbaa !650
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 176
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 192
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !191
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 240
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !191
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 272
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 288
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !191
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = add i64 %.057.i.i.i27, -1               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 320
  %.not.i.i.i28 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i28, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml18MachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1862

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml18MachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25
  %i.bh = tail call noundef ptr @_ZSt14__relocate_a_1IPN4llvm4yaml18MachineStackObjectES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.am, ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 0 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4llvm4yaml18MachineStackObjectESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml18MachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !483
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml18MachineStackObjectESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml18MachineStackObjectESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml18MachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit30, %bb.e
  store ptr %i.am, ptr %0, align 8, !tbaa !481
  %i.bl = getelementptr inbounds nuw [320 x i8], ptr %i.an, i64 %1
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !482
  %i.bm = getelementptr inbounds nuw [320 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bm, ptr %i.h, align 8, !tbaa !483
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml18MachineStackObjectEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml18MachineStackObjectESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt14__relocate_a_1IPN4llvm4yaml18MachineStackObjectES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
bb.a:
  %.not10 = icmp eq ptr %0, %1
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt19__relocate_object_aIN4llvm4yaml18MachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit
  %.012 = phi ptr [ %i.af, %_ZSt19__relocate_object_aIN4llvm4yaml18MachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit ], [ %2, %bb.a ] ; 2 uses
  %.0911 = phi ptr [ %i.ae, %_ZSt19__relocate_object_aIN4llvm4yaml18MachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit ], [ %0, %bb.a ] ; 12 uses
  tail call void @_ZN4llvm4yaml18MachineStackObjectC2EOS1_(ptr noundef nonnull align 8 dereferenceable(320) %.012, ptr noundef nonnull align 8 dereferenceable(320) %.0911) #18
  %i.a = getelementptr inbounds nuw i8, ptr %.0911, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183, !alias.scope !1867, !noalias !1868 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0911, i64 288 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm4yaml11StringValueD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.e = load i64, ptr %i.c, align 8, !tbaa !187, !alias.scope !1867, !noalias !1868
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit.i.i

_ZN4llvm4yaml11StringValueD2Ev.exit.i.i:          ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0911, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183, !alias.scope !1867, !noalias !1868 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0911, i64 240 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvm4yaml11StringValueD2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !187, !alias.scope !1867, !noalias !1868
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit3.i.i

_ZN4llvm4yaml11StringValueD2Ev.exit3.i.i:         ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0911, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !183, !alias.scope !1867, !noalias !1868 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0911, i64 192 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm4yaml11StringValueD2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i: ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit3.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !187, !alias.scope !1867, !noalias !1868
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #19
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit6.i.i

_ZN4llvm4yaml11StringValueD2Ev.exit6.i.i:         ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0911, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !183, !alias.scope !1867, !noalias !1868 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911, i64 120 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm4yaml11StringValueD2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i: ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit6.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !187, !alias.scope !1867, !noalias !1868
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #19
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit9.i.i

_ZN4llvm4yaml11StringValueD2Ev.exit9.i.i:         ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit6.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183, !alias.scope !1867, !noalias !1868 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911, i64 40 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt19__relocate_object_aIN4llvm4yaml18MachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i.i: ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit9.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !187, !alias.scope !1867, !noalias !1868
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZSt19__relocate_object_aIN4llvm4yaml18MachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit

_ZSt19__relocate_object_aIN4llvm4yaml18MachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit: ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit9.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911, i64 320 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012, i64 320 ; 2 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1866

._crit_edge:                                      ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml18MachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.af, %_ZSt19__relocate_object_aIN4llvm4yaml18MachineStackObjectES2_SaIS2_EEvPT_PT0_RT1_.exit ]
  ret ptr %.0.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml18MachineStackObjectC2EOS1_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !728
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !191
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !183  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184  ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !183
  %i.k = load i64, ptr %i.e, align 8, !tbaa !187
  store i64 %i.k, ptr %i.c, align 8, !tbaa !187
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit

_ZN4llvm4yaml11StringValueC2EOS1_.exit:           ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !184
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !184
  store ptr %i.e, ptr %i.b, align 8, !tbaa !183
  store i64 0, ptr %i.l, align 8, !tbaa !184
  store i8 0, ptr %i.e, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !532
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !191
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !183  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

bb.c:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load i64, ptr %i.y, align 8, !tbaa !184  ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !183
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !187
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !187
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit10

_ZN4llvm4yaml11StringValueC2EOS1_.exit10:         ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !184
  store ptr %i.w, ptr %i.t, align 8, !tbaa !183
  store i64 0, ptr %i.ad, align 8, !tbaa !184
  store i8 0, ptr %i.w, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !532
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !191
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !183 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
end_hunk_5
begin_hunk_6_@_ZN4llvm4yaml13MappingTraitsINS0_16EntryValueObjectEE7mappingERNS0_2IOERS2_:bb.a

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm4yaml7yamlizeINS0_11StringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.n = load ptr, ptr %0, align 8, !tbaa !180
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.m) #18, !inline_history !31
  br label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.q = load ptr, ptr %0, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.168, i64 19, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18, !inline_history !31
  br i1 %i.t, label %bb.c, label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit8

bb.c:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN4llvm4yaml7yamlizeINS0_11StringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.w = load ptr, ptr %0, align 8, !tbaa !180
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.v) #18, !inline_history !31
  br label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit8

_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit8: ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.z = load ptr, ptr %0, align 8, !tbaa !180
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.169, i64 21, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #18, !inline_history !31
  br i1 %i.ac, label %bb.d, label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit9

bb.d:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_ZN4llvm4yaml7yamlizeINS0_11StringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.af = load ptr, ptr %0, align 8, !tbaa !180
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ae) #18, !inline_history !31
  br label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit9

_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit9: ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit8, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ai = load ptr, ptr %0, align 8, !tbaa !180
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.170, i64 19, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18, !inline_history !31
  br i1 %i.al, label %bb.e, label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit10

bb.e:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit9
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_ZN4llvm4yaml7yamlizeINS0_11StringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.ao = load ptr, ptr %0, align 8, !tbaa !180
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.an) #18, !inline_history !31
  br label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit10

_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit10: ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit9, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !690  ; 17 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !689    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 192                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !691
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 192                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 48038396025285291
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 48038396025285290, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.p, i8 0, i64 160, i1 false)
  store ptr %i.p, ptr %i.b, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.t, ptr %i.s, align 8, !tbaa !191
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.w, ptr %i.v, align 8, !tbaa !191
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.z, ptr %i.y, align 8, !tbaa !191
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = add nsw i64 %1, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.prol ]
  %i.ad = icmp eq i64 %1, 1
  br i1 %i.ad, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 27 uses
  %.057.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ae, i8 0, i64 160, i1 false)
  store ptr %i.ae, ptr %.08.i.i.i, align 8, !tbaa !191
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !191
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !191
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ar, i8 0, i64 160, i1 false)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !191
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 200
  store i64 0, ptr %i.as, align 8, !tbaa !184
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 256
  store ptr %i.av, ptr %i.au, align 8, !tbaa !191
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 304
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 336
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 352
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !191
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1878

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.be, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !690
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i64 %i.n, %1
  br i1 %i.bf, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.bg = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 48038396025285290) ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 192
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #21 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.f ; 16 uses
  %xtraiter33 = and i64 %1, 1
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bl, i8 0, i64 160, i1 false)
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !191
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !184
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !191
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !191
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 160
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !191
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  %i.bx = add nsw i64 %1, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 192
  br label %.lr.ph.i.i.i25.prol.loopexit

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.bk, %_ZNKSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.by, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bx, %.lr.ph.i.i.i25.prol ]
  %i.bz = icmp eq i64 %1, 1
  br i1 %i.bz, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.da, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 27 uses
  %.057.i.i.i27 = phi i64 [ %i.cz, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ca, i8 0, i64 160, i1 false)
  store ptr %i.ca, ptr %.08.i.i.i26, align 8, !tbaa !191
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !184
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !191
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 112
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !191
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 160
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !191
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 192
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 208 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.cn, i8 0, i64 160, i1 false)
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !191
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 200
  store i64 0, ptr %i.co, align 8, !tbaa !184
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 240
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 256
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !191
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 288
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 304
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !191
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 336
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 352
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !191
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %i.cz = add i64 %.057.i.i.i27, -2               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 384
  %.not.i.i.i28.1 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i28.1, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1878

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %i.db = tail call noundef ptr @_ZNSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 0 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4llvm4yaml16EntryValueObjectESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit30
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !691
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.de) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml16EntryValueObjectESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml16EntryValueObjectESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit30, %bb.e
  store ptr %i.bj, ptr %0, align 8, !tbaa !689
  %i.df = getelementptr inbounds nuw [192 x i8], ptr %i.bk, i64 %1
  store ptr %i.df, ptr %i.a, align 8, !tbaa !690
  %i.dg = getelementptr inbounds nuw [192 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !691
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml16EntryValueObjectEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml16EntryValueObjectESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN4llvm4yaml16EntryValueObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN4llvm4yaml16EntryValueObjectES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN4llvm4yaml16EntryValueObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN4llvm4yaml16EntryValueObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 18 uses
  %.0911.i.i = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN4llvm4yaml16EntryValueObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 26 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %i.a = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 3 uses
  store ptr %i.a, ptr %.012.i.i, align 8, !tbaa !191, !alias.scope !1883, !noalias !1884
  %i.b = load ptr, ptr %.0911.i.i, align 8, !tbaa !183, !alias.scope !1884, !noalias !1883 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883 ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false), !alias.scope !1885
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.b, ptr %.012.i.i, align 8, !tbaa !183, !alias.scope !1883, !noalias !1884
  %i.i = load i64, ptr %i.c, align 8, !tbaa !187, !alias.scope !1884, !noalias !1883
  store i64 %i.i, ptr %i.a, align 8, !tbaa !187, !alias.scope !1883, !noalias !1884
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i:   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.j = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !184, !alias.scope !1883, !noalias !1884
  store ptr %i.c, ptr %.0911.i.i, align 8, !tbaa !183, !alias.scope !1884, !noalias !1883
  store i64 0, ptr %i.k, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883
  store i8 0, ptr %i.c, align 8, !tbaa !187, !alias.scope !1884, !noalias !1883
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1885
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !191, !alias.scope !1883, !noalias !1884
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !183, !alias.scope !1884, !noalias !1883 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i

bb.c:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false), !alias.scope !1885
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit6.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit.i.i.i.i
  store ptr %i.r, ptr %i.o, align 8, !tbaa !183, !alias.scope !1883, !noalias !1884
  %i.y = load i64, ptr %i.s, align 8, !tbaa !187, !alias.scope !1884, !noalias !1883
  store i64 %i.y, ptr %i.q, align 8, !tbaa !187, !alias.scope !1883, !noalias !1884
  %.phi.trans.insert5.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %.pre6.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit6.i.i.i.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit6.i.i.i.i:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i, %bb.c
  %i.z = phi i64 [ %.pre6.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i ], [ %i.v, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 56
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !184, !alias.scope !1883, !noalias !1884
  store ptr %i.s, ptr %i.p, align 8, !tbaa !183, !alias.scope !1884, !noalias !1883
  store i64 0, ptr %i.aa, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883
  store i8 0, ptr %i.s, align 8, !tbaa !187, !alias.scope !1884, !noalias !1883
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1885
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 112 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !191, !alias.scope !1883, !noalias !1884
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !183, !alias.scope !1884, !noalias !1883 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i

bb.d:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit6.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false), !alias.scope !1885
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit6.i.i.i.i
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !183, !alias.scope !1883, !noalias !1884
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !187, !alias.scope !1884, !noalias !1883
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !187, !alias.scope !1883, !noalias !1884
  %.phi.trans.insert7.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104
  %.pre8.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883
  br label %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i

_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i, %bb.d
  %i.ap = phi i64 [ %.pre8.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i.i ], [ %i.al, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !184, !alias.scope !1883, !noalias !1884
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !183, !alias.scope !1884, !noalias !1883
  store i64 0, ptr %i.aq, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883
  store i8 0, ptr %i.ai, align 8, !tbaa !187, !alias.scope !1884, !noalias !1883
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1885
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 144 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 144 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 160 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !191, !alias.scope !1883, !noalias !1884
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !183, !alias.scope !1884, !noalias !1883 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 160 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i

bb.e:                                             ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !1885
  br label %_ZSt19__relocate_object_aIN4llvm4yaml16EntryValueObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i: ; preds = %_ZN4llvm4yaml11StringValueC2EOS1_.exit8.i.i.i.i
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !183, !alias.scope !1883, !noalias !1884
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !187, !alias.scope !1884, !noalias !1883
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !187, !alias.scope !1883, !noalias !1884
  %.phi.trans.insert9.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152
  %.pre10.i.i.i = load i64, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883
  br label %_ZSt19__relocate_object_aIN4llvm4yaml16EntryValueObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN4llvm4yaml16EntryValueObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i, %bb.e
  %i.bf = phi i64 [ %i.bb, %bb.e ], [ %.pre10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 152
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !184, !alias.scope !1883, !noalias !1884
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !183, !alias.scope !1884, !noalias !1883
  store i64 0, ptr %i.bg, align 8, !tbaa !184, !alias.scope !1884, !noalias !1883
  store i8 0, ptr %i.ay, align 8, !tbaa !187, !alias.scope !1884, !noalias !1883
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 176
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1885
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 192 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN4llvm4yaml16EntryValueObjectES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1882

_ZSt12__relocate_aIPN4llvm4yaml16EntryValueObjectES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml16EntryValueObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.bl, %_ZSt19__relocate_object_aIN4llvm4yaml16EntryValueObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml16EntryValueObjectC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
end_hunk_6
begin_hunk_7_@_ZN4llvm4yaml13MappingTraitsINS0_12CallSiteInfo10ArgRegPairEE7mappingERNS0_2IOERS3_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.e = load ptr, ptr %0, align 8, !tbaa !180
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.184, i64 3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #18, !inline_history !1902
  br i1 %i.h, label %bb.b, label %_ZN4llvm4yaml2IO11mapRequiredItEEvNS_9StringRefERT_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN4llvm4yaml7yamlizeItEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS3_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.i, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.k = load ptr, ptr %0, align 8, !tbaa !180
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.j) #18, !inline_history !1902
  br label %_ZN4llvm4yaml2IO11mapRequiredItEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapRequiredItEEvNS_9StringRefERT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.n = load ptr, ptr %0, align 8, !tbaa !180
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.130, i64 3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18, !inline_history !31
  br i1 %i.q, label %bb.c, label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit

bb.c:                                             ; preds = %_ZN4llvm4yaml2IO11mapRequiredItEEvNS_9StringRefERT_.exit
  call void @_ZN4llvm4yaml7yamlizeINS0_11StringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.s = load ptr, ptr %0, align 8, !tbaa !180
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.r) #18, !inline_history !31
  br label %_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapRequiredINS0_11StringValueEEEvNS_9StringRefERT_.exit: ; preds = %_ZN4llvm4yaml2IO11mapRequiredItEEvNS_9StringRefERT_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm4yaml7yamlizeItEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS3_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %5 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 11 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !554
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !555
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 128, ptr %i.g, align 8, !tbaa !556
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %i.h, align 8, !tbaa !718
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.i, align 8, !tbaa !719
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.j, align 4, !tbaa !720
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !180
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %4, ptr %i.l, align 8, !tbaa !722
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.m = call noundef ptr @_ZNK4llvm4yaml2IO10getContextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  call void @_ZN4llvm4yaml12ScalarTraitsItvE6outputERKtPvRNS_11raw_ostreamE(ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(48) %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !725, !nonnull !173, !align !174 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !554
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !555
  store ptr %i.o, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %0, align 8, !tbaa !180
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.v = load ptr, ptr %4, align 8, !tbaa !554    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.v) #18
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load ptr, ptr %0, align 8, !tbaa !180
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0) #18
  %.sroa.01.0.copyload = load ptr, ptr %7, align 8, !tbaa !60
  %.sroa.22.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !67
  %i.aa = call noundef ptr @_ZNK4llvm4yaml2IO10getContextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %i.ab = call { ptr, i64 } @_ZN4llvm4yaml12ScalarTraitsItvE5inputENS_9StringRefEPvRt(ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr noundef %i.aa, ptr noundef nonnull align 2 dereferenceable(2) %1) #18 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.af, align 8, !tbaa !197
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ag, align 1, !tbaa !198
  store ptr %i.ae, ptr %8, align 8, !tbaa !187
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ac, ptr %i.ah, align 8, !tbaa !187
  %i.ai = load ptr, ptr %0, align 8, !tbaa !180
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  ret void
}

declare void @_ZN4llvm4yaml12ScalarTraitsItvE6outputERKtPvRNS_11raw_ostreamE(ptr noundef nonnull align 2 dereferenceable(2), ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare { ptr, i64 } @_ZN4llvm4yaml12ScalarTraitsItvE5inputENS_9StringRefEPvRt(ptr, i64, ptr noundef, ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !686  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !685    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !687
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false)
  store ptr %i.p, ptr %.08.i.i.i.prol, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1903

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  store ptr %i.v, ptr %.08.i.i.i, align 8, !tbaa !191
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !191
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i64 0, ptr %i.aa, align 8, !tbaa !184
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !191
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  store i64 0, ptr %i.ae, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i8 0, i64 40, i1 false)
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  store i64 0, ptr %i.ai, align 8, !tbaa !184
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1904

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !686
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 164703072086692425) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 56
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter41 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25.prol
  %.08.i.i.i26.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i25.prol ], [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i27.prol = phi i64 [ %i.av, %.lr.ph.i.i.i25.prol ], [ %1, %_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i25.prol ], [ 0, %_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i8 0, i64 40, i1 false)
  store ptr %i.as, ptr %.08.i.i.i26.prol, align 8, !tbaa !191
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add i64 %.057.i.i.i27.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 56 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !1905

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i25.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bo, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 17 uses
  %.057.i.i.i27 = phi i64 [ %i.bn, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i8 0, i64 40, i1 false)
  store ptr %i.ay, ptr %.08.i.i.i26, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !184
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i8 0, i64 40, i1 false)
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !191
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64
  store i64 0, ptr %i.bd, align 8, !tbaa !184
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i8 0, i64 40, i1 false)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 120
  store i64 0, ptr %i.bh, align 8, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 168
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i8 0, i64 40, i1 false)
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !191
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 176
  store i64 0, ptr %i.bl, align 8, !tbaa !184
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = add i64 %.057.i.i.i27, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 224
  %.not.i.i.i28.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i28.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1904

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit30, %_ZSt19__relocate_object_aIN4llvm4yaml12CallSiteInfo10ArgRegPairES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ch, %_ZSt19__relocate_object_aIN4llvm4yaml12CallSiteInfo10ArgRegPairES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.cg, %_ZSt19__relocate_object_aIN4llvm4yaml12CallSiteInfo10ArgRegPairES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.bp, ptr %.012.i.i.i, align 8, !tbaa !191, !alias.scope !1910, !noalias !1911
  %i.bq = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1911, !noalias !1910 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i31
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !184, !alias.scope !1911, !noalias !1910 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false), !alias.scope !1912
  br label %_ZSt19__relocate_object_aIN4llvm4yaml12CallSiteInfo10ArgRegPairES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i31
  store ptr %i.bq, ptr %.012.i.i.i, align 8, !tbaa !183, !alias.scope !1910, !noalias !1911
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !187, !alias.scope !1911, !noalias !1910
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !187, !alias.scope !1910, !noalias !1911
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !184, !alias.scope !1911, !noalias !1910
  br label %_ZSt19__relocate_object_aIN4llvm4yaml12CallSiteInfo10ArgRegPairES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4llvm4yaml12CallSiteInfo10ArgRegPairES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.by = phi i64 [ %i.bu, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !184, !alias.scope !1910, !noalias !1911
  store ptr %i.br, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1911, !noalias !1910
  store i64 0, ptr %i.bz, align 8, !tbaa !184, !alias.scope !1911, !noalias !1910
  store i8 0, ptr %i.br, align 8, !tbaa !187, !alias.scope !1911, !noalias !1910
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1912
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !534, !alias.scope !1911, !noalias !1910
  store i16 %i.cf, ptr %i.cd, align 8, !tbaa !534, !alias.scope !1910, !noalias !1911
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i32 = icmp eq ptr %i.cg, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31, !llvm.loop !1909

_ZNSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml12CallSiteInfo10ArgRegPairES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !687
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ck) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.f
  store ptr %i.aq, ptr %0, align 8, !tbaa !685
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %1
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !686
  %i.cm = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.cm, ptr %i.h, align 8, !tbaa !687
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml12CallSiteInfo10ArgRegPairEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 164703072086692425
  br i1 %i.b, label %bb.c, label %_ZNSt15__new_allocatorIN4llvm4yaml12CallSiteInfo10ArgRegPairEE8allocateEmPKv.exit.i, !prof !653

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 329406144173384850
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt15__new_allocatorIN4llvm4yaml12CallSiteInfo10ArgRegPairEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.d = mul nuw nsw i64 %1, 56
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21
  br label %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN4llvm4yaml12CallSiteInfo10ArgRegPairEE8allocateEmPKv.exit.i
  %i.f = phi ptr [ %i.e, %_ZNSt15__new_allocatorIN4llvm4yaml12CallSiteInfo10ArgRegPairEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm4yaml12CallSiteInfo10ArgRegPairESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN4llvm4yaml12CallSiteInfo10ArgRegPairEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN4llvm4yaml12CallSiteInfo10ArgRegPairEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.f, %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_M_allocateEm.exit ] ; 9 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN4llvm4yaml12CallSiteInfo10ArgRegPairEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_M_allocateEm.exit ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.g, ptr %.09.i.i.i.i, align 8, !tbaa !191
  %i.h = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !184  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.j, ptr %i.a, align 8, !tbaa !67
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(50) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.l, ptr %.09.i.i.i.i, align 8, !tbaa !183
  %i.m = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.m, ptr %i.g, align 8, !tbaa !187
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.n = phi ptr [ %i.l, %bb.f ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.j, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt10_ConstructIN4llvm4yaml12CallSiteInfo10ArgRegPairEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !187
  store i8 %i.o, ptr %i.n, align 1, !tbaa !187
  br label %_ZSt10_ConstructIN4llvm4yaml12CallSiteInfo10ArgRegPairEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZSt10_ConstructIN4llvm4yaml12CallSiteInfo10ArgRegPairEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvm4yaml12CallSiteInfo10ArgRegPairEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !184
  %i.r = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !183
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !532
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 48
  %i.x = load i16, ptr %i.w, align 8, !tbaa !534
  store i16 %i.x, ptr %i.v, align 8, !tbaa !534
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  %.not.i.i.i.i = icmp eq ptr %i.y, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm4yaml12CallSiteInfo10ArgRegPairESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !40

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm4yaml12CallSiteInfo10ArgRegPairESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4llvm4yaml12CallSiteInfo10ArgRegPairEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm4yaml12CallSiteInfo10ArgRegPairESaIS3_EE11_M_allocateEm.exit
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm4yaml7yamlizeISt6vectorImSaImEENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS7_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !733
  %i.l = load ptr, ptr %1, align 8, !tbaa !682
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = trunc i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.r = phi i32 [ %i.q, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EEaSERKS4_:bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml13MappingTraitsINS0_24MachineConstantPoolValueEE7mappingERNS0_2IOERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(75) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %4 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %6 = alloca %"struct.llvm::yaml::StringValue", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.g = load ptr, ptr %0, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.123, i64 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18, !inline_history !30
  br i1 %i.j, label %bb.b, label %_ZN4llvm4yaml2IO11mapRequiredINS0_13UnsignedValueEEEvNS_9StringRefERT_.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm4yaml7yamlizeINS0_13UnsignedValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.l = load ptr, ptr %0, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.k) #18, !inline_history !30
  br label %_ZN4llvm4yaml2IO11mapRequiredINS0_13UnsignedValueEEEvNS_9StringRefERT_.exit

_ZN4llvm4yaml2IO11mapRequiredINS0_13UnsignedValueEEEvNS_9StringRefERT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !191
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS0_11StringValueENS0_12EmptyContextEEEvNS_9StringRefERT_RKS6_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.190, i64 5, ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %6, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.t = load ptr, ptr %6, align 8, !tbaa !183    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZN4llvm4yaml11StringValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_13UnsignedValueEEEvNS_9StringRefERT_.exit
  %i.v = load i64, ptr %i.q, align 8, !tbaa !187
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #19
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit

_ZN4llvm4yaml11StringValueD2Ev.exit:              ; preds = %_ZN4llvm4yaml2IO11mapRequiredINS0_13UnsignedValueEEEvNS_9StringRefERT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.y = load ptr, ptr %0, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !28
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit
  %.sroa.02.0.copyload.i.i.i = load i16, ptr %i.x, align 8
  %i.ac = and i16 %.sroa.02.0.copyload.i.i.i, 256
  %.not.i.i.i.i = icmp eq i16 %i.ac, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvm4yaml11StringValueD2Ev.exit
  %i.ad = phi i1 [ false, %_ZN4llvm4yaml11StringValueD2Ev.exit ], [ %.not.i.i.i.i, %bb.c ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !180
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.56, i64 9, i1 noundef zeroext false, i1 noundef zeroext %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #18, !inline_history !28
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm4yaml7yamlizeINS_10MaybeAlignEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %i.x, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.aj = load ptr, ptr %0, align 8, !tbaa !180
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ai) #18, !inline_history !28
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_10MaybeAlignESt9nullopt_tEEvNS_9StringRefERT_RKT0_.exit

bb.f:                                             ; preds = %bb.d
  %i.am = load i8, ptr %i.d, align 1, !tbaa !431, !range !201, !noundef !173
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %_ZN4llvm4yaml2IO11mapOptionalINS_10MaybeAlignESt9nullopt_tEEvNS_9StringRefERT_RKT0_.exit

bb.g:                                             ; preds = %bb.f
  store i16 0, ptr %i.x, align 8
  br label %_ZN4llvm4yaml2IO11mapOptionalINS_10MaybeAlignESt9nullopt_tEEvNS_9StringRefERT_RKT0_.exit

_ZN4llvm4yaml2IO11mapOptionalINS_10MaybeAlignESt9nullopt_tEEvNS_9StringRefERT_RKT0_.exit: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ap = load ptr, ptr %0, align 8, !tbaa !180
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !29
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm4yaml2IO11mapOptionalINS_10MaybeAlignESt9nullopt_tEEvNS_9StringRefERT_RKT0_.exit
  %i.at = load i8, ptr %i.ao, align 2, !tbaa !431, !range !201, !noundef !173
  %i.au = icmp eq i8 %i.at, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm4yaml2IO11mapOptionalINS_10MaybeAlignESt9nullopt_tEEvNS_9StringRefERT_RKT0_.exit
  %i.av = phi i1 [ false, %_ZN4llvm4yaml2IO11mapOptionalINS_10MaybeAlignESt9nullopt_tEEvNS_9StringRefERT_RKT0_.exit ], [ %i.au, %bb.h ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !180
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.191, i64 16, i1 noundef zeroext false, i1 noundef zeroext %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18, !inline_history !29
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm4yaml7yamlizeIbEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS3_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ao, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.bb = load ptr, ptr %0, align 8, !tbaa !180
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ba) #18, !inline_history !29
  br label %_ZN4llvm4yaml2IO11mapOptionalIbbEEvNS_9StringRefERT_RKT0_.exit

bb.k:                                             ; preds = %bb.i
  %i.be = load i8, ptr %i.b, align 1, !tbaa !431, !range !201, !noundef !173
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.l, label %_ZN4llvm4yaml2IO11mapOptionalIbbEEvNS_9StringRefERT_RKT0_.exit

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.ao, align 2, !tbaa !431
  br label %_ZN4llvm4yaml2IO11mapOptionalIbbEEvNS_9StringRefERT_RKT0_.exit

_ZN4llvm4yaml2IO11mapOptionalIbbEEvNS_9StringRefERT_RKT0_.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !479  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !478    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 80                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !480
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 80                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 115292150460684697, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.08.i.i.i.prol, i8 0, i64 80, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !191
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 80 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1932

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.08.i.i.i, i8 0, i64 80, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !191
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, i8 0, i64 80, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !191
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, i8 0, i64 80, i1 false)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !191
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 264
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, i8 0, i64 80, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !191
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 320 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1933

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !479
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 115292150460684697) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 80
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter41 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25.prol
  %.08.i.i.i26.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i25.prol ], [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i27.prol = phi i64 [ %i.av, %.lr.ph.i.i.i25.prol ], [ %1, %_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i25.prol ], [ 0, %_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.08.i.i.i26.prol, i8 0, i64 80, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !191
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add i64 %.057.i.i.i27.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 80 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !1934

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i25.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bo, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 17 uses
  %.057.i.i.i27 = phi i64 [ %i.bn, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.08.i.i.i26, i8 0, i64 80, i1 false)
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !191
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bb, i8 0, i64 80, i1 false)
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !191
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 160
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 184
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i8 0, i64 80, i1 false)
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !191
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 240
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 264
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, i8 0, i64 80, i1 false)
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !191
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = add i64 %.057.i.i.i27, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 320
  %.not.i.i.i28.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i28.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1933

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit30, %_ZSt19__relocate_object_aIN4llvm4yaml24MachineConstantPoolValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aIN4llvm4yaml24MachineConstantPoolValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.ch, %_ZSt19__relocate_object_aIN4llvm4yaml24MachineConstantPoolValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(75) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !728, !alias.scope !1941
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !191, !alias.scope !1939, !noalias !1940
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !183, !alias.scope !1940, !noalias !1939 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i31
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !184, !alias.scope !1940, !noalias !1939 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false), !alias.scope !1941
  br label %_ZSt19__relocate_object_aIN4llvm4yaml24MachineConstantPoolValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i31
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !183, !alias.scope !1939, !noalias !1940
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !187, !alias.scope !1940, !noalias !1939
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !187, !alias.scope !1939, !noalias !1940
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !184, !alias.scope !1940, !noalias !1939
  br label %_ZSt19__relocate_object_aIN4llvm4yaml24MachineConstantPoolValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4llvm4yaml24MachineConstantPoolValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ca = phi i64 [ %i.bw, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !184, !alias.scope !1939, !noalias !1940
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !183, !alias.scope !1940, !noalias !1939
  store i64 0, ptr %i.cb, align 8, !tbaa !184, !alias.scope !1940, !noalias !1939
  store i8 0, ptr %i.bt, align 8, !tbaa !187, !alias.scope !1940, !noalias !1939
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1941
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cf, ptr noundef nonnull align 8 dereferenceable(3) %i.cg, i64 3, i1 false), !alias.scope !1941
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %.not.i.i.i32 = icmp eq ptr %i.ch, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31, !llvm.loop !1938

_ZNSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml24MachineConstantPoolValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !480
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cl) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.f
  store ptr %i.aq, ptr %0, align 8, !tbaa !478
  %i.cm = getelementptr inbounds nuw [80 x i8], ptr %i.ar, i64 %1
  store ptr %i.cm, ptr %i.a, align 8, !tbaa !479
  %i.cn = getelementptr inbounds nuw [80 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.cn, ptr %i.h, align 8, !tbaa !480
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml24MachineConstantPoolValueEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 115292150460684697
  br i1 %i.b, label %bb.c, label %_ZNSt15__new_allocatorIN4llvm4yaml24MachineConstantPoolValueEE8allocateEmPKv.exit.i, !prof !653

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 230584300921369395
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt15__new_allocatorIN4llvm4yaml24MachineConstantPoolValueEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.d = mul nuw nsw i64 %1, 80
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21
  br label %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN4llvm4yaml24MachineConstantPoolValueEE8allocateEmPKv.exit.i
  %i.f = phi ptr [ %i.e, %_ZNSt15__new_allocatorIN4llvm4yaml24MachineConstantPoolValueEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm4yaml24MachineConstantPoolValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN4llvm4yaml24MachineConstantPoolValueEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN4llvm4yaml24MachineConstantPoolValueEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.f, %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_M_allocateEm.exit ] ; 7 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN4llvm4yaml24MachineConstantPoolValueEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_M_allocateEm.exit ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(75) %.sroa.04.08.i.i.i.i, i64 24, i1 false), !tbaa.struct !728
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !191
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !183  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !184  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.l, ptr %i.a, align 8, !tbaa !67
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !183
  %i.o = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.o, ptr %i.i, align 8, !tbaa !187
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.l, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt10_ConstructIN4llvm4yaml24MachineConstantPoolValueEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !187
  store i8 %i.q, ptr %i.p, align 1, !tbaa !187
  br label %_ZSt10_ConstructIN4llvm4yaml24MachineConstantPoolValueEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZSt10_ConstructIN4llvm4yaml24MachineConstantPoolValueEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvm4yaml24MachineConstantPoolValueEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !184
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !183
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !532
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.x, ptr noundef nonnull align 8 dereferenceable(3) %i.y, i64 3, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 80
  %.not.i.i.i.i = icmp eq ptr %i.z, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm4yaml24MachineConstantPoolValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1942

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4llvm4yaml24MachineConstantPoolValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4llvm4yaml24MachineConstantPoolValueEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm4yaml24MachineConstantPoolValueESaIS2_EE11_M_allocateEm.exit
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml2IO21processKeyWithDefaultINS0_16MachineJumpTableENS0_12EmptyContextEEEvNS_9StringRefERT_RKS6_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = load ptr, ptr %0, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.f, label %bb.b, label %_ZNK4llvm4yaml16MachineJumpTableeqERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !tbaa !231
  %i.h = load i32, ptr %4, align 8, !tbaa !231
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNK4llvm4yaml16MachineJumpTableeqERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_8
begin_hunk_9_@_ZN4llvm4yaml2IO21processKeyWithDefaultISt6vectorINS0_11StringValueESaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_RKS9_bRT0_:bb.a
  %i.o = load ptr, ptr %4, align 8, !tbaa !470    ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.l, %i.r
  br i1 %i.s, label %bb.c, label %_ZSteqIN4llvm4yaml11StringValueESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.c:                                             ; preds = %bb.b
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZSteqIN4llvm4yaml11StringValueESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.thread.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ad, %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.thread.i.i.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ac, %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.thread.i.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !184  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !184
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZSteqIN4llvm4yaml11StringValueESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.thread.i.i.i.i.i, label %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i

_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !183
  %i.aa = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !183
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.thread.i.i.i.i.i, label %_ZSteqIN4llvm4yaml11StringValueESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZNK4llvm4yaml11StringValueeqERKS1_.exit.thread.i.i.i.i.i: ; preds = %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSteqIN4llvm4yaml11StringValueESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !33

_ZSteqIN4llvm4yaml11StringValueESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit: ; preds = %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.thread.i.i.i.i.i, %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  %i.ae = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i ], [ true, %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.thread.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ]
  %i.af = load ptr, ptr %0, align 8, !tbaa !180
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext %5, i1 noundef zeroext %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSteqIN4llvm4yaml11StringValueESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit
  call void @_ZN4llvm4yaml7yamlizeISt6vectorINS0_11StringValueESaIS3_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.ak = load ptr, ptr %0, align 8, !tbaa !180
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.aj) #18
  br label %bb.h

bb.f:                                             ; preds = %_ZSteqIN4llvm4yaml11StringValueESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit
  %i.an = load i8, ptr %i.b, align 1, !tbaa !431, !range !201, !noundef !173
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm4yaml7yamlizeISt6vectorINS0_11StringValueESaIS3_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !471
  %i.l = load ptr, ptr %1, align 8, !tbaa !470
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 48
  %i.q = trunc i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.r = phi i32 [ %i.q, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = zext i32 %i.r to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !180
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.w = load ptr, ptr %0, align 8, !tbaa !180
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = trunc nuw i64 %indvars.iv to i32
  %i.aa = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !471
  %i.ac = load ptr, ptr %1, align 8, !tbaa !470   ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 48                ; 2 uses
  %.not.i = icmp ugt i64 %i.ag, %indvars.iv
  br i1 %.not.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorINS0_11StringValueESaIS3_EEE7elementERNS0_2IOERS5_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nuw nsw i64 %indvars.iv, 1
  %i.ai = sub nuw nsw i64 %i.ah, %i.ag
  call void @_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ai)
  %.pre = load ptr, ptr %1, align 8, !tbaa !470
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorINS0_11StringValueESaIS3_EEE7elementERNS0_2IOERS5_m.exit

_ZN4llvm4yaml15IsResizableBaseISt6vectorINS0_11StringValueESaIS3_EEE7elementERNS0_2IOERS5_m.exit: ; preds = %bb.e, %bb.f
  %i.aj = phi ptr [ %i.ac, %bb.e ], [ %.pre, %bb.f ]
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %indvars.iv
  call void @_ZN4llvm4yaml7yamlizeINS0_11StringValueEEENSt9enable_ifIXsr16has_ScalarTraitsIT_EE5valueEvE4typeERNS0_2IOERS4_bRNS0_12EmptyContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.am = load ptr, ptr %0, align 8, !tbaa !180
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.al) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorINS0_11StringValueESaIS3_EEE7elementERNS0_2IOERS5_m.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1962
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !470    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !472
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.p, ptr %.08.i.i.i.prol, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1963

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %.08.i.i.i, align 8, !tbaa !191
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !191
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store i64 0, ptr %i.aa, align 8, !tbaa !184
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !191
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store i64 0, ptr %i.ae, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  store i64 0, ptr %i.ai, align 8, !tbaa !184
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1964

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !471
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #20
  unreachable

_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 192153584101141162) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 48
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter41 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25.prol
  %.08.i.i.i26.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i25.prol ], [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i27.prol = phi i64 [ %i.av, %.lr.ph.i.i.i25.prol ], [ %1, %_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i25.prol ], [ 0, %_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %.08.i.i.i26.prol, align 8, !tbaa !191
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = add i64 %.057.i.i.i27.prol, -1          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 48 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !1965

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4llvm4yaml11StringValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i25.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bo, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 17 uses
  %.057.i.i.i27 = phi i64 [ %i.bn, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr %i.ay, ptr %.08.i.i.i26, align 8, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !184
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !191
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 56
  store i64 0, ptr %i.bd, align 8, !tbaa !184
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 104
  store i64 0, ptr %i.bh, align 8, !tbaa !184
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !191
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 152
  store i64 0, ptr %i.bl, align 8, !tbaa !184
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = add i64 %.057.i.i.i27, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 192
  %.not.i.i.i28.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i28.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !1964

_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit30, %_ZSt19__relocate_object_aIN4llvm4yaml11StringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ce, %_ZSt19__relocate_object_aIN4llvm4yaml11StringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.cd, %_ZSt19__relocate_object_aIN4llvm4yaml11StringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit30 ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.bp, ptr %.012.i.i.i, align 8, !tbaa !191, !alias.scope !1970, !noalias !1971
  %i.bq = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1971, !noalias !1970 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i31
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !184, !alias.scope !1971, !noalias !1970 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false), !alias.scope !1972
  br label %_ZSt19__relocate_object_aIN4llvm4yaml11StringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i31
  store ptr %i.bq, ptr %.012.i.i.i, align 8, !tbaa !183, !alias.scope !1970, !noalias !1971
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !187, !alias.scope !1971, !noalias !1970
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !187, !alias.scope !1970, !noalias !1971
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !184, !alias.scope !1971, !noalias !1970
  br label %_ZSt19__relocate_object_aIN4llvm4yaml11StringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4llvm4yaml11StringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.by = phi i64 [ %i.bu, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !184, !alias.scope !1970, !noalias !1971
  store ptr %i.br, ptr %.0911.i.i.i, align 8, !tbaa !183, !alias.scope !1971, !noalias !1970
  store i64 0, ptr %i.bz, align 8, !tbaa !184, !alias.scope !1971, !noalias !1970
  store i8 0, ptr %i.br, align 8, !tbaa !187, !alias.scope !1971, !noalias !1970
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !532, !alias.scope !1972
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i32 = icmp eq ptr %i.cd, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i31, !llvm.loop !1969

_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4llvm4yaml11StringValueES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4llvm4yaml11StringValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !472
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ch) #19
  br label %_ZNSt12_Vector_baseIN4llvm4yaml11StringValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4yaml11StringValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm4yaml11StringValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.f
  store ptr %i.aq, ptr %0, align 8, !tbaa !470
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %1
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !471
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.cj, ptr %i.h, align 8, !tbaa !472
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm4yaml11StringValueEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm4yaml11StringValueESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml2IO21processKeyWithDefaultISt6vectorINS0_12CalledGlobalESaIS4_EENS0_12EmptyContextEEEvNS_9StringRefERT_RKS9_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = load ptr, ptr %0, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.f, label %bb.b, label %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !468  ; 3 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !467    ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !468
  %i.o = load ptr, ptr %4, align 8, !tbaa !467    ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.l, %i.r
  br i1 %i.s, label %bb.c, label %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not9.i.i.i.i.i, label %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.f
  %.011.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.o, %bb.c ] ; 5 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ap, %bb.f ], [ %i.i, %bb.c ] ; 5 uses
  %i.t = load <2 x i32>, ptr %.0810.i.i.i.i.i, align 4
  %i.u = load <2 x i32>, ptr %.011.i.i.i.i.i, align 4
  %i.v = icmp eq <2 x i32> %i.t, %i.u             ; 2 uses
  %i.w = extractelement <2 x i1> %i.v, i64 0
  %i.x = extractelement <2 x i1> %i.v, i64 1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %bb.d, label %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !184 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !184
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_ZNK4llvm4yaml12CalledGlobaleqERKS1_.exit.i.i.i.i.i, label %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i.i

_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !183
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !183
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.ah, i64 %i.ac)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_ZNK4llvm4yaml12CalledGlobaleqERKS1_.exit.i.i.i.i.i, label %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZNK4llvm4yaml12CalledGlobaleqERKS1_.exit.i.i.i.i.i: ; preds = %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !664
  %i.am = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !664
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.f:                                             ; preds = %_ZNK4llvm4yaml12CalledGlobaleqERKS1_.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1973

_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit: ; preds = %bb.f, %_ZNK4llvm4yaml12CalledGlobaleqERKS1_.exit.i.i.i.i.i, %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  %i.ar = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZNK4llvm4yaml12CalledGlobaleqERKS1_.exit.i.i.i.i.i ], [ true, %bb.f ], [ false, %_ZNK4llvm4yaml11StringValueeqERKS1_.exit.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ], [ false, %bb.d ]
  %i.as = load ptr, ptr %0, align 8, !tbaa !180
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, i1 noundef zeroext %5, i1 noundef zeroext %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit
  call void @_ZN4llvm4yaml7yamlizeISt6vectorINS0_12CalledGlobalESaIS3_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.ax = load ptr, ptr %0, align 8, !tbaa !180
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.aw) #18
  br label %bb.j

bb.h:                                             ; preds = %_ZSteqIN4llvm4yaml12CalledGlobalESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit
  %i.ba = load i8, ptr %i.b, align 1, !tbaa !431, !range !201, !noundef !173
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm4yaml12CalledGlobalESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm4yaml7yamlizeISt6vectorINS0_12CalledGlobalESaIS3_EENS0_12EmptyContextEEENSt9enable_ifIXsr18has_SequenceTraitsIT_EE5valueEvE4typeERNS0_2IOERS8_bRT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %i.i, label %bb.b, label %bb.c
end_hunk_9
