Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/channelz_registry?download=true
inline.NumInlined: 1349
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE23rebalance_left_to_rightEhPSF_PSD_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE5mergeEPSF_PSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !73    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !73
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f
  %i.i = zext i8 %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !73    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.n, 4               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.q = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.r = lshr exact i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.t, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i.prol, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !276

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %i.u = icmp ult i64 %i.q, 48
  br i1 %i.u, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.3, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.1, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.2, ptr noundef nonnull align 1 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.3, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.y, %i.p
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit, label %.lr.ph.i, !llvm.loop !6

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre25.pre = load i8, ptr %i.a, align 2, !tbaa !73
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit, %bb.a
  %.pre25 = phi i8 [ %.pre25.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !73
  %.not.i20 = icmp eq i8 %i.aa, 0
  br i1 %.not.i20, label %bb.b, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit..loopexit_crit_edge

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit..loopexit_crit_edge: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit
  %.pre26 = load i8, ptr %i.l, align 1, !tbaa !73
  br label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0.in24 = phi i8 [ %.pre25, %bb.b ], [ %.0, %bb.c ]
  %.01923 = phi i8 [ 0, %bb.b ], [ %i.aj, %bb.c ] ; 2 uses
  %.0 = add i8 %.0.in24, 1                        ; 3 uses
  %i.ad = zext i8 %.01923 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 3 uses
  %i.ag = zext i8 %.0 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 %.0, ptr %i.ai, align 1, !tbaa !73
  store ptr %0, ptr %i.af, align 8, !tbaa !72
  %i.aj = add i8 %.01923, 1                       ; 2 uses
  %i.ak = load i8, ptr %i.l, align 1, !tbaa !73   ; 2 uses
  %.not = icmp ugt i8 %i.aj, %i.ak
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !277

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i8, ptr %i.a, align 2, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit..loopexit_crit_edge, %.loopexit.loopexit
  %i.al = phi i8 [ %i.ak, %.loopexit.loopexit ], [ %.pre26, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit..loopexit_crit_edge ]
  %i.am = phi i8 [ %.pre, %.loopexit.loopexit ], [ %.pre25, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit..loopexit_crit_edge ]
  %i.an = add i8 %i.am, 1
  %i.ao = add i8 %i.an, %i.al
  store i8 %i.ao, ptr %i.a, align 2, !tbaa !73
  store i8 0, ptr %i.l, align 1, !tbaa !73
  %i.ap = load ptr, ptr %0, align 8, !tbaa !72    ; 4 uses
  %i.aq = load i8, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !73  ; 4 uses
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.at, 1                ; 2 uses
  %i.av = zext i8 %i.as to i32                    ; 2 uses
  %i.aw = and i32 %i.au, 255                      ; 3 uses
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ay, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i
  %.not13.i.i = icmp eq i32 %i.aw, %i.av
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit
  %i.bd = zext i8 %i.aq to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bd
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.015.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.be, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01214.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.bb, %.lr.ph.preheader.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i.i, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %.not.i.i = icmp eq ptr %i.bf, %i.bc
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.i, label %.lr.ph.i.i, !llvm.loop !6

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.i: ; preds = %.lr.ph.i.i, %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 11
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !73
  %.not.i31.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i31.i, label %.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE13remove_valuesEhhPSD_.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.i
  %i.bj = add i8 %i.aq, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 256 ; 3 uses
  %i.bl = zext i8 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !72
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE16clear_and_deleteEPSF_PSD_(ptr noundef %i.bn, ptr noundef %2)
  %i.bo = trunc i32 %i.au to i8
  %.033.i = add i8 %i.bo, 1                       ; 2 uses
  %.not34.i = icmp ugt i8 %.033.i, %i.as
  br i1 %.not34.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE13remove_valuesEhhPSD_.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %.lr.ph37.i
  %.035.i = phi i8 [ %.0.i, %.lr.ph37.i ], [ %.033.i, %.preheader.i ] ; 3 uses
  %i.bp = add i8 %.035.i, -1                      ; 2 uses
  %i.bq = zext i8 %.035.i to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !72 ; 2 uses
  %i.bt = zext i8 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bt
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !73
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i22 = icmp ugt i8 %.0.i, %i.as
  br i1 %.not.i22, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE13remove_valuesEhhPSD_.exit, label %.lr.ph37.i, !llvm.loop !11

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE13remove_valuesEhhPSD_.exit: ; preds = %.lr.ph37.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.i, %.preheader.i
  %i.bw = add i8 %i.as, -1
  store i8 %i.bw, ptr %i.ar, align 1, !tbaa !73
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: uwtable
define linkonce_odr void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN9grpc_core12SharedBitGenEEvT_S9_OT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %mul.ov = icmp ugt i64 %i.d, 34359738360
  %.sroa.018.048 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %mul.ov, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.b
  %.not4449 = icmp eq ptr %.sroa.018.048, %1
  br i1 %.not4449, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader
  %.not.i.i.i16 = icmp eq ptr @_ZTHN9grpc_core12SharedBitGen8bit_gen_E, null
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core12SharedBitGen8bit_gen_E) ; 5 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 2 uses
  br i1 %.not.i.i.i16, label %.lr.ph51.split.us, label %.lr.ph51.split

.lr.ph51.split.us:                                ; preds = %.lr.ph51, %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit.us
  %.sroa.018.050.us = phi ptr [ %.sroa.018.0.us, %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit.us ], [ %.sroa.018.048, %.lr.ph51 ] ; 4 uses
  %i.l = ptrtoint ptr %.sroa.018.050.us to i64
  %i.m = sub i64 %i.l, %i.c                       ; 2 uses
  %.not.i.us = icmp eq i64 %i.m, -8
  br i1 %.not.i.us, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.split.us
  %i.n = ashr exact i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = tail call noundef i64 @_ZNSt24uniform_int_distributionImE5_S_ndIoN9grpc_core12SharedBitGenEmEET1_RT0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.o)
  br label %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit.us

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.us: ; preds = %.lr.ph51.split.us
  %i.q = load i64, ptr %i.i, align 8, !tbaa !132
  %i.r = icmp ugt i64 %i.q, 31
  br i1 %i.r, label %bb.d, label %_ZN9grpc_core12SharedBitGenclEv.exit.i.us

bb.d:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.us
  store i64 2, ptr %i.i, align 8, !tbaa !132
  %i.s = load i8, ptr %i.k, align 8, !tbaa !133, !range !134, !noundef !135
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !136  ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.u, ptr noundef nonnull %i.h)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit.i.us

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.u, ptr noundef nonnull %i.h)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit.i.us

_ZN9grpc_core12SharedBitGenclEv.exit.i.us:        ; preds = %bb.f, %bb.e, %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.us
  %i.v = load i64, ptr %i.i, align 8, !tbaa !132  ; 2 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.i, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !70
  br label %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit.us

_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit.us: ; preds = %_ZN9grpc_core12SharedBitGenclEv.exit.i.us, %bb.c
  %.0.i.us = phi i64 [ %i.p, %bb.c ], [ %i.y, %_ZN9grpc_core12SharedBitGenclEv.exit.i.us ]
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.i.us ; 2 uses
  %i.aa = load i64, ptr %.sroa.018.050.us, align 8, !tbaa !70
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !70
  store i64 %i.ab, ptr %.sroa.018.050.us, align 8, !tbaa !70
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !70
  %.sroa.018.0.us = getelementptr inbounds nuw i8, ptr %.sroa.018.050.us, i64 8 ; 2 uses
  %.not44.us = icmp eq ptr %.sroa.018.0.us, %1
  br i1 %.not44.us, label %.loopexit, label %.lr.ph51.split.us, !llvm.loop !278

bb.g:                                             ; preds = %bb.b
  %i.ac = and i64 %i.d, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_.exit, label %bb.h

_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = tail call noundef i64 @_ZNSt24uniform_int_distributionImE5_S_ndIoN9grpc_core12SharedBitGenEmEET1_RT0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 2)
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %.sroa.018.048, align 8, !tbaa !70
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !70
  store i64 %i.ai, ptr %.sroa.018.048, align 8, !tbaa !70
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_.exit, %bb.g
  %.sroa.025.0 = phi ptr [ %i.ae, %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_.exit ], [ %.sroa.018.048, %bb.g ] ; 2 uses
  %.not46 = icmp eq ptr %.sroa.025.0, %1
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %.not.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core12SharedBitGen8bit_gen_E, null
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core12SharedBitGen8bit_gen_E) ; 5 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 264 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 272
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 280
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZSt22__gen_two_uniform_intsImRN9grpc_core12SharedBitGenEESt4pairIT_S4_ES4_S4_OT0_.exit
  %.sroa.025.147.a = phi ptr [ %.sroa.025.0, %.lr.ph ], [ %i.bm, %_ZSt22__gen_two_uniform_intsImRN9grpc_core12SharedBitGenEESt4pairIT_S4_ES4_S4_OT0_.exit ] ; 5 uses
  %i.aq = ptrtoint ptr %.sroa.025.147.a to i64
  %i.ar = sub i64 %i.aq, %i.c
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = add nsw i64 %i.as, 1
  %i.au = add nsw i64 %i.as, 2                    ; 3 uses
  %i.av = mul i64 %i.au, %i.at                    ; 2 uses
  %.not.i.i.i.a = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.a, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call noundef i64 @_ZNSt24uniform_int_distributionImE5_S_ndIoN9grpc_core12SharedBitGenEmEET1_RT0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.av)
  br label %_ZSt22__gen_two_uniform_intsImRN9grpc_core12SharedBitGenEESt4pairIT_S4_ES4_S4_OT0_.exit

bb.k:                                             ; preds = %bb.i
  br i1 %.not.i.i.i.i.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
  br label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.ax = load i64, ptr %i.an, align 8, !tbaa !132
  %i.ay = icmp ugt i64 %i.ax, 31
  br i1 %i.ay, label %bb.m, label %_ZN9grpc_core12SharedBitGenclEv.exit.i.i.i

bb.m:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i
  store i64 2, ptr %i.an, align 8, !tbaa !132
  %i.az = load i8, ptr %i.ap, align 8, !tbaa !133, !range !134, !noundef !135
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !136 ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.bb, ptr noundef nonnull %i.am)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.bb, ptr noundef nonnull %i.am)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit.i.i.i

_ZN9grpc_core12SharedBitGenclEv.exit.i.i.i:       ; preds = %bb.o, %bb.n, %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i.i
  %i.bc = load i64, ptr %i.an, align 8, !tbaa !132 ; 2 uses
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.an, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bc
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !70
  br label %_ZSt22__gen_two_uniform_intsImRN9grpc_core12SharedBitGenEESt4pairIT_S4_ES4_S4_OT0_.exit

_ZSt22__gen_two_uniform_intsImRN9grpc_core12SharedBitGenEESt4pairIT_S4_ES4_S4_OT0_.exit: ; preds = %bb.j, %_ZN9grpc_core12SharedBitGenclEv.exit.i.i.i
  %.0.i.i.i = phi i64 [ %i.aw, %bb.j ], [ %i.bf, %_ZN9grpc_core12SharedBitGenclEv.exit.i.i.i ] ; 2 uses
  %i.bg = udiv i64 %.0.i.i.i, %i.au
  %i.bh = urem i64 %.0.i.i.i, %i.au
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.025.147.a, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bk = load i64, ptr %.sroa.025.147.a, align 8, !tbaa !70
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !70
  store i64 %i.bl, ptr %.sroa.025.147.a, align 8, !tbaa !70
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.025.147.a, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bh ; 2 uses
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !70
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !70
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !70
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !70
  %.not = icmp eq ptr %i.bm, %1
  br i1 %.not, label %.loopexit, label %bb.i, !llvm.loop !279

.lr.ph51.split:                                   ; preds = %.lr.ph51, %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit
  %.sroa.018.050 = phi ptr [ %.sroa.018.0, %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit ], [ %.sroa.018.048, %.lr.ph51 ] ; 4 uses
  %i.bq = ptrtoint ptr %.sroa.018.050 to i64
  %i.br = sub i64 %i.bq, %i.c                     ; 2 uses
  %.not.i = icmp eq i64 %i.br, -8
  br i1 %.not.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph51.split
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1
  %i.bu = tail call noundef i64 @_ZNSt24uniform_int_distributionImE5_S_ndIoN9grpc_core12SharedBitGenEmEET1_RT0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.bt)
  br label %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i: ; preds = %.lr.ph51.split
  tail call void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !132
  %i.bw = icmp ugt i64 %i.bv, 31
  br i1 %i.bw, label %bb.q, label %_ZN9grpc_core12SharedBitGenclEv.exit.i

bb.q:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i
  store i64 2, ptr %i.i, align 8, !tbaa !132
  %i.bx = load i8, ptr %i.k, align 8, !tbaa !133, !range !134, !noundef !135
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !136 ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.bz, ptr noundef nonnull %i.h)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit.i

bb.s:                                             ; preds = %bb.q
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.bz, ptr noundef nonnull %i.h)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit.i

_ZN9grpc_core12SharedBitGenclEv.exit.i:           ; preds = %bb.s, %bb.r, %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !132 ; 2 uses
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.i, align 8, !tbaa !132
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ca
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !70
  br label %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit

_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit: ; preds = %bb.p, %_ZN9grpc_core12SharedBitGenclEv.exit.i
  %.0.i = phi i64 [ %i.bu, %bb.p ], [ %i.cd, %_ZN9grpc_core12SharedBitGenclEv.exit.i ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.i ; 2 uses
  %i.cf = load i64, ptr %.sroa.018.050, align 8, !tbaa !70
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !70
  store i64 %i.cg, ptr %.sroa.018.050, align 8, !tbaa !70
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !70
  %.sroa.018.0 = getelementptr inbounds nuw i8, ptr %.sroa.018.050, i64 8 ; 2 uses
  %.not44 = icmp eq ptr %.sroa.018.0, %1
  br i1 %.not44, label %.loopexit, label %.lr.ph51.split, !llvm.loop !278

.loopexit:                                        ; preds = %_ZSt22__gen_two_uniform_intsImRN9grpc_core12SharedBitGenEESt4pairIT_S4_ES4_S4_OT0_.exit, %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit, %_ZNSt24uniform_int_distributionImEclIN9grpc_core12SharedBitGenEEEmRT_RKNS0_10param_typeE.exit.us, %bb.h, %.preheader, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr noundef i64 @_ZNSt24uniform_int_distributionImE5_S_ndIoN9grpc_core12SharedBitGenEmEET1_RT0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core12SharedBitGen8bit_gen_E, null ; 2 uses
  br i1 %.not.i.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
  br label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i:   ; preds = %bb.b, %bb.a
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core12SharedBitGen8bit_gen_E) ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 11 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !132
  %i.g = icmp ugt i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %_ZN9grpc_core12SharedBitGenclEv.exit

bb.c:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i
  store i64 2, ptr %i.e, align 8, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.j = load i8, ptr %i.i, align 8, !tbaa !133, !range !134, !noundef !135
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !136  ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit

_ZN9grpc_core12SharedBitGenclEv.exit:             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i, %bb.d, %bb.e
  %i.m = load i64, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = zext i64 %i.p to i128
  %i.r = zext i64 %1 to i128                      ; 3 uses
  %i.s = mul nuw i128 %i.q, %i.r                  ; 2 uses
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = icmp ugt i64 %1, %i.t
  %extract15 = lshr i128 %i.s, 64
  %extract.t16 = trunc nuw i128 %extract15 to i64 ; 2 uses
  br i1 %i.u, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN9grpc_core12SharedBitGenclEv.exit
  %i.v = sub i64 0, %1
  %i.w = urem i64 %i.v, %1                        ; 3 uses
  %i.x = icmp ugt i64 %i.w, %i.t
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  br i1 %.not.i.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22.us, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22.us: ; preds = %.lr.ph, %_ZN9grpc_core12SharedBitGenclEv.exit23.us
  %i.aa = phi i64 [ %i.ag, %_ZN9grpc_core12SharedBitGenclEv.exit23.us ], [ %i.n, %.lr.ph ]
  %i.ab = icmp ugt i64 %i.aa, 31
  br i1 %i.ab, label %bb.g, label %_ZN9grpc_core12SharedBitGenclEv.exit23.us

bb.g:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22.us
  store i64 2, ptr %i.e, align 8, !tbaa !132
  %i.ac = load i8, ptr %i.z, align 8, !tbaa !133, !range !134, !noundef !135
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !136 ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.ae, ptr noundef nonnull %i.d)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit23.us

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.ae, ptr noundef nonnull %i.d)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit23.us

_ZN9grpc_core12SharedBitGenclEv.exit23.us:        ; preds = %bb.i, %bb.h, %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22.us
  %i.af = load i64, ptr %i.e, align 8, !tbaa !132 ; 2 uses
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !132
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.af
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !70
  %i.aj = zext i64 %i.ai to i128
  %i.ak = mul nuw i128 %i.aj, %i.r                ; 2 uses
  %i.al = trunc i128 %i.ak to i64
  %i.am = icmp ugt i64 %i.w, %i.al
  br i1 %i.am, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22.us, label %..loopexit_crit_edge.loopexit, !llvm.loop !280

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22: ; preds = %.lr.ph, %_ZN9grpc_core12SharedBitGenclEv.exit23
  tail call void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
  %i.an = load i64, ptr %i.e, align 8, !tbaa !132
  %i.ao = icmp ugt i64 %i.an, 31
  br i1 %i.ao, label %bb.j, label %_ZN9grpc_core12SharedBitGenclEv.exit23

bb.j:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22
  store i64 2, ptr %i.e, align 8, !tbaa !132
  %i.ap = load i8, ptr %i.z, align 8, !tbaa !133, !range !134, !noundef !135
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !136 ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.ar, ptr noundef nonnull %i.d)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit23

bb.l:                                             ; preds = %bb.j
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.ar, ptr noundef nonnull %i.d)
  br label %_ZN9grpc_core12SharedBitGenclEv.exit23

_ZN9grpc_core12SharedBitGenclEv.exit23:           ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22, %bb.k, %bb.l
  %i.as = load i64, ptr %i.e, align 8, !tbaa !132 ; 2 uses
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.e, align 8, !tbaa !132
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.as
  %i.av = load i64, ptr %i.au, align 8, !tbaa !70
  %i.aw = zext i64 %i.av to i128
  %i.ax = mul nuw i128 %i.aw, %i.r                ; 2 uses
  %i.ay = trunc i128 %i.ax to i64
  %i.az = icmp ugt i64 %i.w, %i.ay
  br i1 %i.az, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i22, label %..loopexit_crit_edge.loopexit26, !llvm.loop !280

..loopexit_crit_edge.loopexit:                    ; preds = %_ZN9grpc_core12SharedBitGenclEv.exit23.us
  %extract = lshr i128 %i.ak, 64
  %extract.t = trunc nuw i128 %extract to i64
  br label %.loopexit

..loopexit_crit_edge.loopexit26:                  ; preds = %_ZN9grpc_core12SharedBitGenclEv.exit23
  %extract24 = lshr i128 %i.ax, 64
  %extract.t25 = trunc nuw i128 %extract24 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge.loopexit, %..loopexit_crit_edge.loopexit26, %bb.f, %_ZN9grpc_core12SharedBitGenclEv.exit
  %.1.off64 = phi i64 [ %extract.t16, %_ZN9grpc_core12SharedBitGenclEv.exit ], [ %extract.t16, %bb.f ], [ %extract.t, %..loopexit_crit_edge.loopexit ], [ %extract.t25, %..loopexit_crit_edge.loopexit26 ]
  ret i64 %.1.off64
}

declare void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE16internal_emplaceIJRPNS1_13map_slot_typeIlS7_EEEEENS1_14btree_iteratorINS1_10btree_nodeISE_EERSC_PSC_EESQ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !73    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre13 = load i8, ptr %.phi.trans.insert12, align 1, !tbaa !73
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !73    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !73    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EmmEv.exit, !llvm.loop !5

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !73    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !117
  br label %bb.b
end_hunk_0
