Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mesh_generator_thread?download=true
inline.NumInlined: 1270
inline.NumDeleted: 636
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16QueuedMeshUpdateD2Ev:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit

_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit:         ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIP8MapBlockSaIS1_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16QueuedMeshUpdate14retrieveBlocksEP3Mapt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i16 %2 to i32                       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZNSt6vectorIP8MapBlockSaIS1_EE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.a, 2                  ; 3 uses
  %i.h = mul nuw nsw i32 %i.g, %i.g
  %i.i = mul nuw nsw i32 %i.h, %i.g
  %i.j = zext nneg i32 %i.i to i64
  tail call void @_ZNSt6vectorIP8MapBlockSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.j)
  br label %_ZNSt6vectorIP8MapBlockSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP8MapBlockSaIS1_EE6resizeEm.exit:    ; preds = %bb.b, %bb.a
  %i.k = load i16, ptr %0, align 8, !tbaa !236    ; 3 uses
  %i.l = add i16 %i.k, -1                         ; 2 uses
  %i.m = sext i16 %i.l to i32
  %i.n = sext i16 %i.k to i32
  %i.o = add nsw i32 %i.n, %i.a
  %.not32 = icmp slt i32 %i.o, %i.m
  br i1 %.not32, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %_ZNSt6vectorIP8MapBlockSaIS1_EE6resizeEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.pre = load i16, ptr %i.p, align 4, !tbaa !237 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph35, %._crit_edge30
  %i.r = phi i16 [ %i.k, %.lr.ph35 ], [ %i.az, %._crit_edge30 ]
  %i.s = phi i16 [ %.pre, %.lr.ph35 ], [ %i.ba, %._crit_edge30 ] ; 2 uses
  %i.t = phi i16 [ %.pre, %.lr.ph35 ], [ %i.bb, %._crit_edge30 ] ; 3 uses
  %.034 = phi i64 [ 0, %.lr.ph35 ], [ %.1.lcssa, %._crit_edge30 ] ; 2 uses
  %storemerge33 = phi i16 [ %i.l, %.lr.ph35 ], [ %i.bc, %._crit_edge30 ] ; 2 uses
  %i.u = add i16 %i.t, -1                         ; 2 uses
  %i.v = sext i16 %i.u to i32
  %i.w = sext i16 %i.t to i32
  %i.x = add nsw i32 %i.w, %i.a
  %.not1725 = icmp slt i32 %i.x, %i.v
  br i1 %.not1725, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.c
  %.sroa.0.0.insert.ext = zext i16 %storemerge33 to i48
  %.pre38 = load i16, ptr %i.q, align 2, !tbaa !238
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph29, %._crit_edge
  %i.y = phi i16 [ %i.s, %.lr.ph29 ], [ %i.at, %._crit_edge ]
  %i.z = phi i16 [ %.pre38, %.lr.ph29 ], [ %i.au, %._crit_edge ] ; 3 uses
  %.127 = phi i64 [ %.034, %.lr.ph29 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %storemerge1626 = phi i16 [ %i.u, %.lr.ph29 ], [ %i.av, %._crit_edge ] ; 2 uses
  %i.aa = add i16 %i.z, -1                        ; 2 uses
  %i.ab = sext i16 %i.aa to i32
  %i.ac = sext i16 %i.z to i32
  %i.ad = add nsw i32 %i.ac, %i.a
  %.not1922 = icmp slt i32 %i.ad, %i.ab
  br i1 %.not1922, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.sroa.9.0.insert.ext = zext i16 %storemerge1626 to i48
  %.sroa.9.0.insert.shift = shl nuw i48 %.sroa.9.0.insert.ext, 32
  %invariant.op = or disjoint i48 %.sroa.9.0.insert.shift, %.sroa.0.0.insert.ext
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.224 = phi i64 [ %.127, %.lr.ph ], [ %i.an, %bb.h ] ; 3 uses
  %storemerge1823 = phi i16 [ %i.aa, %.lr.ph ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.224
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38
  %.not20 = icmp eq ptr %i.ag, null
  br i1 %.not20, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.sroa.6.0.insert.ext = zext i16 %storemerge1823 to i48
  %.sroa.6.0.insert.shift = shl nuw nsw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.insert.reass = or disjoint i48 %.sroa.6.0.insert.shift, %invariant.op
  %i.ah = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.reass) ; 3 uses
  %.not21 = icmp eq ptr %i.ah, null
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 22 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !81
  %i.ak = add i16 %i.aj, 1
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !81
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.224
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.an = add i64 %.224, 1                        ; 2 uses
  %i.ao = add i16 %storemerge1823, 1              ; 2 uses
  %i.ap = sext i16 %i.ao to i32
  %i.aq = load i16, ptr %i.q, align 2, !tbaa !238 ; 2 uses
  %i.ar = sext i16 %i.aq to i32
  %i.as = add nsw i32 %i.ar, %i.a
  %.not19 = icmp slt i32 %i.as, %i.ap
  br i1 %.not19, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !233

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre39 = load i16, ptr %i.p, align 4, !tbaa !237
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.at = phi i16 [ %i.y, %bb.d ], [ %.pre39, %._crit_edge.loopexit ] ; 4 uses
  %i.au = phi i16 [ %i.z, %bb.d ], [ %i.aq, %._crit_edge.loopexit ]
  %.2.lcssa = phi i64 [ %.127, %bb.d ], [ %i.an, %._crit_edge.loopexit ] ; 2 uses
  %i.av = add i16 %storemerge1626, 1              ; 2 uses
  %i.aw = sext i16 %i.av to i32
  %i.ax = sext i16 %i.at to i32
  %i.ay = add nsw i32 %i.ax, %i.a
  %.not17 = icmp slt i32 %i.ay, %i.aw
  br i1 %.not17, label %._crit_edge30.loopexit, label %bb.d, !llvm.loop !234

._crit_edge30.loopexit:                           ; preds = %._crit_edge
  %.pre40 = load i16, ptr %0, align 8, !tbaa !236
  br label %._crit_edge30

._crit_edge30:                                    ; preds = %._crit_edge30.loopexit, %bb.c
  %i.az = phi i16 [ %i.r, %bb.c ], [ %.pre40, %._crit_edge30.loopexit ] ; 2 uses
  %i.ba = phi i16 [ %i.s, %bb.c ], [ %i.at, %._crit_edge30.loopexit ]
  %i.bb = phi i16 [ %i.t, %bb.c ], [ %i.at, %._crit_edge30.loopexit ]
  %.1.lcssa = phi i64 [ %.034, %bb.c ], [ %.2.lcssa, %._crit_edge30.loopexit ]
  %i.bc = add i16 %storemerge33, 1                ; 2 uses
  %i.bd = sext i16 %i.bc to i32
  %i.be = sext i16 %i.az to i32
  %i.bf = add nsw i32 %i.be, %i.a
  %.not = icmp slt i32 %i.bf, %i.bd
  br i1 %.not, label %._crit_edge36, label %bb.c, !llvm.loop !235

._crit_edge36:                                    ; preds = %._crit_edge30, %_ZNSt6vectorIP8MapBlockSaIS1_EE6resizeEm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN16QueuedMeshUpdate9checkSkipEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !83
  %i.b = add i16 %i.a, %1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !84
  %i.e = add i16 %i.d, %1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !85
  %i.h = add i16 %i.g, %1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %.not2729 = icmp eq ptr %i.j, %i.l
  br i1 %.not2729, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.critedge
  %2 = trunc nuw i8 %.1 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %2, %._crit_edge.loopexit ]
  ret i1 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.031 = phi i8 [ %.1, %.critedge ], [ 1, %bb.a ] ; 7 uses
  %.sroa.015.030 = phi ptr [ %i.af, %.critedge ], [ %i.j, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.015.030, align 8, !tbaa !38 ; 5 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %.sroa.0.0.copyload.i = load i48, ptr %i.n, align 2 ; 3 uses
  %.sroa.011.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i to i16 ; 4 uses
  %.sroa.512.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.512.0.extract.trunc = trunc i48 %.sroa.512.0.extract.shift to i16 ; 4 uses
  %.sroa.613.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.613.0.extract.trunc = trunc nuw i48 %.sroa.613.0.extract.shift to i16 ; 2 uses
  %i.o = load i16, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.p = icmp sgt i16 %i.o, %.sroa.011.0.extract.trunc
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i16 %i.o, %.sroa.011.0.extract.trunc
  br i1 %i.q, label %bb.d, label %_ZNK4core8vector3dIsEgeERKS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = load i16, ptr %i.c, align 2, !tbaa !84   ; 2 uses
  %i.s = icmp sgt i16 %i.r, %.sroa.512.0.extract.trunc
  br i1 %i.s, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i16 %i.r, %.sroa.512.0.extract.trunc
  br i1 %i.t, label %_ZNK4core8vector3dIsEgeERKS1_.exit, label %_ZNK4core8vector3dIsEgeERKS1_.exit.thread

_ZNK4core8vector3dIsEgeERKS1_.exit:               ; preds = %bb.e
  %i.u = load i16, ptr %i.f, align 4, !tbaa !85
  %.not28 = icmp sgt i16 %i.u, %.sroa.613.0.extract.trunc
  br i1 %.not28, label %.critedge, label %_ZNK4core8vector3dIsEgeERKS1_.exit.thread

_ZNK4core8vector3dIsEgeERKS1_.exit.thread:        ; preds = %bb.c, %bb.e, %_ZNK4core8vector3dIsEgeERKS1_.exit
  %i.v = icmp sgt i16 %i.b, %.sroa.011.0.extract.trunc
  br i1 %i.v, label %_ZNK4core8vector3dIsEltERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4core8vector3dIsEgeERKS1_.exit.thread
  %i.w = icmp eq i16 %i.b, %.sroa.011.0.extract.trunc
  br i1 %i.w, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i16 %i.e, %.sroa.512.0.extract.trunc
  br i1 %i.x, label %_ZNK4core8vector3dIsEltERKS1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i16 %i.e, %.sroa.512.0.extract.trunc
  %i.z = icmp sgt i16 %i.h, %.sroa.613.0.extract.trunc
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIsEltERKS1_.exit.thread, label %.critedge

_ZNK4core8vector3dIsEltERKS1_.exit.thread:        ; preds = %bb.h, %_ZNK4core8vector3dIsEgeERKS1_.exit.thread, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 73
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !86, !range !87, !noundef !88
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %_ZN8MapBlock5isAirEv.exit

bb.i:                                             ; preds = %_ZNK4core8vector3dIsEltERKS1_.exit.thread
  tail call void @_ZN8MapBlock19actuallyUpdateIsAirEv(ptr noundef nonnull align 8 dereferenceable(336) %i.m)
  br label %_ZN8MapBlock5isAirEv.exit

_ZN8MapBlock5isAirEv.exit:                        ; preds = %_ZNK4core8vector3dIsEltERKS1_.exit.thread, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !89, !range !87, !noundef !88
  %3 = and i8 %i.ae, %.031
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.f, %bb.b, %bb.d, %_ZNK4core8vector3dIsEgeERKS1_.exit, %.lr.ph, %_ZN8MapBlock5isAirEv.exit
  %.1 = phi i8 [ %3, %_ZN8MapBlock5isAirEv.exit ], [ %.031, %bb.h ], [ %.031, %bb.b ], [ %.031, %_ZNK4core8vector3dIsEgeERKS1_.exit ], [ %.031, %.lr.ph ], [ %.031, %bb.d ], [ %.031, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.015.030, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.af, %i.l
  br i1 %.not27, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16QueuedMeshUpdate10dropBlocksEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(81) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not89 = icmp eq ptr %i.b, %i.d
  br i1 %.not89, label %_ZNSt6vectorIP8MapBlockSaIS1_EE5clearEv.exit, label %.lr.ph

_ZSt8_DestroyIPP8MapBlockS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.c
  store ptr %i.b, ptr %i.c, align 8, !tbaa !90
  br label %_ZNSt6vectorIP8MapBlockSaIS1_EE5clearEv.exit

_ZNSt6vectorIP8MapBlockSaIS1_EE5clearEv.exit:     ; preds = %bb.a, %_ZSt8_DestroyIPP8MapBlockS1_EvT_S3_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.05.010 = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.05.010, align 8, !tbaa !38 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !81
  %i.h = add i16 %i.g, -1
  store i16 %i.h, ptr %i.f, align 2, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8 ; 2 uses
  %.not8 = icmp eq ptr %i.i, %i.d
  br i1 %.not8, label %_ZSt8_DestroyIPP8MapBlockS1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15MeshUpdateQueueC2EP6Client(ptr noundef nonnull align 8 dereferenceable(186) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %0, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.c, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !239
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.j, ptr %i.i, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 1, ptr %i.k, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !239
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 56, i1 false)
  %i.o = load ptr, ptr @g_settings, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.p, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 15, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 15, ptr %i.q, align 8, !tbaa !115
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 31
  store i8 0, ptr %i.r, align 1, !tbaa !116
  %i.s = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = zext i1 %i.s to i8
  store i8 %i.u, ptr %i.t, align 8, !tbaa !117
  %i.v = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.x = load i64, ptr %i.p, align 8, !tbaa !116
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.z = load ptr, ptr @g_settings, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 24, ptr %i.a, align 8, !tbaa !119
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.d   ; 2 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ab, ptr %3, align 8, !tbaa !118
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !119 ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ab, ptr noundef nonnull align 1 dereferenceable(24) @.str.1, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !115
  %i.ae = load ptr, ptr %3, align 8, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ag = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.ai = zext i1 %i.ag to i8
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !120
  %i.aj = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.b
  %i.al = load i64, ptr %i.aa, align 8, !tbaa !116
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %2, align 8, !tbaa !118   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.p
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.c
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !116
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.e:                                             ; preds = %.noexc12
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.e
  %i.aw = load i64, ptr %i.aa, align 8, !tbaa !116
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.d
  %.pn7 = phi { ptr, i32 } [ %i.as, %bb.d ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #25
  call void @_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.c) #25
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !122
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #26
  br label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EED2Ev.exit

_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EED2Ev.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %.pn7.pn
}

declare noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4
end_hunk_0
begin_hunk_1_@_ZN15MeshUpdateQueue8addBlockEP3MapN4core8vector3dIsEEbbb:bb.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !244 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i48 %2, ptr %i.bb, align 2
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !244
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !244
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !34 ; 5 uses
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775806
  br i1 %i.bk, label %bb.m, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #27
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bl = sdiv exact i64 %i.bj, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1537228672809129301)
  %i.bp = select i1 %i.bn, i64 1537228672809129301, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = mul nuw nsw i64 %i.bp, 6
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #29
          to label %.noexc55 unwind label %bb.o   ; 5 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store i48 %2, ptr %i.bs, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc55, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.br, %.noexc55 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %i.bg, %.noexc55 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !133, !alias.scope !245
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 6 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, %i.bb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !243

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc55
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.br, %.noexc55 ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6
  %.not.i23.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !35
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.by) #26
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.br, ptr %i.az, align 8, !tbaa !34
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !244
  %i.bz = getelementptr inbounds nuw [6 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.bz, ptr %i.bc, align 8, !tbaa !35
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.m, %bb.q, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.k, %bb.i
  %i.cb = load ptr, ptr %0, align 8, !tbaa !106
  %i.cc = invoke noundef i32 @_ZN6Client13getCrackLevelEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.cb)
          to label %bb.p unwind label %bb.o

bb.p:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !134
  %i.ce = load ptr, ptr %0, align 8, !tbaa !106
  %i.cf = invoke i48 @_ZN6Client11getCrackPosEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.ce)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i48 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 80 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !135, !range !87, !noundef !88
  %i.cj = or i8 %i.ci, %i.b
  store i8 %i.cj, ptr %i.ch, align 8, !tbaa !135
  invoke void @_ZN16QueuedMeshUpdate14retrieveBlocksEP3Mapt(ptr noundef nonnull align 8 dereferenceable(81) %i.aq, ptr noundef nonnull %1, i16 noundef zeroext %.sroa.0.0.copyload.i)
          to label %bb.at unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZNK4core8vector3dIsEeqERKS1_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.084.0102, i64 8 ; 2 uses
  %.not98 = icmp eq ptr %i.cl, %i.ak
  br i1 %.not98, label %.critedge48, label %bb.g

.critedge48:                                      ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cm = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #29
          to label %bb.s unwind label %bb.t       ; 20 uses

bb.s:                                             ; preds = %.critedge48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.cm, i8 0, i64 88, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  store i32 -1, ptr %i.cq, align 16, !tbaa !134
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 38
  store i16 0, ptr %i.cs, align 2, !tbaa !84
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.ct, i8 0, i64 33, i1 false)
  store ptr %i.cm, ptr %8, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.cm, ptr noundef nonnull align 8 dereferenceable(6) %7, i64 6, i1 false), !tbaa.struct !133
  br i1 %3, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i57, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit71

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i57: ; preds = %bb.s
  %i.cu = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #29
          to label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i68 unwind label %.loopexit.split-lp ; 3 uses

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i68: ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i48 %2, ptr %i.cu, align 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 6 ; 2 uses
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !34
  store ptr %i.cx, ptr %i.cw, align 16, !tbaa !244
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !35
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit71

bb.t:                                             ; preds = %.critedge48
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit:                                        ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit71, %bb.v, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i57, %_ZN16QueuedMeshUpdate9checkSkipEt.exit.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit71: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i68, %bb.s
  %i.cz = load ptr, ptr %0, align 8, !tbaa !106
  %i.da = invoke noundef i32 @_ZN6Client13getCrackLevelEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.cz)
          to label %bb.u unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit71
  store i32 %i.da, ptr %i.cq, align 16, !tbaa !134
  %i.db = load ptr, ptr %0, align 8, !tbaa !106
  %i.dc = invoke i48 @_ZN6Client11getCrackPosEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.db)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  store i48 %i.dc, ptr %i.cr, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  store i8 %i.b, ptr %i.dd, align 16, !tbaa !135
  invoke void @_ZN16QueuedMeshUpdate14retrieveBlocksEP3Mapt(ptr noundef nonnull align 8 dereferenceable(81) %i.cm, ptr noundef nonnull %1, i16 noundef zeroext %.sroa.0.0.copyload.i)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  br i1 %5, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.de = load i16, ptr %i.cm, align 16, !tbaa !83
  %i.df = add i16 %i.de, %.sroa.0.0.copyload.i    ; 2 uses
  %i.dg = load i16, ptr %i.cn, align 2, !tbaa !84
  %i.dh = add i16 %i.dg, %.sroa.0.0.copyload.i    ; 2 uses
  %i.di = load i16, ptr %i.co, align 4, !tbaa !85
  %i.dj = add i16 %i.di, %.sroa.0.0.copyload.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !36 ; 2 uses
  %.not2729.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not2729.i, label %_ZN16QueuedMeshUpdate9checkSkipEt.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.critedge.i
  %.031.i = phi i8 [ %.1.i, %.critedge.i ], [ 1, %bb.x ] ; 7 uses
  %.sroa.015.030.i = phi ptr [ %i.eh, %.critedge.i ], [ %i.dl, %bb.x ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.015.030.i, align 8, !tbaa !38 ; 5 uses
  %.not.i72 = icmp eq ptr %i.do, null
  br i1 %.not.i72, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 10
  %.sroa.0.0.copyload.i.i = load i48, ptr %i.dp, align 2 ; 3 uses
  %.sroa.011.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload.i.i to i16 ; 4 uses
  %.sroa.512.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i.i, 16
  %.sroa.512.0.extract.trunc.i = trunc i48 %.sroa.512.0.extract.shift.i to i16 ; 4 uses
  %.sroa.613.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i.i, 32
  %.sroa.613.0.extract.trunc.i = trunc nuw i48 %.sroa.613.0.extract.shift.i to i16 ; 2 uses
  %i.dq = load i16, ptr %i.cm, align 16, !tbaa !83 ; 2 uses
  %i.dr = icmp sgt i16 %i.dq, %.sroa.011.0.extract.trunc.i
  br i1 %i.dr, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = icmp eq i16 %i.dq, %.sroa.011.0.extract.trunc.i
  br i1 %i.ds, label %bb.aa, label %_ZNK4core8vector3dIsEgeERKS1_.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i16, ptr %i.cn, align 2, !tbaa !84 ; 2 uses
  %i.du = icmp sgt i16 %i.dt, %.sroa.512.0.extract.trunc.i
  br i1 %i.du, label %.critedge.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = icmp eq i16 %i.dt, %.sroa.512.0.extract.trunc.i
  br i1 %i.dv, label %_ZNK4core8vector3dIsEgeERKS1_.exit.i, label %_ZNK4core8vector3dIsEgeERKS1_.exit.thread.i

_ZNK4core8vector3dIsEgeERKS1_.exit.i:             ; preds = %bb.ab
  %i.dw = load i16, ptr %i.co, align 4, !tbaa !85
  %.not28.i = icmp sgt i16 %i.dw, %.sroa.613.0.extract.trunc.i
  br i1 %.not28.i, label %.critedge.i, label %_ZNK4core8vector3dIsEgeERKS1_.exit.thread.i

_ZNK4core8vector3dIsEgeERKS1_.exit.thread.i:      ; preds = %_ZNK4core8vector3dIsEgeERKS1_.exit.i, %bb.ab, %bb.z
  %i.dx = icmp sgt i16 %i.df, %.sroa.011.0.extract.trunc.i
  br i1 %i.dx, label %_ZNK4core8vector3dIsEltERKS1_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4core8vector3dIsEgeERKS1_.exit.thread.i
  %i.dy = icmp eq i16 %i.df, %.sroa.011.0.extract.trunc.i
  br i1 %i.dy, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.dz = icmp sgt i16 %i.dh, %.sroa.512.0.extract.trunc.i
  br i1 %i.dz, label %_ZNK4core8vector3dIsEltERKS1_.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = icmp eq i16 %i.dh, %.sroa.512.0.extract.trunc.i
  %i.eb = icmp sgt i16 %i.dj, %.sroa.613.0.extract.trunc.i
  %or.cond.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i, label %_ZNK4core8vector3dIsEltERKS1_.exit.thread.i, label %.critedge.i

_ZNK4core8vector3dIsEltERKS1_.exit.thread.i:      ; preds = %bb.ae, %bb.ad, %_ZNK4core8vector3dIsEgeERKS1_.exit.thread.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 73
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !86, !range !87, !noundef !88
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.af, label %_ZN8MapBlock5isAirEv.exit.i

bb.af:                                            ; preds = %_ZNK4core8vector3dIsEltERKS1_.exit.thread.i
  invoke void @_ZN8MapBlock19actuallyUpdateIsAirEv(ptr noundef nonnull align 8 dereferenceable(336) %i.do)
          to label %_ZN8MapBlock5isAirEv.exit.i unwind label %.loopexit

_ZN8MapBlock5isAirEv.exit.i:                      ; preds = %bb.af, %_ZNK4core8vector3dIsEltERKS1_.exit.thread.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !89, !range !87, !noundef !88
  %10 = and i8 %i.eg, %.031.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN8MapBlock5isAirEv.exit.i, %bb.ae, %bb.ac, %_ZNK4core8vector3dIsEgeERKS1_.exit.i, %bb.aa, %bb.y, %.lr.ph.i
  %.1.i = phi i8 [ %10, %_ZN8MapBlock5isAirEv.exit.i ], [ %.031.i, %bb.ae ], [ %.031.i, %bb.y ], [ %.031.i, %_ZNK4core8vector3dIsEgeERKS1_.exit.i ], [ %.031.i, %.lr.ph.i ], [ %.031.i, %bb.aa ], [ %.031.i, %bb.ac ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 8 ; 2 uses
  %.not27.i = icmp eq ptr %i.eh, %i.dn
  br i1 %.not27.i, label %_ZN16QueuedMeshUpdate9checkSkipEt.exit, label %.lr.ph.i

_ZN16QueuedMeshUpdate9checkSkipEt.exit:           ; preds = %.critedge.i
  %11 = trunc nuw i8 %.1.i to i1
  br i1 %11, label %_ZN16QueuedMeshUpdate9checkSkipEt.exit.thread, label %bb.ak

_ZN16QueuedMeshUpdate9checkSkipEt.exit.thread:    ; preds = %bb.x, %_ZN16QueuedMeshUpdate9checkSkipEt.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ej = invoke noundef i64 @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ei, ptr noundef nonnull align 2 dereferenceable(6) %7)
          to label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5eraseERKS2_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5eraseERKS2_.exit: ; preds = %_ZN16QueuedMeshUpdate9checkSkipEt.exit.thread
  %i.ek = load ptr, ptr @g_profiler, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.el, ptr %9, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 32, ptr %i.a, align 8, !tbaa !119
  %i.em = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc75 unwind label %bb.ai  ; 2 uses

.noexc75:                                         ; preds = %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5eraseERKS2_.exit
  store ptr %i.em, ptr %9, align 8, !tbaa !118
  %i.en = load i64, ptr %i.a, align 8, !tbaa !119 ; 3 uses
  store i64 %i.en, ptr %i.el, align 8, !tbaa !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.em, ptr noundef nonnull align 1 dereferenceable(32) @.str.2, i64 32, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !115
  %i.ep = load ptr, ptr %9, align 8, !tbaa !118
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.en
  store i8 0, ptr %i.eq, align 1, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN8Profiler3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %9, float noundef 1.000000e+00)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc75
  %i.er = load ptr, ptr %9, align 8, !tbaa !118   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.el
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.et = load i64, ptr %i.el, align 8, !tbaa !116
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE9push_backEOS1_.exit

bb.ah:                                            ; preds = %bb.u
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ai:                                            ; preds = %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5eraseERKS2_.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.aj:                                            ; preds = %.noexc75
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %9, align 8, !tbaa !118   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.el
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.aj
  %i.fa = load i64, ptr %i.el, align 8, !tbaa !116
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.ai
  %.pn42 = phi { ptr, i32 } [ %i.ew, %bb.ai ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.ex, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ar

bb.ak:                                            ; preds = %_ZN16QueuedMeshUpdate9checkSkipEt.exit, %bb.w
  store ptr null, ptr %8, align 8, !tbaa !128
  %i.fc = load ptr, ptr %i.aj, align 8, !tbaa !126 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !122
  %.not.i.i79 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not.i.i79, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.cm, ptr %i.fc, align 8, !tbaa !128
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.ff, ptr %i.aj, align 8, !tbaa !126
  br label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE9push_backEOS1_.exit

bb.am:                                            ; preds = %bb.ak
  %i.fg = load ptr, ptr %i.ah, align 8, !tbaa !121 ; 4 uses
  %i.fh = ptrtoint ptr %i.fc to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 5 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775800
  br i1 %i.fk, label %bb.an, label %_ZNKSt6vectorIP16QueuedMeshUpdateSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #27
          to label %.noexc80 unwind label %bb.aq

.noexc80:                                         ; preds = %bb.an
  unreachable

_ZNKSt6vectorIP16QueuedMeshUpdateSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %i.fl = ashr exact i64 %i.fj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fm, i64 1152921504606846975)
  %i.fp = select i1 %i.fn, i64 1152921504606846975, i64 %i.fo ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #29
          to label %.noexc81 unwind label %bb.aq  ; 4 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorIP16QueuedMeshUpdateSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fj ; 2 uses
  store ptr %i.cm, ptr %i.fs, align 8, !tbaa !128
  %i.ft = icmp sgt i64 %i.fj, 0
  br i1 %i.ft, label %bb.ao, label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ao:                                            ; preds = %.noexc81
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr align 8 %i.fg, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ao, %.noexc81
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.fv = load ptr, ptr %i.fd, align 8, !tbaa !122
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fx) #26
  br label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.fr, ptr %i.ah, align 8, !tbaa !121
  store ptr %i.fu, ptr %i.aj, align 8, !tbaa !126
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.fy, ptr %i.fd, align 8, !tbaa !122
  br label %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE9push_backEOS1_.exit

bb.aq:                                            ; preds = %_ZNKSt6vectorIP16QueuedMeshUpdateSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.an
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.al, %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call fastcc void @_ZNSt10unique_ptrI16QueuedMeshUpdateN12_GLOBAL__N_115DroppingDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.at

bb.ar:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %bb.ah
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %i.ev, %bb.ah ], [ %i.fz, %bb.aq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrI16QueuedMeshUpdateN12_GLOBAL__N_115DroppingDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.t
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.ar ], [ %i.cy, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.au

bb.at:                                            ; preds = %bb.q, %_ZNSt6vectorIP16QueuedMeshUpdateSaIS1_EE9push_backEOS1_.exit
  %i.ga = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.av

bb.au:                                            ; preds = %bb.o, %bb.r, %bb.as, %bb.e
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn, %bb.as ], [ %i.ag, %bb.e ], [ %i.ca, %bb.o ], [ %i.ck, %bb.r ]
  %i.gb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn42.pn.pn.pn

bb.av:                                            ; preds = %bb.a, %bb.at
  ret i1 %.not
}

declare noundef i32 @_ZN6Client13getCrackLevelEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #4

declare i48 @_ZN6Client11getCrackPosEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @_ZN8Profiler3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrI16QueuedMeshUpdateN12_GLOBAL__N_115DroppingDeleterEED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
end_hunk_1
