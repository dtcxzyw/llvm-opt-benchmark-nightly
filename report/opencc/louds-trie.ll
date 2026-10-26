Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6marisa8grimoire4trie9LoudsTrie10build_trieINS1_3KeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i32 4096, i32 8192
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !48
  %i.ag = or i32 %i.ad, %i.ab
  %i.ah = or i32 %i.ag, %i.af
  %i.ai = or i32 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 3, ptr %5, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 512, ptr %i.aj, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4096, ptr %i.ak, align 4, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 131072, ptr %i.al, align 8, !tbaa !50
  invoke void @_ZN6marisa8grimoire4trie6Config6parse_Ei(ptr noundef nonnull align 8 dereferenceable(20) %5, i32 noundef %i.ai)
          to label %_ZN6marisa8grimoire4trie6Config5parseEi.exit27 unwind label %bb.k

_ZN6marisa8grimoire4trie6Config5parseEi.exit27:   ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.an = load i64, ptr %5, align 8, !tbaa !54
  store i64 %i.an, ptr %i.am, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ap = load <2 x i32>, ptr %i.aj, align 8, !tbaa !55
  store <2 x i32> %i.ap, ptr %i.ao, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ar = load i32, ptr %i.al, align 8, !tbaa !56
  store i32 %i.ar, ptr %i.aq, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZN6marisa8grimoire4trie6Config5parseEi.exit27, %_ZN6marisa8grimoire4trie6Config5parseEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke void @_ZN6marisa8grimoire6vector9BitVector5buildEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.as, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.preheader32 unwind label %bb.k

.preheader32:                                     ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !72
  %.not35 = icmp eq i64 %i.au, 0
  br i1 %.not35, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.h
  %.034 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.br, %bb.h ] ; 3 uses
  %.02033 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bg, %bb.h ]
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !89
  br label %bb.g

._crit_edge:                                      ; preds = %bb.h, %.preheader32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 672
  invoke void @_ZN6marisa8grimoire6vector10FlatVector5buildERKNS1_6VectorIjEE(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(41) %7)
          to label %bb.i unwind label %bb.k

bb.g:                                             ; preds = %bb.g, %.preheader
  %.1 = phi i64 [ %i.bg, %bb.g ], [ %.02033, %.preheader ] ; 4 uses
  %i.ba = lshr i64 %.1, 6
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !54
  %i.bd = and i64 %.1, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.bc, %i.be
  %.not31 = icmp eq i64 %i.bf, 0
  %i.bg = add i64 %.1, 1                          ; 2 uses
  br i1 %.not31, label %bb.g, label %bb.h, !llvm.loop !282

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.034
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !73
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !147
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.1
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !55
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.034 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !73
  %i.bq = lshr i32 %i.bp, 8
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !73
  %i.br = add nuw i64 %.034, 1                    ; 2 uses
  %i.bs = load i64, ptr %i.at, align 8, !tbaa !72
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %.preheader, label %._crit_edge, !llvm.loop !283

bb.i:                                             ; preds = %._crit_edge
  invoke void @_ZN6marisa8grimoire4trie9LoudsTrie10fill_cacheEv(ptr noundef nonnull align 8 dereferenceable(1136) %0)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit:    ; preds = %bb.j, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.f, %bb.i, %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i28, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit30, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i29

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i29: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit30

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit30:  ; preds = %bb.k, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %i.bv
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.c = icmp eq i64 %i.b, 4294967295
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.15)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !86   ; 6 uses
  %i.g = shl i64 %i.f, 6
  %i.h = icmp eq i64 %i.b, %i.g
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = add i64 %i.f, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87   ; 4 uses
  %.not.i.i = icmp ugt i64 %i.i, %i.k
  br i1 %.not.i.i, label %bb.f, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i64 %i.i, 1
  %i.m = icmp ugt i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.k, 1152921504606846975
  %i.o = shl nuw nsw i64 %i.k, 1
  %spec.select.i.i = select i1 %i.n, i64 2305843009213693951, i64 %i.o
  %.0.i.i = select i1 %i.m, i64 %spec.select.i.i, i64 %i.i ; 2 uses
  %i.p = shl i64 %.0.i.i, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #22 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88
  %i.t = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.s, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  %.pre.pre = load i64, ptr %i.e, align 8, !tbaa !86
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.f
  %.pre = phi i64 [ %.pre.pre, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i ], [ %i.f, %bb.f ]
  store ptr %i.q, ptr %i.r, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.v, align 8, !tbaa !89
  store i64 %.0.i.i, ptr %i.j, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i, %bb.e
  %i.w = phi i64 [ %.pre, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i ], [ %i.f, %bb.e ] ; 3 uses
  %i.x = icmp ugt i64 %i.i, %i.w
  br i1 %i.x, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w
  %i.ab = shl i64 %i.f, 3
  %i.ac = add i64 %i.ab, 8
  %i.ad = shl nuw nsw i64 %i.w, 3
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i
  store i64 %i.i, ptr %i.e, align 8, !tbaa !86
  %.pre6.pre = load i64, ptr %i.a, align 8, !tbaa !83
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  resume { ptr, i32 } %i.af

bb.h:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit, %bb.d
  %.pre6 = phi i64 [ %.pre6.pre, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit ], [ %i.b, %bb.d ] ; 3 uses
  br i1 %1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = and i64 %.pre6, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = lshr i64 %.pre6, 6
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54
  %i.an = or i64 %i.am, %i.ah
  store i64 %i.an, ptr %i.al, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !97
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !97
  %.pre5 = load i64, ptr %i.a, align 8, !tbaa !83
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = phi i64 [ %.pre5, %bb.i ], [ %.pre6, %bb.h ]
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.a, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector9BitVector5buildEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.marisa::grimoire::vector::BitVector", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %3, i8 0, i64 41, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.b, i8 0, i64 41, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.c, i8 0, i64 41, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.a, i8 0, i64 57, i1 false)
  invoke void @_ZN6marisa8grimoire6vector9BitVector11build_indexERKS2_bb(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %1, i1 noundef zeroext %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6marisa8grimoire6vector6VectorImE6shrinkEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.a, align 8, !tbaa !54
  %i.f = load <2 x i64>, ptr %i.d, align 8, !tbaa !54
  store <2 x i64> %i.e, ptr %i.d, align 8, !tbaa !54
  store <2 x i64> %i.f, ptr %i.a, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !93
  %i.j = load <2 x ptr>, ptr %i.g, align 8, !tbaa !93
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !93
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !145
  store ptr %i.n, ptr %i.k, align 8, !tbaa !145
  store ptr %i.m, ptr %i.l, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !54
  %i.r = load <2 x i64>, ptr %i.o, align 8, !tbaa !54
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !54
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.u = load i8, ptr %i.s, align 8, !tbaa !90, !range !91, !noundef !92
  %i.v = load i8, ptr %i.t, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %i.v, ptr %i.s, align 8, !tbaa !90
  store i8 %i.u, ptr %i.t, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.x = load <2 x ptr>, ptr %i.b, align 8, !tbaa !93
  %i.y = load <2 x ptr>, ptr %i.w, align 8, !tbaa !93
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !51
  store <2 x ptr> %i.x, ptr %i.w, align 8, !tbaa !93
  store <2 x ptr> %i.y, ptr %i.b, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !146
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !146
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !146
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !146
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !tbaa !54
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !tbaa !54
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !tbaa !54
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.ak = load i8, ptr %i.ai, align 8, !tbaa !90, !range !91, !noundef !92
  %i.al = load i8, ptr %i.aj, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %i.al, ptr %i.ai, align 8, !tbaa !90
  store i8 %i.ak, ptr %i.aj, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.an = load <2 x ptr>, ptr %i.c, align 8, !tbaa !93
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !93
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !51 ; 2 uses
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !93
  store <2 x ptr> %i.ao, ptr %i.c, align 8, !tbaa !93
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !146
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !146
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !146
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !146
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !tbaa !54
  %i.ax = load <2 x i64>, ptr %i.au, align 8, !tbaa !54
  store <2 x i64> %i.aw, ptr %i.au, align 8, !tbaa !54
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.ba = load i8, ptr %i.ay, align 8, !tbaa !90, !range !91, !noundef !92
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %i.bb, ptr %i.ay, align 8, !tbaa !90
  store i8 %i.ba, ptr %i.az, align 8, !tbaa !90
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #20
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit.i

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.c
  %i.bc = phi ptr [ %.pre, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i ], [ %i.z, %bb.c ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i2.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i2.i: ; preds = %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit3.i

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i2.i, %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit.i
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !51  ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i4.i, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i5.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i5.i: ; preds = %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit3.i
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit.i

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i5.i, %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit3.i
  %i.be = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i6.i, label %_ZN6marisa8grimoire6vector9BitVectorD2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i7.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i7.i: ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.be) #20
  br label %_ZN6marisa8grimoire6vector9BitVectorD2Ev.exit

_ZN6marisa8grimoire6vector9BitVectorD2Ev.exit:    ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6marisa8grimoire6vector9BitVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bf
}

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa8grimoire4trie9LoudsTrie15build_next_trieINS1_3KeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.marisa::grimoire::vector::Vector.59", align 8 ; 13 uses
  %6 = alloca %"class.marisa::grimoire::vector::Vector.61", align 8 ; 13 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !47
  %i.b = icmp eq i64 %4, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %5, i8 0, i64 41, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_3KeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.phi.trans.insert.i164 = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph529, %bb.bw
  %i.el = phi ptr [ %i.dp, %.lr.ph529 ], [ %i.tj, %bb.bw ] ; 6 uses
  %i.em = phi ptr [ %i.dn, %.lr.ph529 ], [ %i.ti, %bb.bw ]
  %.sroa.0265.0528 = phi ptr [ null, %.lr.ph529 ], [ %.sroa.0265.4, %bb.bw ] ; 4 uses
  %.sroa.24.0527 = phi i64 [ 0, %.lr.ph529 ], [ %.sroa.24.3, %bb.bw ] ; 3 uses
  %.sroa.18.0526 = phi i64 [ 0, %.lr.ph529 ], [ %.sroa.18.3, %bb.bw ] ; 3 uses
  %.sroa.15296.0525 = phi ptr [ null, %.lr.ph529 ], [ %.sroa.15296.3, %bb.bw ] ; 3 uses
  %.sroa.10294.0524 = phi ptr [ null, %.lr.ph529 ], [ %.sroa.10294.3, %bb.bw ] ; 3 uses
  %.sroa.0290.0523 = phi ptr [ null, %.lr.ph529 ], [ %.sroa.0290.4, %bb.bw ] ; 7 uses
  %i.en = load i64, ptr %i.dr, align 8, !tbaa !83 ; 2 uses
  %i.eo = load ptr, ptr %i.ds, align 8, !tbaa !180 ; 2 uses
  %i.ep = load ptr, ptr %i.dt, align 8, !tbaa !180
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %i.eu = icmp ne ptr %i.eo, null
  %.neg.i.i.i = sext i1 %i.eu to i64
  %i.ev = add nsw i64 %i.et, %.neg.i.i.i
  %i.ew = mul nsw i64 %i.ev, 42
  %i.ex = load ptr, ptr %i.du, align 8, !tbaa !181
  %i.ey = ptrtoint ptr %i.em to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 12
  %i.fc = add nsw i64 %i.ew, %i.fb
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !182 ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.el to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 12
  %i.fi = add nsw i64 %i.fc, %i.fh                ; 2 uses
  %i.fj = sub i64 %i.en, %i.fi                    ; 4 uses
  %.sroa.0249.0.copyload = load i32, ptr %i.el, align 4, !tbaa !73 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !73 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !73 ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fd, i64 -12
  %.not.i.i103 = icmp eq ptr %i.el, %i.fk
  br i1 %.not.i.i103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit

bb.j:                                             ; preds = %bb.h
  %i.fm = load ptr, ptr %i.dw, align 8, !tbaa !183
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef 504) #20
  %i.fn = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  store ptr %i.fo, ptr %i.dt, align 8, !tbaa !180
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !185 ; 3 uses
  store ptr %i.fp, ptr %i.dw, align 8, !tbaa !181
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 504
  store ptr %i.fq, ptr %i.dv, align 8, !tbaa !182
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit: ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi ptr [ %i.fl, %bb.i ], [ %i.fp, %bb.j ]
  store ptr %storemerge.i.i, ptr %i.do, align 8, !tbaa !186
  %i.fr = zext i32 %.sroa.0249.0.copyload to i64  ; 2 uses
  %i.fs = icmp ult i32 %.sroa.0249.0.copyload, %.sroa.15.0.copyload
  br i1 %i.fs, label %.lr.ph479, label %.critedge

.lr.ph479:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %i.ft = trunc i64 %i.fj to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph479, %bb.l
  %i.fu = phi i64 [ %i.fr, %.lr.ph479 ], [ %i.gc, %bb.l ] ; 2 uses
  %.sroa.0249.0478 = phi i32 [ %.sroa.0249.0.copyload, %.lr.ph479 ], [ %i.gb, %bb.l ] ; 2 uses
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !69
  %i.fz = icmp eq i32 %i.fy, %.sroa.19.0.copyload
  br i1 %i.fz, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !55
  %i.gb = add i32 %.sroa.0249.0478, 1             ; 3 uses
  %i.gc = zext i32 %i.gb to i64
  %exitcond595.not = icmp eq i32 %i.gb, %.sroa.15.0.copyload
  br i1 %exitcond595.not, label %.critedge.thread, label %bb.k, !llvm.loop !302

.thread317:                                       ; preds = %bb.g
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie3KeyEED2Ev.exit236

bb.m:                                             ; preds = %.lr.ph.i, %bb.by, %bb.bx, %._crit_edge530
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.k, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.sroa.0249.0.lcssa = phi i32 [ %.sroa.0249.0.copyload, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %.sroa.0249.0478, %bb.k ] ; 3 uses
  %.lcssa335 = phi i64 [ %i.fr, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %i.fu, %bb.k ] ; 3 uses
  %i.gf = zext i32 %.sroa.15.0.copyload to i64    ; 3 uses
  %i.gg = icmp eq i32 %.sroa.0249.0.lcssa, %.sroa.15.0.copyload
  br i1 %i.gg, label %.critedge.thread, label %bb.n

.critedge.thread:                                 ; preds = %bb.l, %.critedge
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit, !llvm.loop !303

bb.n:                                             ; preds = %.critedge
  %.not.i.i.i104 = icmp eq ptr %.sroa.0265.0528, null
  br i1 %.not.i.i.i104, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.0528) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.gh = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %.lcssa335
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !55 ; 2 uses
  %.081485 = add nuw nsw i64 %.lcssa335, 1        ; 2 uses
  %i.gl = icmp samesign ult i64 %.081485, %i.gf
  br i1 %i.gl, label %.lr.ph494, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %.pre605 = zext i32 %.sroa.19.0.copyload to i64
  br label %._crit_edge495

.lr.ph494:                                        ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %i.gm = fpext float %i.gk to double
  %i.gn = zext i32 %.sroa.19.0.copyload to i64    ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph494, %bb.s
  %i.go = phi ptr [ %i.gh, %.lr.ph494 ], [ %i.hk, %bb.s ] ; 3 uses
  %.081493 = phi i64 [ %.081485, %.lr.ph494 ], [ %.081, %bb.s ] ; 6 uses
  %.081.in492 = phi i64 [ %.lcssa335, %.lr.ph494 ], [ %.081493, %bb.s ]
  %.082491 = phi double [ %i.gm, %.lr.ph494 ], [ %i.hp, %bb.s ] ; 2 uses
  %.sroa.0249.1490 = phi i32 [ %.sroa.0249.0.lcssa, %.lr.ph494 ], [ %.sroa.0249.2, %bb.s ] ; 2 uses
  %.sroa.34.0489 = phi i64 [ 0, %.lr.ph494 ], [ %.sroa.34.1, %bb.s ] ; 6 uses
  %.sroa.23.0488 = phi i64 [ 0, %.lr.ph494 ], [ %.sroa.23.1, %bb.s ] ; 4 uses
  %.sroa.12.0487 = phi ptr [ null, %.lr.ph494 ], [ %.sroa.12.1, %bb.s ] ; 3 uses
  %.sroa.0265.1486 = phi ptr [ null, %.lr.ph494 ], [ %.sroa.0265.2, %bb.s ] ; 5 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %.081.in492
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !68
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gn
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !55
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %.081493
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !68
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gn
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !55
  %.not95 = icmp eq i8 %i.gs, %i.gw
  br i1 %.not95, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gx = zext i32 %.sroa.0249.1490 to i64
  %i.gy = fptrunc double %.082491 to float
  %.sroa.0.sroa.3.0.insert.ext.i107 = shl i64 %.081493, 32
  %.sroa.0.sroa.0.0.insert.insert.i109 = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i107, %i.gx
  %i.gz = bitcast float %i.gy to i32
  %.sroa.4.sroa.3.0.insert.ext.i111 = zext i32 %i.gz to i64
  %.sroa.4.sroa.3.0.insert.shift.i112 = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i111, 32
  %.sroa.4.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i112, %i.gn
  %i.ha = add i64 %.sroa.23.0488, 1               ; 4 uses
  %.not.i.i116 = icmp ugt i64 %i.ha, %.sroa.34.0489
  br i1 %.not.i.i116, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hb = lshr i64 %i.ha, 1
  %i.hc = icmp ugt i64 %.sroa.34.0489, %i.hb
  %i.hd = icmp ugt i64 %.sroa.34.0489, 576460752303423487
  %i.he = shl nuw nsw i64 %.sroa.34.0489, 1
  %spec.select.i.i119 = select i1 %i.hd, i64 1152921504606846975, i64 %i.he
  %.0.i.i120 = select i1 %i.hc, i64 %spec.select.i.i119, i64 %i.ha ; 3 uses
  %i.hf = shl i64 %.0.i.i120, 4
  %i.hg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hf) #22
          to label %.noexc125 unwind label %.loopexit326 ; 5 uses

.noexc125:                                        ; preds = %bb.q
  %i.hh = shl nuw i64 %.sroa.23.0488, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr align 4 %.sroa.12.0487, i64 %i.hh, i1 false)
  %.not.i.i.i.i.i.i.i121 = icmp eq ptr %.sroa.0265.1486, null
  br i1 %.not.i.i.i.i.i.i.i121, label %bb.r, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122: ; preds = %.noexc125
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1486) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122, %.noexc125
  %.sroa.0265.7 = phi ptr [ %.sroa.0265.1486, %bb.p ], [ %i.hg, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hg, %.noexc125 ]
  %.sroa.12.2 = phi ptr [ %.sroa.12.0487, %bb.p ], [ %i.hg, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hg, %.noexc125 ] ; 2 uses
  %.sroa.34.2 = phi i64 [ %.sroa.34.0489, %bb.p ], [ %.0.i.i120, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %.0.i.i120, %.noexc125 ]
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.2, i64 %.sroa.23.0488 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i109, ptr %i.hi, align 4, !tbaa !73
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i114, ptr %.sroa.5248.0..sroa_idx, align 4
  %i.hj = trunc i64 %.081493 to i32
  %.pre600 = load ptr, ptr %i.h, align 8, !tbaa !60
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.hk = phi ptr [ %i.go, %bb.o ], [ %.pre600, %bb.r ] ; 2 uses
  %.sroa.0265.2 = phi ptr [ %.sroa.0265.1486, %bb.o ], [ %.sroa.0265.7, %bb.r ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0487, %bb.o ], [ %.sroa.12.2, %bb.r ] ; 2 uses
  %.sroa.23.1 = phi i64 [ %.sroa.23.0488, %bb.o ], [ %i.ha, %bb.r ] ; 2 uses
  %.sroa.34.1 = phi i64 [ %.sroa.34.0489, %bb.o ], [ %.sroa.34.2, %bb.r ] ; 2 uses
  %.sroa.0249.2 = phi i32 [ %.sroa.0249.1490, %bb.o ], [ %i.hj, %bb.r ] ; 2 uses
  %.183 = phi double [ %.082491, %bb.o ], [ 0.000000e+00, %bb.r ]
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %.081493
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !55
  %i.ho = fpext float %i.hn to double
  %i.hp = fadd double %.183, %i.ho                ; 2 uses
  %.081 = add nuw nsw i64 %.081493, 1             ; 2 uses
  %exitcond596.not = icmp eq i64 %.081, %i.gf
  br i1 %exitcond596.not, label %._crit_edge495.loopexit, label %bb.o, !llvm.loop !304

._crit_edge495.loopexit:                          ; preds = %bb.s
  %i.hq = fptrunc double %i.hp to float
  br label %._crit_edge495

._crit_edge495:                                   ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge, %._crit_edge495.loopexit
  %.pre-phi606 = phi i64 [ %.pre605, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %i.gn, %._crit_edge495.loopexit ]
  %.sroa.0265.1.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.0265.2, %._crit_edge495.loopexit ] ; 4 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.12.1, %._crit_edge495.loopexit ] ; 2 uses
  %.sroa.23.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.23.1, %._crit_edge495.loopexit ] ; 4 uses
  %.sroa.34.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.34.1, %._crit_edge495.loopexit ] ; 4 uses
  %.sroa.0249.1.lcssa = phi i32 [ %.sroa.0249.0.lcssa, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.0249.2, %._crit_edge495.loopexit ]
  %.082.lcssa = phi float [ %i.gk, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %i.hq, %._crit_edge495.loopexit ]
  %i.hr = zext i32 %.sroa.0249.1.lcssa to i64
  %.sroa.0.sroa.3.0.insert.ext.i = shl nuw i64 %i.gf, 32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i, %i.hr
  %i.hs = bitcast float %.082.lcssa to i32
  %.sroa.4.sroa.3.0.insert.ext.i = zext i32 %i.hs to i64
  %.sroa.4.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i, 32
  %.sroa.4.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i, %.pre-phi606
  %i.ht = add i64 %.sroa.23.0.lcssa, 1            ; 6 uses
  %.not.i.i126 = icmp ugt i64 %i.ht, %.sroa.34.0.lcssa
  br i1 %.not.i.i126, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge495
  %i.hu = lshr i64 %i.ht, 1
  %i.hv = icmp ugt i64 %.sroa.34.0.lcssa, %i.hu
  %i.hw = icmp ugt i64 %.sroa.34.0.lcssa, 576460752303423487
  %i.hx = shl nuw nsw i64 %.sroa.34.0.lcssa, 1
  %spec.select.i.i130 = select i1 %i.hw, i64 1152921504606846975, i64 %i.hx
  %.0.i.i131 = select i1 %i.hv, i64 %spec.select.i.i130, i64 %i.ht
  %i.hy = shl i64 %.0.i.i131, 4
  %i.hz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hy) #22
          to label %.noexc137 unwind label %.loopexit.split-lp327 ; 5 uses

.noexc137:                                        ; preds = %bb.t
  %i.ia = shl i64 %.sroa.23.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hz, ptr align 4 %.sroa.12.0.lcssa, i64 %i.ia, i1 false)
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %.sroa.0265.1.lcssa, null
  br i1 %.not.i.i.i.i.i.i.i132, label %bb.u, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133: ; preds = %.noexc137
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1.lcssa) #20
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge495, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133, %.noexc137
  %.sroa.0265.8 = phi ptr [ %.sroa.0265.1.lcssa, %._crit_edge495 ], [ %i.hz, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.hz, %.noexc137 ] ; 9 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.0.lcssa, %._crit_edge495 ], [ %i.hz, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.hz, %.noexc137 ] ; 4 uses
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.sroa.23.0.lcssa ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ib, align 4, !tbaa !73
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ic = load i32, ptr %i.dx, align 8, !tbaa !50
  %i.id = icmp eq i32 %i.ic, 131072
  br i1 %i.id, label %bb.v, label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit

bb.v:                                             ; preds = %bb.u
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %i.ht
  invoke void @_ZSt13__stable_sortIPN6marisa8grimoire4trie13WeightedRangeEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SB_T0_(ptr noundef nonnull %.sroa.12.3, ptr noundef %i.ie)
          to label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit unwind label %.loopexit.split-lp.loopexit

.loopexit326:                                     ; preds = %bb.q
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp327:                            ; preds = %bb.t
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit: ; preds = %bb.v, %bb.u
  %i.if = icmp eq i64 %i.en, %i.fi
  br i1 %i.if, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  store i64 %i.ht, ptr %i.dy, align 8, !tbaa !112
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  %.not538 = icmp eq i64 %i.ht, 0
  br i1 %.not538, label %._crit_edge517, label %.lr.ph516

.lr.ph516:                                        ; preds = %bb.x
  %i.ig = shl i64 %i.fj, 5
  %i.ih = trunc i64 %i.fj to i32
  %invariant.op = xor i64 %i.ig, %i.fj
  br label %bb.y

._crit_edge517:                                   ; preds = %bb.bv, %bb.x
  %.sroa.0290.1.lcssa = phi ptr [ %.sroa.0290.0523, %bb.x ], [ %.sroa.0290.3, %bb.bv ] ; 2 uses
  %.sroa.10294.1.lcssa = phi ptr [ %.sroa.10294.0524, %bb.x ], [ %.sroa.10294.2, %bb.bv ]
  %.sroa.15296.1.lcssa = phi ptr [ %.sroa.15296.0525, %bb.x ], [ %.sroa.15296.2, %bb.bv ]
  %.sroa.18.1.lcssa = phi i64 [ %.sroa.18.0526, %bb.x ], [ %.sroa.18.2, %bb.bv ]
  %.sroa.24.1.lcssa = phi i64 [ %.sroa.24.0527, %bb.x ], [ %.sroa.24.2, %bb.bv ]
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit

bb.y:                                             ; preds = %.lr.ph516, %bb.bv
  %.080514 = phi i64 [ 0, %.lr.ph516 ], [ %i.th, %bb.bv ] ; 3 uses
  %.sroa.24.1513 = phi i64 [ %.sroa.24.0527, %.lr.ph516 ], [ %.sroa.24.2, %bb.bv ] ; 5 uses
  %.sroa.18.1512 = phi i64 [ %.sroa.18.0526, %.lr.ph516 ], [ %.sroa.18.2, %bb.bv ] ; 4 uses
  %.sroa.15296.1511 = phi ptr [ %.sroa.15296.0525, %.lr.ph516 ], [ %.sroa.15296.2, %bb.bv ] ; 2 uses
  %.sroa.10294.1510 = phi ptr [ %.sroa.10294.0524, %.lr.ph516 ], [ %.sroa.10294.2, %bb.bv ] ; 3 uses
  %.sroa.0290.1508 = phi ptr [ %.sroa.0290.0523, %.lr.ph516 ], [ %.sroa.0290.3, %bb.bv ] ; 10 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.080514 ; 8 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 4 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !188
  %i.il = zext i32 %i.ik to i64                   ; 5 uses
  %i.im = load i32, ptr %i.ii, align 4, !tbaa !189
  %i.in = zext i32 %i.im to i64                   ; 3 uses
  %i.io = load ptr, ptr %i.h, align 8, !tbaa !60  ; 3 uses
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.io, i64 %i.in ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !69
  %i.is = zext i32 %i.ir to i64                   ; 4 uses
  %.079502 = add nuw nsw i64 %i.il, 1             ; 3 uses
  %i.it = icmp samesign ult i64 %.079502, %i.is
  br i1 %i.it, label %.preheader.lr.ph, label %.thread

.preheader.lr.ph:                                 ; preds = %bb.y
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !190
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = add nsw i64 %i.is, -1
  %.0787 = add nuw nsw i64 %i.in, 1               ; 2 uses
  %i.iy = icmp samesign ult i64 %.0787, %i.iw
  br label %.preheader

.loopexit:                                        ; preds = %bb.z, %.preheader
  %.079 = add nuw nsw i64 %.079504, 1             ; 2 uses
  %exitcond597.not = icmp eq i64 %.079, %i.is
  br i1 %exitcond597.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.079504 = phi i64 [ %.079502, %.preheader.lr.ph ], [ %.079, %.loopexit ] ; 5 uses
  %.079.in503 = phi i64 [ %i.il, %.preheader.lr.ph ], [ %.079504, %.loopexit ]
  br i1 %i.iy, label %.lr.ph790, label %.loopexit

bb.z:                                             ; preds = %.lr.ph790
  %.0 = add nuw nsw i64 %.0789, 1                 ; 2 uses
  %i.iz = icmp samesign ult i64 %.0, %i.iw
  br i1 %i.iz, label %.lr.ph790, label %.loopexit, !llvm.loop !305

.lr.ph790:                                        ; preds = %.preheader, %bb.z
  %.0789 = phi i64 [ %.0, %bb.z ], [ %.0787, %.preheader ] ; 3 uses
  %.0.in788 = phi i64 [ %.0789, %bb.z ], [ %i.in, %.preheader ]
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %i.io, i64 %.0.in788
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !68
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.079504
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !55
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.io, i64 %.0789
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !68
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.079504
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !55
  %.not = icmp eq i8 %i.jd, %i.jh
  br i1 %.not, label %bb.z, label %.thread, !llvm.loop !305

.loopexit324:                                     ; preds = %bb.ah, %bb.ap, %bb.bt, %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i
  %.sroa.0290.2.ph = phi ptr [ %.sroa.0290.1508, %bb.ap ], [ %.sroa.0290.1508, %bb.ah ], [ %.sroa.0290.3, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i ], [ %.sroa.0290.3, %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i ], [ %.sroa.0290.3, %bb.bt ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_1
begin_hunk_2_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_3KeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  %i.lp = shl i64 %i.kx, 3
  %i.lq = add i64 %i.lp, 8
  %i.lr = shl i64 %i.ll, 3
  %i.ls = sub i64 %i.lq, %i.lr
  call void @llvm.memset.p0.i64(ptr align 8 %i.lo, i8 0, i64 %i.ls, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i
  store i64 %i.la, ptr %i.eb, align 8, !tbaa !86
  %.pre6.pre.i = load i64, ptr %i.dr, align 8, !tbaa !83
  br label %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit

bb.ai:                                            ; preds = %bb.ae
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kw) #21
  br label %.body

_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit: ; preds = %bb.af, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i
  %.pre6.i = phi i64 [ %.pre6.pre.i, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i ], [ %i.ku, %bb.af ]
  %i.lu = add i64 %.pre6.i, 1
  store i64 %i.lu, ptr %i.dr, align 8, !tbaa !83
  %.pre603 = trunc i64 %.079354 to i32
  br label %bb.av

bb.aj:                                            ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_3KeyEEEvmmfc.exit
  %i.lv = load i64, ptr %i.bg, align 8, !tbaa !85 ; 4 uses
  %i.lw = add i64 %i.lv, 1                        ; 3 uses
  %i.lx = load i64, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
  %.not.i.i162 = icmp ugt i64 %i.lw, %i.lx
  br i1 %.not.i.i162, label %bb.ak, label %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163

._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163: ; preds = %bb.aj
  %.pre.i165 = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ly = lshr i64 %i.lw, 1
  %i.lz = icmp ugt i64 %i.lx, %i.ly
  %i.ma = shl nuw i64 %i.lx, 1
  %.inv.i.i166 = icmp sgt i64 %i.lx, -1
  %spec.select.i.i167 = select i1 %.inv.i.i166, i64 %i.ma, i64 -1
  %.0.i.i168 = select i1 %i.lz, i64 %spec.select.i.i167, i64 %i.lw ; 2 uses
  %i.mb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i168) #22
          to label %.noexc174 unwind label %bb.au ; 5 uses

.noexc174:                                        ; preds = %bb.ak
  %i.mc = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mb, ptr align 1 %i.mc, i64 %i.lv, i1 false)
  %i.md = load ptr, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  store ptr %i.mb, ptr %i.bf, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i169 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i.i.i.i169, label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i170

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i170: ; preds = %.noexc174
  call void @_ZdaPv(ptr noundef nonnull %i.md) #20
  %.pre2.pre.i171 = load i64, ptr %i.bg, align 8, !tbaa !85
  br label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172

_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i170, %.noexc174
  %.pre2.i173 = phi i64 [ %.pre2.pre.i171, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i170 ], [ %i.lv, %.noexc174 ]
  store ptr %i.mb, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  store ptr %i.mb, ptr %i.ea, align 8, !tbaa !136
  store i64 %.0.i.i168, ptr %i.bj, align 8, !tbaa !170
  br label %bb.al

bb.al:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163
  %i.me = phi i64 [ %i.lv, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163 ], [ %.pre2.i173, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172 ]
  %i.mf = phi ptr [ %.pre.i165, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163 ], [ %i.mb, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.me
  store i8 0, ptr %i.mg, align 1, !tbaa !55
  %i.mh = load i64, ptr %i.bg, align 8, !tbaa !85
  %i.mi = add i64 %i.mh, 1
  store i64 %i.mi, ptr %i.bg, align 8, !tbaa !85
  %i.mj = load i64, ptr %i.dr, align 8, !tbaa !83 ; 3 uses
  %i.mk = icmp eq i64 %i.mj, 4294967295
  br i1 %i.mk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ml = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ml, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.aq

.invoke:                                          ; preds = %bb.am, %bb.ae
  %i.mm = phi ptr [ %i.kw, %bb.ae ], [ %i.ml, %bb.am ]
  invoke void @__cxa_throw(ptr nonnull %i.mm, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.mn = load i64, ptr %i.eb, align 8, !tbaa !86 ; 6 uses
  %i.mo = shl i64 %i.mn, 6
  %i.mp = icmp eq i64 %i.mj, %i.mo
  br i1 %i.mp, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.mq = add i64 %i.mn, 1                        ; 5 uses
  %i.mr = load i64, ptr %i.ec, align 8, !tbaa !87 ; 4 uses
  %.not.i.i.i177 = icmp ugt i64 %i.mq, %i.mr
  br i1 %.not.i.i.i177, label %bb.ap, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178

bb.ap:                                            ; preds = %bb.ao
  %i.ms = lshr i64 %i.mq, 1
  %i.mt = icmp ugt i64 %i.mr, %i.ms
  %i.mu = icmp ugt i64 %i.mr, 1152921504606846975
  %i.mv = shl nuw nsw i64 %i.mr, 1
  %spec.select.i.i.i182 = select i1 %i.mu, i64 2305843009213693951, i64 %i.mv
  %.0.i.i.i183 = select i1 %i.mt, i64 %spec.select.i.i.i182, i64 %i.mq ; 2 uses
  %i.mw = shl i64 %.0.i.i.i183, 3
  %i.mx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mw) #22
          to label %.noexc190 unwind label %.loopexit324 ; 4 uses

.noexc190:                                        ; preds = %bb.ap
  %i.my = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.mz = shl i64 %i.mn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mx, ptr align 8 %i.my, i64 %i.mz, i1 false)
  %i.na = load ptr, ptr %i.by, align 8, !tbaa !51 ; 2 uses
  store ptr %i.mx, ptr %i.by, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i184 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i.i.i.i.i.i184, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i185

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i185: ; preds = %.noexc190
  call void @_ZdaPv(ptr noundef nonnull %i.na) #20
  %.pre.pre.i186 = load i64, ptr %i.eb, align 8, !tbaa !86
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i185, %.noexc190
  %.pre.i188 = phi i64 [ %.pre.pre.i186, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i185 ], [ %i.mn, %.noexc190 ]
  store ptr %i.mx, ptr %i.ed, align 8, !tbaa !88
  store ptr %i.mx, ptr %i.ee, align 8, !tbaa !89
  store i64 %.0.i.i.i183, ptr %i.ec, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187, %bb.ao
  %i.nb = phi i64 [ %.pre.i188, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187 ], [ %i.mn, %bb.ao ] ; 3 uses
  %i.nc = icmp ugt i64 %i.mq, %i.nb
  br i1 %i.nc, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i181, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i181: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178
  %i.nd = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nb
  %i.nf = shl i64 %i.mn, 3
  %i.ng = add i64 %i.nf, 8
  %i.nh = shl i64 %i.nb, 3
  %i.ni = sub i64 %i.ng, %i.nh
  call void @llvm.memset.p0.i64(ptr align 8 %i.ne, i8 0, i64 %i.ni, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i181, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178
  store i64 %i.mq, ptr %i.eb, align 8, !tbaa !86
  %.pre6.pre.i180 = load i64, ptr %i.dr, align 8, !tbaa !83
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ml) #21
  br label %.body

bb.ar:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179, %bb.an
  %.pre6.i176 = phi i64 [ %.pre6.pre.i180, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179 ], [ %i.mj, %bb.an ] ; 2 uses
  %i.nk = and i64 %.pre6.i176, 63
  %i.nl = shl nuw i64 1, %i.nk
  %i.nm = lshr i64 %.pre6.i176, 6
  %i.nn = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.nm ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !54
  %i.nq = or i64 %i.np, %i.nl
  store i64 %i.nq, ptr %i.no, align 8, !tbaa !54
  %i.nr = load <2 x i64>, ptr %i.dr, align 8, !tbaa !54
  %i.ns = add <2 x i64> %i.nr, splat (i64 1)
  store <2 x i64> %i.ns, ptr %i.dr, align 8, !tbaa !54
  %i.nt = load i32, ptr %i.ii, align 4, !tbaa !189
  %i.nu = zext i32 %i.nt to i64
  %i.nv = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.nw = getelementptr inbounds nuw [24 x i8], ptr %i.nv, i64 %i.nu
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !68
  %i.ny = load i32, ptr %i.ij, align 4, !tbaa !188 ; 2 uses
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nz
  %i.ob = trunc i64 %.079354 to i32               ; 2 uses
  %i.oc = sub i32 %i.ob, %i.ny
  %i.od = load float, ptr %i.ji, align 4, !tbaa !193
  %i.oe = add i64 %.sroa.18.1512, 1               ; 4 uses
  %.not.i.i194 = icmp ugt i64 %i.oe, %.sroa.24.1513
  br i1 %.not.i.i194, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.of = lshr i64 %i.oe, 1
  %i.og = icmp ugt i64 %.sroa.24.1513, %i.of
  %i.oh = call i64 @llvm.umin.i64(i64 %.sroa.24.1513, i64 384307168202282325)
  %spec.select.i.i197 = shl nuw nsw i64 %i.oh, 1
  %.0.i.i198 = select i1 %i.og, i64 %spec.select.i.i197, i64 %i.oe ; 3 uses
  %i.oi = mul i64 %.0.i.i198, 24
  %i.oj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oi) #22
          to label %.noexc203 unwind label %bb.au ; 7 uses

.noexc203:                                        ; preds = %bb.as
  %i.ok = mul nuw i64 %.sroa.18.1512, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.oj, ptr align 8 %.sroa.10294.1510, i64 %i.ok, i1 false)
  %.not.i.i.i.i.i.i.i199 = icmp eq ptr %.sroa.0290.1508, null
  br i1 %.not.i.i.i.i.i.i.i199, label %bb.at, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200: ; preds = %.noexc203
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0290.1508) #20
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200, %.noexc203
  %.sroa.0290.10 = phi ptr [ %.sroa.0290.1508, %bb.ar ], [ %i.oj, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200 ], [ %i.oj, %.noexc203 ]
  %.sroa.10294.4 = phi ptr [ %.sroa.10294.1510, %bb.ar ], [ %i.oj, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200 ], [ %i.oj, %.noexc203 ] ; 2 uses
  %.sroa.15296.4 = phi ptr [ %.sroa.15296.1511, %bb.ar ], [ %i.oj, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200 ], [ %i.oj, %.noexc203 ]
  %.sroa.24.4 = phi i64 [ %.sroa.24.1513, %bb.ar ], [ %.0.i.i198, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200 ], [ %.0.i.i198, %.noexc203 ]
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10294.4, i64 %.sroa.18.1512 ; 4 uses
  store ptr %i.oa, ptr %i.ol, align 8, !tbaa !51
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store i32 %i.oc, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !73
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  store float %i.od, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !55
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  store i64 0, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.ak, %bb.ac, %bb.as
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit, %bb.at
  %.pre-phi604 = phi i32 [ %.pre603, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %i.ob, %bb.at ]
  %.sroa.0290.3 = phi ptr [ %.sroa.0290.1508, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %.sroa.0290.10, %bb.at ] ; 10 uses
  %.sroa.10294.2 = phi ptr [ %.sroa.10294.1510, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %.sroa.10294.4, %bb.at ] ; 2 uses
  %.sroa.15296.2 = phi ptr [ %.sroa.15296.1511, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %.sroa.15296.4, %bb.at ] ; 2 uses
  %.sroa.18.2 = phi i64 [ %.sroa.18.1512, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %i.oe, %bb.at ] ; 2 uses
  %.sroa.24.2 = phi i64 [ %.sroa.24.1513, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %.sroa.24.4, %bb.at ] ; 2 uses
  store i32 %.pre-phi604, ptr %i.ij, align 4, !tbaa !188
  %i.on = load ptr, ptr %i.ca, align 8, !tbaa !176 ; 3 uses
  %i.oo = load ptr, ptr %i.cc, align 8, !tbaa !177
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 -12
  %.not.i.i204 = icmp eq ptr %i.on, %i.op
  br i1 %.not.i.i204, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.on, ptr noundef nonnull align 4 dereferenceable(12) %i.ii, i64 12, i1 false), !tbaa.struct !178
  %i.oq = load ptr, ptr %i.ca, align 8, !tbaa !176
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 12
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit

bb.ax:                                            ; preds = %bb.av
  %i.os = load ptr, ptr %i.ds, align 8, !tbaa !180 ; 5 uses
  %i.ot = load ptr, ptr %i.dt, align 8, !tbaa !180 ; 8 uses
  %i.ou = ptrtoint ptr %i.os to i64               ; 2 uses
  %i.ov = ptrtoint ptr %i.ot to i64               ; 4 uses
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = ashr exact i64 %i.ow, 3                 ; 3 uses
  %i.oy = icmp ne ptr %i.os, null
  %.neg.i.i.i237 = sext i1 %i.oy to i64
  %i.oz = add nsw i64 %i.ox, %.neg.i.i.i237
  %i.pa = mul nsw i64 %i.oz, 42
  %i.pb = load ptr, ptr %i.du, align 8, !tbaa !181
  %i.pc = ptrtoint ptr %i.on to i64
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = sdiv exact i64 %i.pe, 12
  %i.pg = add nsw i64 %i.pa, %i.pf
  %i.ph = load ptr, ptr %i.dv, align 8, !tbaa !182
  %i.pi = load ptr, ptr %i.do, align 8, !tbaa !179
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = sdiv exact i64 %i.pl, 12
  %i.pn = add nsw i64 %i.pg, %i.pm
  %i.po = icmp eq i64 %i.pn, 768614336404564650
  br i1 %i.po, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #23
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc238:                                        ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.pp = load i64, ptr %i.ef, align 8, !tbaa !194 ; 6 uses
  %i.pq = load ptr, ptr %5, align 8, !tbaa !195   ; 3 uses
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = sub i64 %i.ou, %i.pr
  %i.pt = ashr exact i64 %i.ps, 3
  %i.pu = sub i64 %i.pp, %i.pt
  %i.pv = icmp ult i64 %i.pu, 2
  br i1 %i.pv, label %bb.ba, label %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.pw = add nsw i64 %i.ox, 1                    ; 2 uses
  %i.px = add nsw i64 %i.ox, 2                    ; 3 uses
  %i.py = shl nsw i64 %i.px, 1
  %i.pz = icmp ugt i64 %i.pp, %i.py
  br i1 %i.pz, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  %i.qa = sub i64 %i.pp, %i.px
  %i.qb = lshr i64 %i.qa, 1
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.qb ; 10 uses
  %i.qd = icmp ult ptr %i.qc, %i.ot
  %i.qe = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  br i1 %i.qd, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = sub i64 %i.qf, %i.ov                    ; 3 uses
  %i.qh = icmp sgt i64 %i.qg, 8
  br i1 %i.qh, label %bb.bd, label %bb.be, !prof !196

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qc, ptr nonnull align 8 %i.ot, i64 %i.qg, i1 false)
  br label %.noexc239

bb.be:                                            ; preds = %bb.bc
  %i.qi = icmp eq i64 %i.qg, 8
  br i1 %i.qi, label %bb.bf, label %.noexc239

bb.bf:                                            ; preds = %bb.be
  %i.qj = load ptr, ptr %i.ot, align 8, !tbaa !185
  store ptr %i.qj, ptr %i.qc, align 8, !tbaa !185
  br label %.noexc239

bb.bg:                                            ; preds = %bb.bb
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.pw ; 2 uses
  %i.ql = ptrtoint ptr %i.qe to i64
  %i.qm = sub i64 %i.ql, %i.ov                    ; 3 uses
  %i.qn = ashr exact i64 %i.qm, 3                 ; 2 uses
  %i.qo = icmp sgt i64 %i.qn, 1
  br i1 %i.qo, label %bb.bh, label %bb.bi, !prof !196

bb.bh:                                            ; preds = %bb.bg
  %i.qp = sub nsw i64 0, %i.qn
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.qk, i64 %i.qp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qq, ptr align 8 %i.ot, i64 %i.qm, i1 false)
  br label %.noexc239

bb.bi:                                            ; preds = %bb.bg
  %i.qr = icmp eq i64 %i.qm, 8
  br i1 %i.qr, label %bb.bj, label %.noexc239

bb.bj:                                            ; preds = %bb.bi
  %i.qs = getelementptr inbounds i8, ptr %i.qk, i64 -8
  %i.qt = load ptr, ptr %i.ot, align 8, !tbaa !185
  store ptr %i.qt, ptr %i.qs, align 8, !tbaa !185
  br label %.noexc239

bb.bk:                                            ; preds = %bb.ba
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.pp, i64 1)
  %i.qu = add i64 %i.pp, 2
  %i.qv = add i64 %i.qu, %.sroa.speculated.i      ; 5 uses
  %i.qw = icmp ugt i64 %i.qv, 1152921504606846975
  br i1 %i.qw, label %bb.bl, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i, !prof !197

bb.bl:                                            ; preds = %bb.bk
  %i.qx = icmp ugt i64 %i.qv, 2305843009213693951
  br i1 %i.qx, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %bb.bl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc242:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %bb.bl
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %.noexc3.i.i
  unreachable

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.bk
  %i.qy = shl nuw nsw i64 %i.qv, 3
  %i.qz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qy) #22
          to label %.noexc244 unwind label %.loopexit324 ; 2 uses

.noexc244:                                        ; preds = %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i
  %i.ra = sub nsw i64 %i.qv, %i.px
  %i.rb = lshr i64 %i.ra, 1
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.rb ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = sub i64 %i.re, %i.ov                    ; 3 uses
  %i.rg = icmp sgt i64 %i.rf, 8
  br i1 %i.rg, label %bb.bm, label %bb.bn, !prof !196

bb.bm:                                            ; preds = %.noexc244
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rc, ptr align 8 %i.ot, i64 %i.rf, i1 false)
  br label %_ZSt4copyIPPN6marisa8grimoire4trie5RangeES5_ET0_T_S7_S6_.exit24.i

bb.bn:                                            ; preds = %.noexc244
  %i.rh = icmp eq i64 %i.rf, 8
  br i1 %i.rh, label %bb.bo, label %_ZSt4copyIPPN6marisa8grimoire4trie5RangeES5_ET0_T_S7_S6_.exit24.i

bb.bo:                                            ; preds = %bb.bn
  %i.ri = load ptr, ptr %i.ot, align 8, !tbaa !185
end_hunk_2
begin_hunk_3_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_10ReverseKeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.phi.trans.insert.i164 = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph526, %bb.bv
  %i.el = phi ptr [ %i.dp, %.lr.ph526 ], [ %i.tm, %bb.bv ] ; 6 uses
  %i.em = phi ptr [ %i.dn, %.lr.ph526 ], [ %i.tl, %bb.bv ]
  %.sroa.0265.0525 = phi ptr [ null, %.lr.ph526 ], [ %.sroa.0265.4, %bb.bv ] ; 4 uses
  %.sroa.24.0524 = phi i64 [ 0, %.lr.ph526 ], [ %.sroa.24.3, %bb.bv ] ; 3 uses
  %.sroa.18.0523 = phi i64 [ 0, %.lr.ph526 ], [ %.sroa.18.3, %bb.bv ] ; 3 uses
  %.sroa.15296.0522 = phi ptr [ null, %.lr.ph526 ], [ %.sroa.15296.3, %bb.bv ] ; 3 uses
  %.sroa.10294.0521 = phi ptr [ null, %.lr.ph526 ], [ %.sroa.10294.3, %bb.bv ] ; 3 uses
  %.sroa.0290.0520 = phi ptr [ null, %.lr.ph526 ], [ %.sroa.0290.4, %bb.bv ] ; 7 uses
  %i.en = load i64, ptr %i.dr, align 8, !tbaa !83 ; 2 uses
  %i.eo = load ptr, ptr %i.ds, align 8, !tbaa !180 ; 2 uses
  %i.ep = load ptr, ptr %i.dt, align 8, !tbaa !180
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %i.eu = icmp ne ptr %i.eo, null
  %.neg.i.i.i = sext i1 %i.eu to i64
  %i.ev = add nsw i64 %i.et, %.neg.i.i.i
  %i.ew = mul nsw i64 %i.ev, 42
  %i.ex = load ptr, ptr %i.du, align 8, !tbaa !181
  %i.ey = ptrtoint ptr %i.em to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 12
  %i.fc = add nsw i64 %i.ew, %i.fb
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !182 ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.el to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 12
  %i.fi = add nsw i64 %i.fc, %i.fh                ; 2 uses
  %i.fj = sub i64 %i.en, %i.fi                    ; 2 uses
  %.sroa.0249.0.copyload = load i32, ptr %i.el, align 4, !tbaa !73 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !73 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !73 ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fd, i64 -12
  %.not.i.i103 = icmp eq ptr %i.el, %i.fk
  br i1 %.not.i.i103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit

bb.j:                                             ; preds = %bb.h
  %i.fm = load ptr, ptr %i.dw, align 8, !tbaa !183
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef 504) #20
  %i.fn = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  store ptr %i.fo, ptr %i.dt, align 8, !tbaa !180
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !185 ; 3 uses
  store ptr %i.fp, ptr %i.dw, align 8, !tbaa !181
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 504
  store ptr %i.fq, ptr %i.dv, align 8, !tbaa !182
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit: ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi ptr [ %i.fl, %bb.i ], [ %i.fp, %bb.j ]
  store ptr %storemerge.i.i, ptr %i.do, align 8, !tbaa !186
  %i.fr = zext i32 %.sroa.0249.0.copyload to i64  ; 2 uses
  %i.fs = icmp ult i32 %.sroa.0249.0.copyload, %.sroa.15.0.copyload
  br i1 %i.fs, label %.lr.ph477, label %.critedge

.lr.ph477:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %i.ft = trunc i64 %i.fj to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph477, %bb.l
  %i.fu = phi i64 [ %i.fr, %.lr.ph477 ], [ %i.gc, %bb.l ] ; 2 uses
  %.sroa.0249.0476 = phi i32 [ %.sroa.0249.0.copyload, %.lr.ph477 ], [ %i.gb, %bb.l ] ; 2 uses
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !164
  %i.fz = icmp eq i32 %i.fy, %.sroa.19.0.copyload
  br i1 %i.fz, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !55
  %i.gb = add i32 %.sroa.0249.0476, 1             ; 3 uses
  %i.gc = zext i32 %i.gb to i64
  %exitcond592.not = icmp eq i32 %i.gb, %.sroa.15.0.copyload
  br i1 %exitcond592.not, label %.critedge.thread, label %bb.k, !llvm.loop !346

.thread317:                                       ; preds = %bb.g
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit236

.critedge:                                        ; preds = %bb.k, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.sroa.0249.0.lcssa = phi i32 [ %.sroa.0249.0.copyload, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %.sroa.0249.0476, %bb.k ] ; 3 uses
  %.lcssa335 = phi i64 [ %i.fr, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %i.fu, %bb.k ] ; 3 uses
  %i.ge = zext i32 %.sroa.15.0.copyload to i64    ; 3 uses
  %i.gf = icmp eq i32 %.sroa.0249.0.lcssa, %.sroa.15.0.copyload
  br i1 %i.gf, label %.critedge.thread, label %bb.m

.critedge.thread:                                 ; preds = %bb.l, %.critedge
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit, !llvm.loop !347

bb.m:                                             ; preds = %.critedge
  %.not.i.i.i104 = icmp eq ptr %.sroa.0265.0525, null
  br i1 %.not.i.i.i104, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.0525) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.gg = load ptr, ptr %i.h, align 8, !tbaa !160 ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %.lcssa335
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !55 ; 2 uses
  %.081483 = add nuw nsw i64 %.lcssa335, 1        ; 2 uses
  %i.gk = icmp samesign ult i64 %.081483, %i.ge
  br i1 %i.gk, label %.lr.ph492, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %.pre602 = zext i32 %.sroa.19.0.copyload to i64
  br label %._crit_edge493

.lr.ph492:                                        ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %i.gl = fpext float %i.gj to double
  %i.gm = zext i32 %.sroa.19.0.copyload to i64    ; 3 uses
  %i.gn = sub nsw i64 0, %i.gm                    ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph492, %bb.r
  %i.go = phi ptr [ %i.gg, %.lr.ph492 ], [ %i.hm, %bb.r ] ; 3 uses
  %.081491 = phi i64 [ %.081483, %.lr.ph492 ], [ %.081, %bb.r ] ; 6 uses
  %.081.in490 = phi i64 [ %.lcssa335, %.lr.ph492 ], [ %.081491, %bb.r ]
  %.082489 = phi double [ %i.gl, %.lr.ph492 ], [ %i.hr, %bb.r ] ; 2 uses
  %.sroa.0249.1488 = phi i32 [ %.sroa.0249.0.lcssa, %.lr.ph492 ], [ %.sroa.0249.2, %bb.r ] ; 2 uses
  %.sroa.34.0487 = phi i64 [ 0, %.lr.ph492 ], [ %.sroa.34.1, %bb.r ] ; 6 uses
  %.sroa.23.0486 = phi i64 [ 0, %.lr.ph492 ], [ %.sroa.23.1, %bb.r ] ; 4 uses
  %.sroa.12.0485 = phi ptr [ null, %.lr.ph492 ], [ %.sroa.12.1, %bb.r ] ; 3 uses
  %.sroa.0265.1484 = phi ptr [ null, %.lr.ph492 ], [ %.sroa.0265.2, %bb.r ] ; 5 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %.081.in490
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !163
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gn
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !55
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %.081491
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !163
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.gn
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !55
  %.not95 = icmp eq i8 %i.gt, %i.gy
  br i1 %.not95, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gz = zext i32 %.sroa.0249.1488 to i64
  %i.ha = fptrunc double %.082489 to float
  %.sroa.0.sroa.3.0.insert.ext.i107 = shl i64 %.081491, 32
  %.sroa.0.sroa.0.0.insert.insert.i109 = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i107, %i.gz
  %i.hb = bitcast float %i.ha to i32
  %.sroa.4.sroa.3.0.insert.ext.i111 = zext i32 %i.hb to i64
  %.sroa.4.sroa.3.0.insert.shift.i112 = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i111, 32
  %.sroa.4.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i112, %i.gm
  %i.hc = add i64 %.sroa.23.0486, 1               ; 4 uses
  %.not.i.i116 = icmp ugt i64 %i.hc, %.sroa.34.0487
  br i1 %.not.i.i116, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hd = lshr i64 %i.hc, 1
  %i.he = icmp ugt i64 %.sroa.34.0487, %i.hd
  %i.hf = icmp ugt i64 %.sroa.34.0487, 576460752303423487
  %i.hg = shl nuw nsw i64 %.sroa.34.0487, 1
  %spec.select.i.i119 = select i1 %i.hf, i64 1152921504606846975, i64 %i.hg
  %.0.i.i120 = select i1 %i.he, i64 %spec.select.i.i119, i64 %i.hc ; 3 uses
  %i.hh = shl i64 %.0.i.i120, 4
  %i.hi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hh) #22
          to label %.noexc125 unwind label %.loopexit326 ; 5 uses

.noexc125:                                        ; preds = %bb.p
  %i.hj = shl nuw i64 %.sroa.23.0486, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr align 4 %.sroa.12.0485, i64 %i.hj, i1 false)
  %.not.i.i.i.i.i.i.i121 = icmp eq ptr %.sroa.0265.1484, null
  br i1 %.not.i.i.i.i.i.i.i121, label %bb.q, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122: ; preds = %.noexc125
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1484) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122, %.noexc125
  %.sroa.0265.7 = phi ptr [ %.sroa.0265.1484, %bb.o ], [ %i.hi, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hi, %.noexc125 ]
  %.sroa.12.2 = phi ptr [ %.sroa.12.0485, %bb.o ], [ %i.hi, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hi, %.noexc125 ] ; 2 uses
  %.sroa.34.2 = phi i64 [ %.sroa.34.0487, %bb.o ], [ %.0.i.i120, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %.0.i.i120, %.noexc125 ]
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.2, i64 %.sroa.23.0486 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i109, ptr %i.hk, align 4, !tbaa !73
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i114, ptr %.sroa.5248.0..sroa_idx, align 4
  %i.hl = trunc i64 %.081491 to i32
  %.pre597 = load ptr, ptr %i.h, align 8, !tbaa !160
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.hm = phi ptr [ %i.go, %bb.n ], [ %.pre597, %bb.q ] ; 2 uses
  %.sroa.0265.2 = phi ptr [ %.sroa.0265.1484, %bb.n ], [ %.sroa.0265.7, %bb.q ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0485, %bb.n ], [ %.sroa.12.2, %bb.q ] ; 2 uses
  %.sroa.23.1 = phi i64 [ %.sroa.23.0486, %bb.n ], [ %i.hc, %bb.q ] ; 2 uses
  %.sroa.34.1 = phi i64 [ %.sroa.34.0487, %bb.n ], [ %.sroa.34.2, %bb.q ] ; 2 uses
  %.sroa.0249.2 = phi i32 [ %.sroa.0249.1488, %bb.n ], [ %i.hl, %bb.q ] ; 2 uses
  %.183 = phi double [ %.082489, %bb.n ], [ 0.000000e+00, %bb.q ]
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.hm, i64 %.081491
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !55
  %i.hq = fpext float %i.hp to double
  %i.hr = fadd double %.183, %i.hq                ; 2 uses
  %.081 = add nuw nsw i64 %.081491, 1             ; 2 uses
  %exitcond593.not = icmp eq i64 %.081, %i.ge
  br i1 %exitcond593.not, label %._crit_edge493.loopexit, label %bb.n, !llvm.loop !348

._crit_edge493.loopexit:                          ; preds = %bb.r
  %i.hs = fptrunc double %i.hr to float
  br label %._crit_edge493

._crit_edge493:                                   ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge, %._crit_edge493.loopexit
  %.pre-phi603 = phi i64 [ %.pre602, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %i.gm, %._crit_edge493.loopexit ]
  %.sroa.0265.1.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.0265.2, %._crit_edge493.loopexit ] ; 4 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.12.1, %._crit_edge493.loopexit ] ; 2 uses
  %.sroa.23.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.23.1, %._crit_edge493.loopexit ] ; 4 uses
  %.sroa.34.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.34.1, %._crit_edge493.loopexit ] ; 4 uses
  %.sroa.0249.1.lcssa = phi i32 [ %.sroa.0249.0.lcssa, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.0249.2, %._crit_edge493.loopexit ]
  %.082.lcssa = phi float [ %i.gj, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %i.hs, %._crit_edge493.loopexit ]
  %i.ht = zext i32 %.sroa.0249.1.lcssa to i64
  %.sroa.0.sroa.3.0.insert.ext.i = shl nuw i64 %i.ge, 32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i, %i.ht
  %i.hu = bitcast float %.082.lcssa to i32
  %.sroa.4.sroa.3.0.insert.ext.i = zext i32 %i.hu to i64
  %.sroa.4.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i, 32
  %.sroa.4.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i, %.pre-phi603
  %i.hv = add i64 %.sroa.23.0.lcssa, 1            ; 6 uses
  %.not.i.i126 = icmp ugt i64 %i.hv, %.sroa.34.0.lcssa
  br i1 %.not.i.i126, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge493
  %i.hw = lshr i64 %i.hv, 1
  %i.hx = icmp ugt i64 %.sroa.34.0.lcssa, %i.hw
  %i.hy = icmp ugt i64 %.sroa.34.0.lcssa, 576460752303423487
  %i.hz = shl nuw nsw i64 %.sroa.34.0.lcssa, 1
  %spec.select.i.i130 = select i1 %i.hy, i64 1152921504606846975, i64 %i.hz
  %.0.i.i131 = select i1 %i.hx, i64 %spec.select.i.i130, i64 %i.hv
  %i.ia = shl i64 %.0.i.i131, 4
  %i.ib = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ia) #22
          to label %.noexc137 unwind label %.loopexit.split-lp327 ; 5 uses

.noexc137:                                        ; preds = %bb.s
  %i.ic = shl i64 %.sroa.23.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ib, ptr align 4 %.sroa.12.0.lcssa, i64 %i.ic, i1 false)
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %.sroa.0265.1.lcssa, null
  br i1 %.not.i.i.i.i.i.i.i132, label %bb.t, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133: ; preds = %.noexc137
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1.lcssa) #20
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge493, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133, %.noexc137
  %.sroa.0265.8 = phi ptr [ %.sroa.0265.1.lcssa, %._crit_edge493 ], [ %i.ib, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.ib, %.noexc137 ] ; 9 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.0.lcssa, %._crit_edge493 ], [ %i.ib, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.ib, %.noexc137 ] ; 4 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.sroa.23.0.lcssa ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.id, align 4, !tbaa !73
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ie = load i32, ptr %i.dx, align 8, !tbaa !50
  %i.if = icmp eq i32 %i.ie, 131072
  br i1 %i.if, label %bb.u, label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit

bb.u:                                             ; preds = %bb.t
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %i.hv
  invoke void @_ZSt13__stable_sortIPN6marisa8grimoire4trie13WeightedRangeEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SB_T0_(ptr noundef nonnull %.sroa.12.3, ptr noundef %i.ig)
          to label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit unwind label %.loopexit.split-lp.loopexit

.loopexit326:                                     ; preds = %bb.p
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp327:                            ; preds = %bb.s
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit: ; preds = %bb.u, %bb.t
  %i.ih = icmp eq i64 %i.en, %i.fi
  br i1 %i.ih, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  store i64 %i.hv, ptr %i.dy, align 8, !tbaa !112
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  %.not535 = icmp eq i64 %i.hv, 0
  br i1 %.not535, label %._crit_edge514, label %.lr.ph513

.lr.ph513:                                        ; preds = %bb.w
  %i.ii = trunc i64 %i.fj to i32
  br label %bb.x

._crit_edge514:                                   ; preds = %bb.bu, %bb.w
  %.sroa.0290.1.lcssa = phi ptr [ %.sroa.0290.0520, %bb.w ], [ %.sroa.0290.3, %bb.bu ] ; 2 uses
  %.sroa.10294.1.lcssa = phi ptr [ %.sroa.10294.0521, %bb.w ], [ %.sroa.10294.2, %bb.bu ]
  %.sroa.15296.1.lcssa = phi ptr [ %.sroa.15296.0522, %bb.w ], [ %.sroa.15296.2, %bb.bu ]
  %.sroa.18.1.lcssa = phi i64 [ %.sroa.18.0523, %bb.w ], [ %.sroa.18.2, %bb.bu ]
  %.sroa.24.1.lcssa = phi i64 [ %.sroa.24.0524, %bb.w ], [ %.sroa.24.2, %bb.bu ]
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit

bb.x:                                             ; preds = %.lr.ph513, %bb.bu
  %.080511 = phi i64 [ 0, %.lr.ph513 ], [ %i.tk, %bb.bu ] ; 3 uses
  %.sroa.24.1510 = phi i64 [ %.sroa.24.0524, %.lr.ph513 ], [ %.sroa.24.2, %bb.bu ] ; 5 uses
  %.sroa.18.1509 = phi i64 [ %.sroa.18.0523, %.lr.ph513 ], [ %.sroa.18.2, %bb.bu ] ; 4 uses
  %.sroa.15296.1508 = phi ptr [ %.sroa.15296.0522, %.lr.ph513 ], [ %.sroa.15296.2, %bb.bu ] ; 2 uses
  %.sroa.10294.1507 = phi ptr [ %.sroa.10294.0521, %.lr.ph513 ], [ %.sroa.10294.2, %bb.bu ] ; 3 uses
  %.sroa.0290.1505 = phi ptr [ %.sroa.0290.0520, %.lr.ph513 ], [ %.sroa.0290.3, %bb.bu ] ; 10 uses
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.080511 ; 8 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 4 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !188
  %i.im = zext i32 %i.il to i64                   ; 4 uses
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !189
  %i.io = zext i32 %i.in to i64                   ; 3 uses
  %i.ip = load ptr, ptr %i.h, align 8, !tbaa !160 ; 3 uses
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.io
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !164
  %i.it = zext i32 %i.is to i64                   ; 4 uses
  %.079500 = add nuw nsw i64 %i.im, 1             ; 3 uses
  %i.iu = icmp samesign ult i64 %.079500, %i.it
  br i1 %i.iu, label %.preheader.lr.ph, label %.thread

.preheader.lr.ph:                                 ; preds = %bb.x
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !190
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = add nsw i64 %i.it, -1
  %.0784 = add nuw nsw i64 %i.io, 1               ; 2 uses
  %i.iz = icmp samesign ult i64 %.0784, %i.ix
  br label %.preheader

.loopexit:                                        ; preds = %bb.y, %.preheader
  %.079 = add nuw nsw i64 %.079502, 1             ; 2 uses
  %exitcond594.not = icmp eq i64 %.079, %i.it
  br i1 %exitcond594.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.079502 = phi i64 [ %.079500, %.preheader.lr.ph ], [ %.079, %.loopexit ] ; 3 uses
  %.079.in501 = phi i64 [ %i.im, %.preheader.lr.ph ], [ %.079502, %.loopexit ] ; 2 uses
  %i.ja = xor i64 %.079.in501, -1                 ; 2 uses
  br i1 %i.iz, label %.lr.ph787, label %.loopexit

bb.y:                                             ; preds = %.lr.ph787
  %.0 = add nuw nsw i64 %.0786, 1                 ; 2 uses
  %i.jb = icmp samesign ult i64 %.0, %i.ix
  br i1 %i.jb, label %.lr.ph787, label %.loopexit, !llvm.loop !349

.lr.ph787:                                        ; preds = %.preheader, %bb.y
  %.0786 = phi i64 [ %.0, %bb.y ], [ %.0784, %.preheader ] ; 3 uses
  %.0.in785 = phi i64 [ %.0786, %bb.y ], [ %i.io, %.preheader ]
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %.0.in785
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !163
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %i.ja
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !55
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %.0786
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !163
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 %i.ja
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !55
  %.not = icmp eq i8 %i.jg, %i.jl
  br i1 %.not, label %bb.y, label %.thread, !llvm.loop !349

.thread:                                          ; preds = %.loopexit, %.lr.ph787, %bb.x
  %.079.in354 = phi i64 [ %.079.in501, %.lr.ph787 ], [ %i.im, %bb.x ], [ %i.iy, %.loopexit ] ; 2 uses
  %.079352 = phi i64 [ %.079502, %.lr.ph787 ], [ %.079500, %bb.x ], [ %i.it, %.loopexit ] ; 2 uses
  %i.jm = load i64, ptr %i.bg, align 8, !tbaa !85 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ij, i64 12 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_10ReverseKeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  %i.lw = add i64 %.pre6.i, 1
  store i64 %i.lw, ptr %i.dr, align 8, !tbaa !83
  %.pre600 = trunc i64 %.079352 to i32
  br label %bb.au

.loopexit324:                                     ; preds = %bb.ag, %bb.ao, %bb.bs, %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i
  %.sroa.0290.2.ph = phi ptr [ %.sroa.0290.1505, %bb.ao ], [ %.sroa.0290.1505, %bb.ag ], [ %.sroa.0290.3, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i ], [ %.sroa.0290.3, %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i ], [ %.sroa.0290.3, %bb.bs ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.u, %._crit_edge514, %.critedge.thread
  %.sroa.0290.2.ph325.ph = phi ptr [ %.sroa.0290.0520, %.critedge.thread ], [ %.sroa.0290.1.lcssa, %._crit_edge514 ], [ %.sroa.0290.0520, %bb.u ]
  %.sroa.0265.3.ph.ph = phi ptr [ %.sroa.0265.0525, %.critedge.thread ], [ %.sroa.0265.8, %._crit_edge514 ], [ %.sroa.0265.8, %bb.u ]
  %lpad.loopexit332 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %.noexc3.i.i, %.noexc.i.i, %bb.ax, %bb.bp
  %.sroa.0290.2.ph325.ph331 = phi ptr [ %.sroa.0290.3, %bb.bp ], [ %.sroa.0290.3, %bb.ax ], [ %.sroa.0290.1505, %.invoke ], [ %.sroa.0290.3, %.noexc.i.i ], [ %.sroa.0290.3, %.noexc3.i.i ]
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_10ReverseKeyEEEvmmfc.exit
  %i.lx = load i64, ptr %i.bg, align 8, !tbaa !85 ; 4 uses
  %i.ly = add i64 %i.lx, 1                        ; 3 uses
  %i.lz = load i64, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
  %.not.i.i162 = icmp ugt i64 %i.ly, %i.lz
  br i1 %.not.i.i162, label %bb.aj, label %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163

._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163: ; preds = %bb.ai
  %.pre.i165 = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ma = lshr i64 %i.ly, 1
  %i.mb = icmp ugt i64 %i.lz, %i.ma
  %i.mc = shl nuw i64 %i.lz, 1
  %.inv.i.i166 = icmp sgt i64 %i.lz, -1
  %spec.select.i.i167 = select i1 %.inv.i.i166, i64 %i.mc, i64 -1
  %.0.i.i168 = select i1 %i.mb, i64 %spec.select.i.i167, i64 %i.ly ; 2 uses
  %i.md = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i168) #22
          to label %.noexc174 unwind label %bb.at ; 5 uses

.noexc174:                                        ; preds = %bb.aj
  %i.me = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.md, ptr align 1 %i.me, i64 %i.lx, i1 false)
  %i.mf = load ptr, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  store ptr %i.md, ptr %i.bf, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i169 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i169, label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i170

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i170: ; preds = %.noexc174
  call void @_ZdaPv(ptr noundef nonnull %i.mf) #20
  %.pre2.pre.i171 = load i64, ptr %i.bg, align 8, !tbaa !85
  br label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172

_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i170, %.noexc174
  %.pre2.i173 = phi i64 [ %.pre2.pre.i171, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i170 ], [ %i.lx, %.noexc174 ]
  store ptr %i.md, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  store ptr %i.md, ptr %i.ea, align 8, !tbaa !136
  store i64 %.0.i.i168, ptr %i.bj, align 8, !tbaa !170
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163
  %i.mg = phi i64 [ %i.lx, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163 ], [ %.pre2.i173, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172 ]
  %i.mh = phi ptr [ %.pre.i165, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163 ], [ %i.md, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i172 ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mg
  store i8 0, ptr %i.mi, align 1, !tbaa !55
  %i.mj = load i64, ptr %i.bg, align 8, !tbaa !85
  %i.mk = add i64 %i.mj, 1
  store i64 %i.mk, ptr %i.bg, align 8, !tbaa !85
  %i.ml = load i64, ptr %i.dr, align 8, !tbaa !83 ; 3 uses
  %i.mm = icmp eq i64 %i.ml, 4294967295
  br i1 %i.mm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mn = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.ap

.invoke:                                          ; preds = %bb.ad, %bb.al
  %i.mo = phi ptr [ %i.mn, %bb.al ], [ %i.ky, %bb.ad ]
  invoke void @__cxa_throw(ptr nonnull %i.mo, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.mp = load i64, ptr %i.eb, align 8, !tbaa !86 ; 6 uses
  %i.mq = shl i64 %i.mp, 6
  %i.mr = icmp eq i64 %i.ml, %i.mq
  br i1 %i.mr, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ms = add i64 %i.mp, 1                        ; 5 uses
  %i.mt = load i64, ptr %i.ec, align 8, !tbaa !87 ; 4 uses
  %.not.i.i.i177 = icmp ugt i64 %i.ms, %i.mt
  br i1 %.not.i.i.i177, label %bb.ao, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178

bb.ao:                                            ; preds = %bb.an
  %i.mu = lshr i64 %i.ms, 1
  %i.mv = icmp ugt i64 %i.mt, %i.mu
  %i.mw = icmp ugt i64 %i.mt, 1152921504606846975
  %i.mx = shl nuw nsw i64 %i.mt, 1
  %spec.select.i.i.i182 = select i1 %i.mw, i64 2305843009213693951, i64 %i.mx
  %.0.i.i.i183 = select i1 %i.mv, i64 %spec.select.i.i.i182, i64 %i.ms ; 2 uses
  %i.my = shl i64 %.0.i.i.i183, 3
  %i.mz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.my) #22
          to label %.noexc190 unwind label %.loopexit324 ; 4 uses

.noexc190:                                        ; preds = %bb.ao
  %i.na = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.nb = shl i64 %i.mp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mz, ptr align 8 %i.na, i64 %i.nb, i1 false)
  %i.nc = load ptr, ptr %i.by, align 8, !tbaa !51 ; 2 uses
  store ptr %i.mz, ptr %i.by, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i184 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i.i.i.i.i184, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i185

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i185: ; preds = %.noexc190
  call void @_ZdaPv(ptr noundef nonnull %i.nc) #20
  %.pre.pre.i186 = load i64, ptr %i.eb, align 8, !tbaa !86
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i185, %.noexc190
  %.pre.i188 = phi i64 [ %.pre.pre.i186, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i185 ], [ %i.mp, %.noexc190 ]
  store ptr %i.mz, ptr %i.ed, align 8, !tbaa !88
  store ptr %i.mz, ptr %i.ee, align 8, !tbaa !89
  store i64 %.0.i.i.i183, ptr %i.ec, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187, %bb.an
  %i.nd = phi i64 [ %.pre.i188, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i187 ], [ %i.mp, %bb.an ] ; 3 uses
  %i.ne = icmp ugt i64 %i.ms, %i.nd
  br i1 %i.ne, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i181, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i181: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178
  %i.nf = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.nd
  %i.nh = shl i64 %i.mp, 3
  %i.ni = add i64 %i.nh, 8
  %i.nj = shl i64 %i.nd, 3
  %i.nk = sub i64 %i.ni, %i.nj
  call void @llvm.memset.p0.i64(ptr align 8 %i.ng, i8 0, i64 %i.nk, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i181, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i178
  store i64 %i.ms, ptr %i.eb, align 8, !tbaa !86
  %.pre6.pre.i180 = load i64, ptr %i.dr, align 8, !tbaa !83
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mn) #21
  br label %.body

bb.aq:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179, %bb.am
  %.pre6.i176 = phi i64 [ %.pre6.pre.i180, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i179 ], [ %i.ml, %bb.am ] ; 2 uses
  %i.nm = and i64 %.pre6.i176, 63
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = lshr i64 %.pre6.i176, 6
  %i.np = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.no ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !54
  %i.ns = or i64 %i.nr, %i.nn
  store i64 %i.ns, ptr %i.nq, align 8, !tbaa !54
  %i.nt = load <2 x i64>, ptr %i.dr, align 8, !tbaa !54
  %i.nu = add <2 x i64> %i.nt, splat (i64 1)
  store <2 x i64> %i.nu, ptr %i.dr, align 8, !tbaa !54
  %i.nv = load i32, ptr %i.ij, align 4, !tbaa !189
  %i.nw = zext i32 %i.nv to i64
  %i.nx = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.ny = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.nw
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !163
  %i.oa = load i32, ptr %i.ik, align 4, !tbaa !188 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = sub nsw i64 0, %i.ob
  %i.od = getelementptr inbounds i8, ptr %i.nz, i64 %i.oc
  %i.oe = trunc i64 %.079352 to i32               ; 2 uses
  %i.of = sub i32 %i.oe, %i.oa
  %i.og = load float, ptr %i.jn, align 4, !tbaa !193
  %i.oh = add i64 %.sroa.18.1509, 1               ; 4 uses
  %.not.i.i194 = icmp ugt i64 %i.oh, %.sroa.24.1510
  br i1 %.not.i.i194, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.oi = lshr i64 %i.oh, 1
  %i.oj = icmp ugt i64 %.sroa.24.1510, %i.oi
  %i.ok = call i64 @llvm.umin.i64(i64 %.sroa.24.1510, i64 384307168202282325)
  %spec.select.i.i197 = shl nuw nsw i64 %i.ok, 1
  %.0.i.i198 = select i1 %i.oj, i64 %spec.select.i.i197, i64 %i.oh ; 3 uses
  %i.ol = mul i64 %.0.i.i198, 24
  %i.om = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ol) #22
          to label %.noexc203 unwind label %bb.at ; 7 uses

.noexc203:                                        ; preds = %bb.ar
  %i.on = mul nuw i64 %.sroa.18.1509, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.om, ptr align 8 %.sroa.10294.1507, i64 %i.on, i1 false)
  %.not.i.i.i.i.i.i.i199 = icmp eq ptr %.sroa.0290.1505, null
  br i1 %.not.i.i.i.i.i.i.i199, label %bb.as, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200: ; preds = %.noexc203
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0290.1505) #20
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200, %.noexc203
  %.sroa.0290.10 = phi ptr [ %.sroa.0290.1505, %bb.aq ], [ %i.om, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200 ], [ %i.om, %.noexc203 ]
  %.sroa.10294.4 = phi ptr [ %.sroa.10294.1507, %bb.aq ], [ %i.om, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200 ], [ %i.om, %.noexc203 ] ; 2 uses
  %.sroa.15296.4 = phi ptr [ %.sroa.15296.1508, %bb.aq ], [ %i.om, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200 ], [ %i.om, %.noexc203 ]
  %.sroa.24.4 = phi i64 [ %.sroa.24.1510, %bb.aq ], [ %.0.i.i198, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i200 ], [ %.0.i.i198, %.noexc203 ]
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10294.4, i64 %.sroa.18.1509 ; 4 uses
  store ptr %i.od, ptr %i.oo, align 8, !tbaa !51
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i32 %i.of, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !73
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  store float %i.og, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !55
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store i64 0, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.aj, %bb.ab, %bb.ar
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit, %bb.as
  %.pre-phi601 = phi i32 [ %.pre600, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %i.oe, %bb.as ]
  %.sroa.0290.3 = phi ptr [ %.sroa.0290.1505, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %.sroa.0290.10, %bb.as ] ; 10 uses
  %.sroa.10294.2 = phi ptr [ %.sroa.10294.1507, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %.sroa.10294.4, %bb.as ] ; 2 uses
  %.sroa.15296.2 = phi ptr [ %.sroa.15296.1508, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %.sroa.15296.4, %bb.as ] ; 2 uses
  %.sroa.18.2 = phi i64 [ %.sroa.18.1509, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %i.oh, %bb.as ] ; 2 uses
  %.sroa.24.2 = phi i64 [ %.sroa.24.1510, %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit ], [ %.sroa.24.4, %bb.as ] ; 2 uses
  store i32 %.pre-phi601, ptr %i.ik, align 4, !tbaa !188
  %i.oq = load ptr, ptr %i.ca, align 8, !tbaa !176 ; 3 uses
  %i.or = load ptr, ptr %i.cc, align 8, !tbaa !177
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -12
  %.not.i.i204 = icmp eq ptr %i.oq, %i.os
  br i1 %.not.i.i204, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.oq, ptr noundef nonnull align 4 dereferenceable(12) %i.ij, i64 12, i1 false), !tbaa.struct !178
  %i.ot = load ptr, ptr %i.ca, align 8, !tbaa !176
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit

bb.aw:                                            ; preds = %bb.au
  %i.ov = load ptr, ptr %i.ds, align 8, !tbaa !180 ; 5 uses
  %i.ow = load ptr, ptr %i.dt, align 8, !tbaa !180 ; 8 uses
  %i.ox = ptrtoint ptr %i.ov to i64               ; 2 uses
  %i.oy = ptrtoint ptr %i.ow to i64               ; 4 uses
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = ashr exact i64 %i.oz, 3                 ; 3 uses
  %i.pb = icmp ne ptr %i.ov, null
  %.neg.i.i.i237 = sext i1 %i.pb to i64
  %i.pc = add nsw i64 %i.pa, %.neg.i.i.i237
  %i.pd = mul nsw i64 %i.pc, 42
  %i.pe = load ptr, ptr %i.du, align 8, !tbaa !181
  %i.pf = ptrtoint ptr %i.oq to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = sdiv exact i64 %i.ph, 12
  %i.pj = add nsw i64 %i.pd, %i.pi
  %i.pk = load ptr, ptr %i.dv, align 8, !tbaa !182
  %i.pl = load ptr, ptr %i.do, align 8, !tbaa !179
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = sdiv exact i64 %i.po, 12
  %i.pq = add nsw i64 %i.pj, %i.pp
  %i.pr = icmp eq i64 %i.pq, 768614336404564650
  br i1 %i.pr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #23
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc238:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ps = load i64, ptr %i.ef, align 8, !tbaa !194 ; 6 uses
  %i.pt = load ptr, ptr %5, align 8, !tbaa !195   ; 3 uses
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = sub i64 %i.ox, %i.pu
  %i.pw = ashr exact i64 %i.pv, 3
  %i.px = sub i64 %i.ps, %i.pw
  %i.py = icmp ult i64 %i.px, 2
  br i1 %i.py, label %bb.az, label %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.pz = add nsw i64 %i.pa, 1                    ; 2 uses
  %i.qa = add nsw i64 %i.pa, 2                    ; 3 uses
  %i.qb = shl nsw i64 %i.qa, 1
  %i.qc = icmp ugt i64 %i.ps, %i.qb
  br i1 %i.qc, label %bb.ba, label %bb.bj

bb.ba:                                            ; preds = %bb.az
  %i.qd = sub i64 %i.ps, %i.qa
  %i.qe = lshr i64 %i.qd, 1
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.qe ; 10 uses
  %i.qg = icmp ult ptr %i.qf, %i.ow
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 2 uses
  br i1 %i.qg, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.qi = ptrtoint ptr %i.qh to i64
  %i.qj = sub i64 %i.qi, %i.oy                    ; 3 uses
  %i.qk = icmp sgt i64 %i.qj, 8
  br i1 %i.qk, label %bb.bc, label %bb.bd, !prof !196

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qf, ptr nonnull align 8 %i.ow, i64 %i.qj, i1 false)
  br label %.noexc239

bb.bd:                                            ; preds = %bb.bb
  %i.ql = icmp eq i64 %i.qj, 8
  br i1 %i.ql, label %bb.be, label %.noexc239

bb.be:                                            ; preds = %bb.bd
  %i.qm = load ptr, ptr %i.ow, align 8, !tbaa !185
  store ptr %i.qm, ptr %i.qf, align 8, !tbaa !185
  br label %.noexc239

bb.bf:                                            ; preds = %bb.ba
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.pz ; 2 uses
  %i.qo = ptrtoint ptr %i.qh to i64
  %i.qp = sub i64 %i.qo, %i.oy                    ; 3 uses
  %i.qq = ashr exact i64 %i.qp, 3                 ; 2 uses
  %i.qr = icmp sgt i64 %i.qq, 1
  br i1 %i.qr, label %bb.bg, label %bb.bh, !prof !196

bb.bg:                                            ; preds = %bb.bf
  %i.qs = sub nsw i64 0, %i.qq
  %i.qt = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.qs
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qt, ptr align 8 %i.ow, i64 %i.qp, i1 false)
  br label %.noexc239

bb.bh:                                            ; preds = %bb.bf
  %i.qu = icmp eq i64 %i.qp, 8
  br i1 %i.qu, label %bb.bi, label %.noexc239

bb.bi:                                            ; preds = %bb.bh
  %i.qv = getelementptr inbounds i8, ptr %i.qn, i64 -8
  %i.qw = load ptr, ptr %i.ow, align 8, !tbaa !185
  store ptr %i.qw, ptr %i.qv, align 8, !tbaa !185
  br label %.noexc239

bb.bj:                                            ; preds = %bb.az
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.ps, i64 1)
  %i.qx = add i64 %i.ps, 2
  %i.qy = add i64 %i.qx, %.sroa.speculated.i      ; 5 uses
  %i.qz = icmp ugt i64 %i.qy, 1152921504606846975
  br i1 %i.qz, label %bb.bk, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i, !prof !197

bb.bk:                                            ; preds = %bb.bj
  %i.ra = icmp ugt i64 %i.qy, 2305843009213693951
  br i1 %i.ra, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %bb.bk
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc242:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %bb.bk
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %.noexc3.i.i
  unreachable

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.bj
  %i.rb = shl nuw nsw i64 %i.qy, 3
  %i.rc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #22
          to label %.noexc244 unwind label %.loopexit324 ; 2 uses

.noexc244:                                        ; preds = %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i
  %i.rd = sub nsw i64 %i.qy, %i.qa
  %i.re = lshr i64 %i.rd, 1
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.re ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = sub i64 %i.rh, %i.oy                    ; 3 uses
  %i.rj = icmp sgt i64 %i.ri, 8
  br i1 %i.rj, label %bb.bl, label %bb.bm, !prof !196

bb.bl:                                            ; preds = %.noexc244
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rf, ptr align 8 %i.ow, i64 %i.ri, i1 false)
  br label %_ZSt4copyIPPN6marisa8grimoire4trie5RangeES5_ET0_T_S7_S6_.exit24.i

bb.bm:                                            ; preds = %.noexc244
  %i.rk = icmp eq i64 %i.ri, 8
  br i1 %i.rk, label %bb.bn, label %_ZSt4copyIPPN6marisa8grimoire4trie5RangeES5_ET0_T_S7_S6_.exit24.i

bb.bn:                                            ; preds = %bb.bm
  %i.rl = load ptr, ptr %i.ow, align 8, !tbaa !185
end_hunk_4
