Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrRegAllocA64?download=true
inline.NumInlined: 360
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Luau7CodeGen3A6413IrRegAllocA6420recordAndFreeLastUseEjRNS0_6IrInstEj:bb.a
  %i.ef = add i32 %i.dx, 5
  %.09.i.i = select i1 %i.ee, i32 %i.ed, i32 %i.ef ; 2 uses
  %i.eg = zext i32 %.09.i.i to i64
  %i.eh = shl nuw nsw i64 %i.eg, 4
  %i.ei = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #21 ; 4 uses
  %i.ej = load ptr, ptr %i.dv, align 8, !tbaa !113 ; 5 uses
  %i.ek = load i32, ptr %i.dw, align 8, !tbaa !111 ; 3 uses
  %i.el = zext i32 %i.ek to i64
  %.idx.i.i = shl nuw nsw i64 %i.el, 4            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3A6414ExitSyncArgA64ES4_ET0_T_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.s
  %i.en = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.eo = lshr exact i64 %i.en, 4
  %i.ep = add nuw nsw i64 %i.eo, 1
  %xtraiter = and i64 %i.ep, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.prol = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.013.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.012.i.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !116
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !150

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.er, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.08.012.i.i.i.i.i.i.unr = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.es = icmp ult i64 %i.en, 48
  br i1 %i.es, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3A6414ExitSyncArgA64ES4_ET0_T_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.013.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.012.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !116
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eu, ptr noundef nonnull align 4 dereferenceable(16) %i.et, i64 16, i1 false), !tbaa.struct !116
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ew, ptr noundef nonnull align 4 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !116
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ey, ptr noundef nonnull align 4 dereferenceable(16) %i.ex, i64 16, i1 false), !tbaa.struct !116
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.ez, %i.em
  br i1 %.not.i.i.i.i.i.i.3, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3A6414ExitSyncArgA64ES4_ET0_T_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt18uninitialized_moveIPN4Luau7CodeGen3A6414ExitSyncArgA64ES4_ET0_T_S6_S5_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.s
  %i.fb = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %.not.i.i29 = icmp eq ptr %i.ej, %i.fb
  br i1 %.not.i.i29, label %_ZN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EE4growEj.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen3A6414ExitSyncArgA64ES4_ET0_T_S6_S5_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ej) #17
  %.pre2.pre.i = load i32, ptr %i.dw, align 8, !tbaa !111
  br label %_ZN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EE4growEj.exit.i: ; preds = %bb.t, %_ZSt18uninitialized_moveIPN4Luau7CodeGen3A6414ExitSyncArgA64ES4_ET0_T_S6_S5_.exit.i.i
  %.pre2.i = phi i32 [ %i.ek, %_ZSt18uninitialized_moveIPN4Luau7CodeGen3A6414ExitSyncArgA64ES4_ET0_T_S6_S5_.exit.i.i ], [ %.pre2.pre.i, %bb.t ]
  store ptr %i.ei, ptr %i.dv, align 8, !tbaa !113
  store i32 %.09.i.i, ptr %i.dy, align 4, !tbaa !112
  br label %_ZN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EE9push_backERKS3_.exit

_ZN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EE9push_backERKS3_.exit: ; preds = %._crit_edge.i27, %_ZN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EE4growEj.exit.i
  %i.fc = phi i32 [ %i.dx, %._crit_edge.i27 ], [ %.pre2.i, %_ZN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EE4growEj.exit.i ]
  %i.fd = phi ptr [ %.pre.i28, %._crit_edge.i27 ], [ %i.ei, %_ZN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EE4growEj.exit.i ]
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fe ; 5 uses
  store i32 %i.i, ptr %i.ff, align 4, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !71
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 5
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !71
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !71
  %.sroa.1331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i56 %.sroa.1331.1, ptr %.sroa.1331.0..sroa_idx, align 4
  %i.fg = load i32, ptr %i.dw, align 8, !tbaa !111
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.dw, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrRegAllocA648freeTempENS1_11RegisterA64E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(389) %0, i8 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %.off.i = add nsw i8 %i.a, -1
  %switch.i = icmp ult i8 %.off.i, 2
  %.0.v.i = select i1 %switch.i, i64 36, i64 176
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i ; 2 uses
  %i.b = lshr i8 %1, 3
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 1, %i.c                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = or i32 %i.f, %i.d
  store i32 %i.g, ptr %i.e, align 4, !tbaa !34
  %i.h = xor i32 %i.d, -1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = and i32 %i.j, %i.h
  store i32 %i.k, ptr %i.i, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrRegAllocA6412freeTempRegsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(389) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !151
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46
  %i.e = or i32 %i.d, %i.b
  store i32 %i.e, ptr %i.c, align 8, !tbaa !46
  store i32 0, ptr %i.a, align 4, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47
  %i.j = or i32 %i.i, %i.g
  store i32 %i.j, ptr %i.h, align 4, !tbaa !47
  store i32 0, ptr %i.f, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrRegAllocA6418setupExitSyncEntryEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(389) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !43, !align !52
  tail call void @_ZN4Luau7CodeGen29updateLastUseLocationsInBlockERNS0_10IrFunctionEj(ptr noundef nonnull align 8 dereferenceable(928) %i.b, i32 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i64, ptr %i.d, align 8, !tbaa !104
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEESt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEESt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load i64, ptr %i.j, align 8, !tbaa !105
  %i.l = add i64 %i.k, -1                         ; 3 uses
  %i.m = zext i32 %1 to i64
  %i.n = and i64 %i.l, %i.m
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !106
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.f ]
  %.01927.i.i = phi i64 [ %i.n, %bb.c ], [ %i.v, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.01927.i.i ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32   ; 2 uses
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %i.q, %i.h
  br i1 %i.s, label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEESt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, %.01927.i.i
  %i.v = and i64 %i.u, %i.l
  %.not.i.i = icmp ugt i64 %i.t, %i.l
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEESt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.d, !llvm.loop !0

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !111  ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %.idx = shl nuw nsw i64 %i.aa, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %.not3794 = icmp eq i32 %i.z, 0
  br i1 %.not3794, label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEESt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit47
  %.095 = phi ptr [ %i.x, %.lr.ph ], [ %i.ej, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit47 ] ; 11 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !43, !align !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %.095, align 4, !tbaa !154
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.aj ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i8 0, ptr %i.am, align 8, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 58 ; 2 uses
  store i8 0, ptr %i.an, align 2, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 57 ; 2 uses
  store i8 0, ptr %i.ao, align 1, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %.095, i64 4 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4             ; 2 uses
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 55
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !71
  %.sroa.02.0.copyload = load i8, ptr %i.ap, align 4, !tbaa !71 ; 2 uses
  %i.as = load i32, ptr %.095, align 4, !tbaa !154
  %i.at = and i8 %.sroa.02.0.copyload, 7
  %.off.i.i = add nsw i8 %i.at, -1
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %.0.v.i.i = select i1 %switch.i.i, i64 36, i64 176
  %.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i.i ; 2 uses
  %i.au = lshr i8 %.sroa.02.0.copyload, 3         ; 2 uses
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = xor i32 %i.aw, -1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.ba = and i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  %i.bc = zext nneg i8 %i.au to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  store i32 %i.as, ptr %i.bd, align 4, !tbaa !32
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit47

bb.j:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.095, i64 5 ; 4 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !155
  %i.bg = icmp sgt i8 %i.bf, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 55
  store i8 0, ptr %i.bh, align 1, !tbaa !71
  br i1 %i.bg, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ao, align 1, !tbaa !98
  %i.bi = load i32, ptr %.095, align 4, !tbaa !154 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.095, i64 6 ; 2 uses
  %2 = load i8, ptr %i.bj, align 2, !tbaa !71     ; 2 uses
  %3 = load i8, ptr %i.be, align 1, !tbaa !155    ; 2 uses
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !76 ; 3 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !77
  %.not.i.i38 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.678.0.insert.ext = zext i8 %3 to i64
  %.sroa.678.0.insert.shift = shl nuw nsw i64 %.sroa.678.0.insert.ext, 40
  %.sroa.572.0.insert.ext = zext i8 %2 to i64
  %.sroa.572.0.insert.shift = shl nuw nsw i64 %.sroa.572.0.insert.ext, 32
  %.sroa.067.0.insert.ext = zext i32 %i.bi to i64
  %.sroa.572.0.insert.insert = or disjoint i64 %.sroa.572.0.insert.shift, %.sroa.067.0.insert.ext
  %.sroa.067.0.insert.insert = or disjoint i64 %.sroa.572.0.insert.insert, %.sroa.678.0.insert.shift
  store i64 %.sroa.067.0.insert.insert, ptr %i.bk, align 4
  %i.bm = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.ad, align 8, !tbaa !76
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 4 uses
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.n, label %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #19 ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 2 uses
  %.sroa.678.0.insert.ext80 = zext i8 %3 to i64
  %.sroa.678.0.insert.shift81 = shl nuw nsw i64 %.sroa.678.0.insert.ext80, 40
  %.sroa.572.0.insert.ext74 = zext i8 %2 to i64
  %.sroa.572.0.insert.shift75 = shl nuw nsw i64 %.sroa.572.0.insert.ext74, 32
  %.sroa.067.0.insert.ext69 = zext i32 %i.bi to i64
  %.sroa.572.0.insert.insert77 = or disjoint i64 %.sroa.572.0.insert.shift75, %.sroa.067.0.insert.ext69
  %.sroa.067.0.insert.insert71 = or disjoint i64 %.sroa.572.0.insert.insert77, %.sroa.678.0.insert.shift81
  store i64 %.sroa.067.0.insert.insert71, ptr %i.ca, align 4
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.o, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cf) #20
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bz, ptr %i.ac, align 8, !tbaa !78
  store ptr %i.cc, ptr %i.ad, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cg, ptr %i.ae, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.l, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %i.ch = load i8, ptr %i.bj, align 2
  %i.ci = and i8 %i.ch, 7
  %i.cj = icmp eq i8 %i.ci, 5
  %i.ck = select i1 %i.cj, i64 3, i64 1
  %i.cl = load i8, ptr %i.be, align 1, !tbaa !155
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = shl i64 %i.ck, %i.cm
  %i.co = xor i64 %i.cn, -1
  %i.cp = load i64, ptr %i.af, align 8, !tbaa !48
  %i.cq = and i64 %i.cp, %i.co
  store i64 %i.cq, ptr %i.af, align 8, !tbaa !48
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit47

bb.q:                                             ; preds = %bb.j
  store i8 1, ptr %i.an, align 2, !tbaa !79
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !43, !align !52 ; 2 uses
  %i.cs = load i32, ptr %.095, align 4, !tbaa !154 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.095, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ct, align 4
  %i.cu = zext i32 %i.cs to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 184 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 192 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 2 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !69 ; 6 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3                 ; 4 uses
  %.not.i39 = icmp ugt i64 %i.dc, %i.cu
  br i1 %.not.i39, label %_ZN4Luau7CodeGen10IrFunction21recordRestoreLocationEjNS0_20ValueRestoreLocationE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = add i32 %i.cs, 1
  %i.de = zext i32 %i.dd to i64                   ; 4 uses
  %i.df = icmp samesign ult i64 %i.dc, %i.de
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dg = sub nuw nsw i64 %i.de, %i.dc
  tail call void @_ZNSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.dg)
  %.pre.i = load ptr, ptr %i.cv, align 8, !tbaa !69
  br label %_ZN4Luau7CodeGen10IrFunction21recordRestoreLocationEjNS0_20ValueRestoreLocationE.exit

bb.t:                                             ; preds = %bb.r
  %i.dh = icmp samesign ugt i64 %i.dc, %i.de
  br i1 %i.dh, label %bb.u, label %_ZN4Luau7CodeGen10IrFunction21recordRestoreLocationEjNS0_20ValueRestoreLocationE.exit

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.de ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cx, %i.di
  br i1 %.not.i.i.i, label %_ZN4Luau7CodeGen10IrFunction21recordRestoreLocationEjNS0_20ValueRestoreLocationE.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen20ValueRestoreLocationES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen20ValueRestoreLocationES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.u
  store ptr %i.di, ptr %i.cw, align 8, !tbaa !68
  br label %_ZN4Luau7CodeGen10IrFunction21recordRestoreLocationEjNS0_20ValueRestoreLocationE.exit

_ZN4Luau7CodeGen10IrFunction21recordRestoreLocationEjNS0_20ValueRestoreLocationE.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIPN4Luau7CodeGen20ValueRestoreLocationES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.dj = phi ptr [ %i.cy, %_ZSt8_DestroyIPN4Luau7CodeGen20ValueRestoreLocationES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.cy, %bb.u ], [ %i.cy, %bb.t ], [ %.pre.i, %bb.s ], [ %i.cy, %bb.q ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.cu
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i56
  store i56 %.sroa.0.0.extract.trunc.i, ptr %i.dk, align 4
  %i.dl = load i32, ptr %.095, align 4, !tbaa !154 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.095, i64 6
  %5 = load i8, ptr %4, align 2, !tbaa !71        ; 2 uses
  %6 = load i8, ptr %i.be, align 1, !tbaa !155    ; 2 uses
  %i.dm = load ptr, ptr %i.ad, align 8, !tbaa !76 ; 3 uses
  %i.dn = load ptr, ptr %i.ae, align 8, !tbaa !77
  %.not.i.i40 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4Luau7CodeGen10IrFunction21recordRestoreLocationEjNS0_20ValueRestoreLocationE.exit
  %.sroa.6.0.insert.ext = zext i8 %6 to i64
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.6.0.insert.ext, 40
  %.sroa.5.0.insert.ext = zext i8 %5 to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.dl to i64
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.6.0.insert.shift
  store i64 %.sroa.0.0.insert.insert, ptr %i.dm, align 4
  %i.do = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dp, ptr %i.ad, align 8, !tbaa !76
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit47

bb.w:                                             ; preds = %_ZN4Luau7CodeGen10IrFunction21recordRestoreLocationEjNS0_20ValueRestoreLocationE.exit
  %i.dq = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 4 uses
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 5 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.x, label %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41: ; preds = %bb.w
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i.i42, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i.i.i43 = icmp ne i64 %i.dz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i43)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #19 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dt ; 2 uses
  %.sroa.6.0.insert.ext58 = zext i8 %6 to i64
  %.sroa.6.0.insert.shift59 = shl nuw nsw i64 %.sroa.6.0.insert.ext58, 40
  %.sroa.5.0.insert.ext53 = zext i8 %5 to i64
  %.sroa.5.0.insert.shift54 = shl nuw nsw i64 %.sroa.5.0.insert.ext53, 32
  %.sroa.0.0.insert.ext49 = zext i32 %i.dl to i64
  %.sroa.5.0.insert.insert56 = or disjoint i64 %.sroa.5.0.insert.shift54, %.sroa.0.0.insert.ext49
  %.sroa.0.0.insert.insert51 = or disjoint i64 %.sroa.5.0.insert.insert56, %.sroa.6.0.insert.shift59
  store i64 %.sroa.0.0.insert.insert51, ptr %i.ec, align 4
  %i.ed = icmp sgt i64 %i.dt, 0
  br i1 %i.ed, label %bb.y, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44

bb.y:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.dq, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44

_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44: ; preds = %bb.y, %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.not.i17.i.i.i45 = icmp eq ptr %i.dq, null
  br i1 %.not.i17.i.i.i45, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44
  %i.ef = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.eg, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.eh) #20
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46

_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46: ; preds = %bb.z, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44
  store ptr %i.eb, ptr %i.ac, align 8, !tbaa !78
  store ptr %i.ee, ptr %i.ad, align 8, !tbaa !76
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ei, ptr %i.ae, align 8, !tbaa !77
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit47

_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit47: ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46, %bb.v, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit, %bb.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.095, i64 16 ; 2 uses
  %.not37 = icmp eq ptr %i.ej, %i.ab
  br i1 %.not37, label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEESt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.h

_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEESt4hashIjESt8equal_toIjEE4findERKj.exit.thread: ; preds = %bb.e, %bb.f, %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE9push_backEOS4_.exit47, %bb.g, %bb.a, %bb.b
  ret void
}

declare void @_ZN4Luau7CodeGen29updateLastUseLocationsInBlockERNS0_10IrFunctionEj(ptr noundef nonnull align 8 dereferenceable(928), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZN4Luau7CodeGen3A6413IrRegAllocA645spillEjSt16initializer_listINS1_11RegisterA64EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(389) %0, i32 noundef %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.e = load i8, ptr @_ZN5FFlag20DebugCodegenChaosA64E, align 8, !tbaa !41, !range !42, !noundef !43
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br i1 %i.f, label %bb.b, label %..loopexit67_crit_edge

..loopexit67_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !34
  %.pre78 = load i32, ptr %i.g, align 4, !tbaa !33
  br label %.loopexit67

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.g, align 4, !tbaa !158  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46   ; 4 uses
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.h, %i.k                       ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load i32, ptr %i.m, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = xor i32 %i.p, -1
  %i.r = and i32 %i.n, %i.q                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %.not68 = icmp samesign eq i64 %3, 0
  br i1 %.not68, label %.loopexit67, label %.cont.preheader

.cont.preheader:                                  ; preds = %bb.b
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.cont.prol.loopexit, label %.cont.prol

.cont.prol:                                       ; preds = %.cont.preheader
  %.sroa.032.0.copyload.prol = load i8, ptr %2, align 1, !tbaa !71 ; 2 uses
  %i.t = and i8 %.sroa.032.0.copyload.prol, 7
  %i.u = add nsw i8 %i.t, -3
  %switch.i.prol = icmp ult i8 %i.u, -2           ; 3 uses
  %i.v = lshr i8 %.sroa.032.0.copyload.prol, 3
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = xor i32 %i.x, -1
  %.sroa.speculated.prol = select i1 %switch.i.prol, i32 %i.r, i32 %i.l
  %i.z = and i32 %.sroa.speculated.prol, %i.y     ; 2 uses
  %..053.prol = select i1 %switch.i.prol, i32 %i.z, i32 %i.r ; 2 uses
  %.048..prol = select i1 %switch.i.prol, i32 %i.l, i32 %i.z ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %.cont.prol.loopexit

.cont.prol.loopexit:                              ; preds = %.cont.prol, %.cont.preheader
  %..053.lcssa.unr = phi i32 [ poison, %.cont.preheader ], [ %..053.prol, %.cont.prol ]
  %.048..lcssa.unr = phi i32 [ poison, %.cont.preheader ], [ %.048..prol, %.cont.prol ]
  %.04871.unr = phi i32 [ %i.l, %.cont.preheader ], [ %.048..prol, %.cont.prol ]
  %.05270.unr = phi ptr [ %2, %.cont.preheader ], [ %i.aa, %.cont.prol ]
  %.05369.unr = phi i32 [ %i.r, %.cont.preheader ], [ %..053.prol, %.cont.prol ]
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %.loopexit67, label %.cont

.cont:                                            ; preds = %.cont.prol.loopexit, %.cont
  %.04871 = phi i32 [ %.048..1, %.cont ], [ %.04871.unr, %.cont.prol.loopexit ] ; 2 uses
  %.05270 = phi ptr [ %i.ar, %.cont ], [ %.05270.unr, %.cont.prol.loopexit ] ; 3 uses
  %.05369 = phi i32 [ %..053.1, %.cont ], [ %.05369.unr, %.cont.prol.loopexit ] ; 2 uses
  %.sroa.032.0.copyload = load i8, ptr %.05270, align 1, !tbaa !71 ; 2 uses
  %i.ac = and i8 %.sroa.032.0.copyload, 7
  %i.ad = add nsw i8 %i.ac, -3
  %switch.i = icmp ult i8 %i.ad, -2               ; 3 uses
  %i.ae = lshr i8 %.sroa.032.0.copyload, 3
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = xor i32 %i.ag, -1
  %.sroa.speculated = select i1 %switch.i, i32 %.05369, i32 %.04871
  %i.ai = and i32 %.sroa.speculated, %i.ah        ; 2 uses
  %..053 = select i1 %switch.i, i32 %i.ai, i32 %.05369 ; 2 uses
  %.048. = select i1 %switch.i, i32 %.04871, i32 %i.ai ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05270, i64 1
  %.sroa.032.0.copyload.1 = load i8, ptr %i.aj, align 1, !tbaa !71 ; 2 uses
  %i.ak = and i8 %.sroa.032.0.copyload.1, 7
  %i.al = add nsw i8 %i.ak, -3
  %switch.i.1 = icmp ult i8 %i.al, -2             ; 3 uses
  %i.am = lshr i8 %.sroa.032.0.copyload.1, 3
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = xor i32 %i.ao, -1
  %.sroa.speculated.1 = select i1 %switch.i.1, i32 %..053, i32 %.048.
  %i.aq = and i32 %.sroa.speculated.1, %i.ap      ; 2 uses
  %..053.1 = select i1 %switch.i.1, i32 %i.aq, i32 %..053 ; 2 uses
  %.048..1 = select i1 %switch.i.1, i32 %.048., i32 %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05270, i64 2 ; 2 uses
  %.not.1 = icmp eq ptr %i.ar, %i.s
  br i1 %.not.1, label %.loopexit67, label %.cont

.loopexit67:                                      ; preds = %.cont.prol.loopexit, %.cont, %..loopexit67_crit_edge, %bb.b
  %i.as = phi i32 [ %.pre78, %..loopexit67_crit_edge ], [ %i.h, %bb.b ], [ %i.h, %.cont ], [ %i.h, %.cont.prol.loopexit ] ; 2 uses
  %i.at = phi i32 [ %.pre, %..loopexit67_crit_edge ], [ %i.j, %bb.b ], [ %i.j, %.cont ], [ %i.j, %.cont.prol.loopexit ] ; 2 uses
  %.154 = phi i32 [ 0, %..loopexit67_crit_edge ], [ %i.r, %bb.b ], [ %..053.lcssa.unr, %.cont.prol.loopexit ], [ %..053.1, %.cont ]
  %.1 = phi i32 [ 0, %..loopexit67_crit_edge ], [ %i.l, %bb.b ], [ %.048..lcssa.unr, %.cont.prol.loopexit ], [ %.048..1, %.cont ]
  %.0.i64 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = icmp eq i32 %i.at, %i.as
  br i1 %i.au, label %.loopexit66, label %bb.c

.preheader:                                       ; preds = %.loopexit66.1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.g

bb.c:                                             ; preds = %.loopexit67
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !35
  %i.az = or i32 %i.ay, %i.at                     ; 2 uses
  store i32 %i.az, ptr %i.aw, align 8, !tbaa !34
  store i32 0, ptr %i.ax, align 4, !tbaa !35
  %i.ba = xor i32 %i.az, -1
  %i.bb = and i32 %i.as, %i.ba                    ; 2 uses
  %.not6073 = icmp eq i32 %i.bb, 0
  br i1 %.not6073, label %.loopexit66, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.04974 = phi i32 [ %i.bb, %.lr.ph ], [ %i.bk, %bb.d ] ; 2 uses
  %i.bd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.04974, i1 true) ; 2 uses
  %i.be = xor i32 %i.bd, 31
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32
  tail call void @_ZN4Luau7CodeGen3A6413IrRegAllocA645spillERNS2_3SetEjj(ptr noundef nonnull align 8 dereferenceable(389) %0, ptr noundef nonnull align 4 dereferenceable(140) %.0.i64, i32 noundef %1, i32 noundef %i.bh)
  %i.bi = lshr exact i32 -2147483648, %i.bd
  %i.bj = xor i32 %i.bi, -1
  %i.bk = and i32 %.04974, %i.bj                  ; 2 uses
  %.not60 = icmp eq i32 %i.bk, 0
  br i1 %.not60, label %.loopexit66, label %bb.d, !llvm.loop !156

.loopexit66:                                      ; preds = %bb.d, %bb.c, %.loopexit67
  %.0.i64.1 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34 ; 2 uses
  %i.bn = load i32, ptr %.0.i64.1, align 8, !tbaa !33 ; 2 uses
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %.loopexit66.1, label %bb.e

bb.e:                                             ; preds = %.loopexit66
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !35
  %i.br = or i32 %i.bq, %i.bm                     ; 2 uses
  store i32 %i.br, ptr %i.bl, align 4, !tbaa !34
  store i32 0, ptr %i.bp, align 8, !tbaa !35
  %i.bs = xor i32 %i.br, -1
  %i.bt = and i32 %i.bn, %i.bs                    ; 2 uses
  %.not6073.1 = icmp eq i32 %i.bt, 0
  br i1 %.not6073.1, label %.loopexit66.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 188
  br label %bb.f
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_M_default_appendEm:bb.a
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 2305843009213693950
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = load i64, ptr %i.b, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 4
  store i64 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !177

_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !76
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #19 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i64 0, ptr %i.aj, align 4
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i30
  %i.ao = add i64 %1, 2305843009213693950
  %i.ap = and i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check45 = icmp samesign ult i64 %i.ap, 3
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i31.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %bb.g
  %n.vec47 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec47, 3
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 2 uses
  %i.at = shl i64 %index49, 3
  %next.gep50 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i64, ptr %i.aj, align 4
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %broadcast.splat52, ptr %next.gep50, align 4
  store <2 x i64> %broadcast.splat52, ptr %i.av, align 4
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.aw, label %middle.block54, label %vector.body48, !llvm.loop !178

middle.block54:                                   ; preds = %vector.body48
  %cmp.n55 = icmp eq i64 %i.aq, %n.vec47
  br i1 %cmp.n55, label %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %bb.g, %middle.block54
  %.06.i.i.i.i.i.i.i32.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block54 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader ] ; 2 uses
  %i.ax = load i64, ptr %i.aj, align 4
  store i64 %i.ax, ptr %.06.i.i.i.i.i.i.i32, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !179

_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block54, %_ZNKSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE13_M_deallocateEPS4_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #20
  br label %_ZNSt12_Vector_baseIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE13_M_deallocateEPS4_m.exit38

_ZNSt12_Vector_baseIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE13_M_deallocateEPS4_m.exit38: ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !76
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.be, ptr %i.h, align 8, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen3A6413IrRegAllocA645SpillEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE13_M_deallocateEPS4_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_IrRegAllocA64.cpp() #13 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag20DebugCodegenChaosA64E, align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20DebugCodegenChaosA64E, i64 1), align 1, !tbaa !182
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20DebugCodegenChaosA64E, i64 8), align 8, !tbaa !183
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !184
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20DebugCodegenChaosA64E, i64 16), align 8, !tbaa !185
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20DebugCodegenChaosA64E, i64 24), align 8, !tbaa !186
  store i8 0, ptr @_ZN5FFlag21DebugCodegenLimitRegsE, align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21DebugCodegenLimitRegsE, i64 1), align 1, !tbaa !182
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21DebugCodegenLimitRegsE, i64 8), align 8, !tbaa !183
  store ptr @_ZN5FFlag20DebugCodegenChaosA64E, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21DebugCodegenLimitRegsE, i64 16), align 8, !tbaa !185
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag21DebugCodegenLimitRegsE, i64 24), align 8, !tbaa !186
  store i8 0, ptr @_ZN5FFlag26LuauCodegenA64ExitUseCheckE, align 8, !tbaa !41
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag26LuauCodegenA64ExitUseCheckE, i64 1), align 1, !tbaa !182
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag26LuauCodegenA64ExitUseCheckE, i64 8), align 8, !tbaa !183
  store ptr @_ZN5FFlag21DebugCodegenLimitRegsE, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag26LuauCodegenA64ExitUseCheckE, i64 16), align 8, !tbaa !185
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag26LuauCodegenA64ExitUseCheckE, i64 24), align 8, !tbaa !186
  store ptr @_ZN5FFlag26LuauCodegenA64ExitUseCheckE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !184
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN4Luau7CodeGen10LogBuilderE", !11, i64 0}
!13 = !{!"p1 _ZTSN4Luau7CodeGen3A6418AssemblyBuilderA64E", !11, i64 0}
!14 = !{!"p1 _ZTSN4Luau7CodeGen10IrFunctionE", !11, i64 0}
!15 = !{!"p1 _ZTSN4Luau7CodeGen13LoweringStatsE", !11, i64 0}
!16 = !{!"_ZTSN4Luau7CodeGen3A6413IrRegAllocA643SetE", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12}
!17 = !{!"p1 _ZTSN4Luau7CodeGen3A6413IrRegAllocA645SpillE", !11, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorIN4Luau7CodeGen3A6413IrRegAllocA645SpillESaIS4_EE", !20, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"p1 _ZTSSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3A6414ExitSyncArgA64ELj2EEEE", !11, i64 0}
!24 = !{!"_ZTSSt4hashIjE"}
!25 = !{!"_ZTSSt8equal_toIjE"}
!26 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEE", !23, i64 0, !22, i64 8, !22, i64 16, !8, i64 24, !24, i64 28, !25, i64 29}
!27 = !{!"_ZTSN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEESt4hashIjESt8equal_toIjEEE", !26, i64 0}
!28 = !{!"bool", !7, i64 0}
!29 = !{!"_ZTSN4Luau7CodeGen3A6413IrRegAllocA64E", !12, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !8, i64 32, !16, i64 36, !16, i64 176, !21, i64 320, !22, i64 344, !27, i64 352, !8, i64 384, !28, i64 388}
!30 = !{!29, !12, i64 0}
!31 = !{!29, !15, i64 24}
!32 = !{!8, !8, i64 0}
!33 = !{!16, !8, i64 0}
!34 = !{!16, !8, i64 4}
!35 = !{!16, !8, i64 8}
!36 = !{!29, !8, i64 384}
!37 = !{!29, !28, i64 388}
!38 = !{!"p1 omnipotent char", !11, i64 0}
!39 = !{!"p1 _ZTSN4Luau6FValueIbEE", !11, i64 0}
!40 = !{!"_ZTSN4Luau6FValueIbEE", !28, i64 0, !28, i64 1, !38, i64 8, !39, i64 16, !8, i64 24}
!41 = !{!40, !28, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!29, !8, i64 176}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!29, !8, i64 40}
!47 = !{!29, !8, i64 180}
!48 = !{!29, !22, i64 344}
!49 = !{!29, !8, i64 32}
!50 = !{!28, !28, i64 0}
!51 = !{!29, !14, i64 16}
!52 = !{i64 8}
!53 = !{!"p1 _ZTSN4Luau7CodeGen6IrInstE", !11, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 0}
!56 = !{!"_ZTSN4Luau7CodeGen5IrCmdE", !7, i64 0}
!57 = !{!"p1 _ZTSN4Luau7CodeGen4IrOpE", !11, i64 0}
!58 = !{!"_ZTSN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEE", !57, i64 0, !8, i64 8, !8, i64 12, !7, i64 16}
!59 = !{!"short", !7, i64 0}
!60 = !{!"_ZTSN4Luau7CodeGen3X647SizeX64E", !7, i64 0}
!61 = !{!"_ZTSN4Luau7CodeGen3X6411RegisterX64E", !60, i64 0, !7, i64 0}
!62 = !{!"_ZTSN4Luau7CodeGen3A647KindA64E", !7, i64 0}
!63 = !{!"_ZTSN4Luau7CodeGen3A6411RegisterA64E", !62, i64 0, !7, i64 0}
!64 = !{!"_ZTSN4Luau7CodeGen6IrInstE", !56, i64 0, !58, i64 8, !8, i64 48, !59, i64 52, !61, i64 54, !63, i64 55, !28, i64 56, !28, i64 57, !28, i64 58}
!65 = !{!64, !8, i64 48}
!66 = !{!"p1 _ZTSN4Luau7CodeGen20ValueRestoreLocationE", !11, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!67, !66, i64 8}
!69 = !{!67, !66, i64 0}
!70 = !{!29, !13, i64 8}
!71 = !{!7, !7, i64 0}
!72 = !{!"_ZTSN4Luau7CodeGen8IrOpKindE", !7, i64 0}
!73 = !{!"_ZTSN4Luau7CodeGen4IrOpE", !72, i64 0, !8, i64 0}
!74 = !{!"_ZTSN4Luau7CodeGen11IrValueKindE", !7, i64 0}
!75 = !{!"_ZTSN4Luau7CodeGen20ValueRestoreLocationE", !73, i64 0, !74, i64 4, !56, i64 5, !28, i64 6}
!76 = !{!18, !17, i64 8}
!77 = !{!18, !17, i64 16}
!78 = !{!18, !17, i64 0}
!79 = !{!64, !28, i64 58}
!80 = !{!"p1 _ZTSN4Luau7CodeGen15AssemblyOptionsE", !11, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !81, i64 0, !22, i64 8, !7, i64 16}
!83 = !{!"_ZTSN4Luau7CodeGen10LogBuilderE", !80, i64 0, !82, i64 8}
!84 = !{!83, !80, i64 0}
!85 = !{!"_ZTSN4Luau7CodeGen15AssemblyOptions6TargetE", !7, i64 0}
!86 = !{!"_ZTSN4Luau7CodeGen11HostIrHooksE", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!87 = !{!"any p2 pointer", !11, i64 0}
!88 = !{!"p2 omnipotent char", !87, i64 0}
!89 = !{!"_ZTSN4Luau7CodeGen18CompilationOptionsE", !8, i64 0, !86, i64 8, !88, i64 88, !28, i64 96, !28, i64 97}
!90 = !{!"_ZTSN4Luau7CodeGen15IncludeIrPrefixE", !7, i64 0}
!91 = !{!"_ZTSN4Luau7CodeGen14IncludeUseInfoE", !7, i64 0}
!92 = !{!"_ZTSN4Luau7CodeGen14IncludeCfgInfoE", !7, i64 0}
!93 = !{!"_ZTSN4Luau7CodeGen18IncludeRegFlowInfoE", !7, i64 0}
!94 = !{!"_ZTSN4Luau7CodeGen15AssemblyOptionsE", !85, i64 0, !89, i64 8, !28, i64 112, !28, i64 113, !28, i64 114, !28, i64 115, !28, i64 116, !28, i64 117, !90, i64 120, !91, i64 124, !92, i64 128, !93, i64 132, !11, i64 136, !11, i64 144}
!95 = !{!94, !28, i64 117}
!96 = !{!82, !22, i64 8}
!97 = !{!22, !22, i64 0}
!98 = !{!64, !28, i64 57}
!99 = !{!64, !56, i64 0}
!100 = !{!64, !28, i64 56}
!101 = !{!"_ZTSN4Luau7CodeGen3A6413IrRegAllocA645SpillE", !8, i64 0, !63, i64 4, !7, i64 5}
!102 = !{!101, !8, i64 0}
!103 = !{!101, !7, i64 5}
!104 = !{!26, !22, i64 16}
!105 = !{!26, !22, i64 8}
!106 = !{!26, !23, i64 0}
!107 = !{!"p1 _ZTSN4Luau7CodeGen3A6414ExitSyncArgA64E", !11, i64 0}
!108 = !{!"_ZTSN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEE", !107, i64 0, !8, i64 8, !8, i64 12, !7, i64 16}
!109 = !{!"_ZTSSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3A6414ExitSyncArgA64ELj2EEEE", !8, i64 0, !108, i64 8}
!110 = !{!109, !8, i64 0}
!111 = !{!108, !8, i64 8}
!112 = !{!108, !8, i64 12}
!113 = !{!108, !107, i64 0}
!114 = !{!74, !74, i64 0}
!115 = !{!56, !56, i64 0}
!116 = !{i64 0, i64 4, !32, i64 4, i64 1, !71, i64 5, i64 1, !71, i64 6, i64 1, !71, i64 8, i64 4, !71, i64 12, i64 1, !114, i64 13, i64 1, !115, i64 14, i64 1, !50}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = distinct !{!118, !45}
!119 = !{!13, !13, i64 0}
!120 = !{!14, !14, i64 0}
!121 = !{!26, !8, i64 24}
!122 = !{!"p1 _ZTSSt4pairIN4Luau7CodeGen3A6411RegisterA64ES3_E", !11, i64 0}
!123 = !{!"_ZTSSt16initializer_listISt4pairIN4Luau7CodeGen3A6411RegisterA64ES4_EE", !122, i64 0, !22, i64 8}
!124 = !{!123, !122, i64 0}
!125 = !{!123, !22, i64 8}
!126 = !{!"p1 int", !11, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!"p1 _ZTSN4Luau7CodeGen7IrBlockE", !11, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!129, !128, i64 0}
!131 = !{!"_ZTSN4Luau7CodeGen11IrBlockKindE", !7, i64 0}
!132 = !{!"_ZTSN4Luau7CodeGen5LabelE", !8, i64 0, !8, i64 4}
!133 = !{!"_ZTSN4Luau7CodeGen7IrBlockE", !131, i64 0, !7, i64 1, !59, i64 2, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !132, i64 28}
!134 = !{!133, !8, i64 4}
!135 = !{!75, !28, i64 6}
!136 = !{!"double", !7, i64 0}
!137 = !{!"_ZTSN4Luau7CodeGen23BlockLinearizationStatsE", !8, i64 0, !136, i64 8}
!138 = !{!"p1 _ZTSN4Luau7CodeGen13FunctionStatsE", !11, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE12_Vector_implE", !139, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE", !141, i64 0}
!143 = !{!"_ZTSN4Luau7CodeGen13LoweringStatsE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !137, i64 40, !8, i64 56, !142, i64 64}
!144 = !{!143, !8, i64 12}
!145 = !{!143, !8, i64 8}
!146 = !{!143, !8, i64 16}
!147 = !{!58, !57, i64 0}
!148 = !{!58, !8, i64 8}
!149 = distinct !{!149, !45}
!150 = distinct !{!150, !117}
!151 = !{!29, !8, i64 44}
!152 = !{!29, !8, i64 184}
!153 = !{!"_ZTSN4Luau7CodeGen3A6414ExitSyncArgA64E", !8, i64 0, !63, i64 4, !7, i64 5, !63, i64 6, !75, i64 8}
!154 = !{!153, !8, i64 0}
!155 = !{!153, !7, i64 5}
!156 = distinct !{!156, !45}
!157 = distinct !{!157, !45}
!158 = !{!29, !8, i64 36}
!159 = distinct !{!159, !45}
!160 = distinct !{!160, !45}
!161 = !{!17, !17, i64 0}
!162 = !{!94, !90, i64 120}
!163 = distinct !{!163, !"_ZSt19__relocate_object_aIN4Luau7CodeGen20ValueRestoreLocationES2_SaIS2_EEvPT_PT0_RT1_"}
!164 = distinct !{!164, !163, !"_ZSt19__relocate_object_aIN4Luau7CodeGen20ValueRestoreLocationES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!165 = distinct !{!165, !163, !"_ZSt19__relocate_object_aIN4Luau7CodeGen20ValueRestoreLocationES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!166 = distinct !{!166, !45}
!167 = !{!67, !66, i64 16}
!168 = !{!164}
!169 = !{!165}
!170 = distinct !{!170, !45}
!171 = distinct !{!171, !45}
!172 = distinct !{!172, !45}
end_hunk_1
