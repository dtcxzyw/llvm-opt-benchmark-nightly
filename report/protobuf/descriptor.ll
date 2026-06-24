inline.NumInlined: 22186
inline.NumDeleted: 7876
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EE:bb.a
  %i.bs = zext i8 %i.bl to i16
  %.lhs.trunc68 = sub nsw i16 %i.br, %i.bs
  %i.bt = sdiv i16 %.lhs.trunc68, 2
  %i.bu = trunc nsw i16 %i.bt to i8
  %i.bv = add i8 %i.bi, -1
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %i.bv, i8 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE23rebalance_left_to_rightEhPSK_PSI_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bw)
  %i.bx = zext i8 %.sroa.speculated to i32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !513
  %i.ca = add nsw i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !513
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISJ_EESN_.exit53.thread

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISJ_EESN_.exit53.thread: ; preds = %bb.l, %bb.n, %bb.g, %bb.f, %bb.k, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISJ_EESN_.exit53, %bb.o, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISJ_EESN_.exit
  %.5 = phi i1 [ true, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISJ_EESN_.exit ], [ false, %bb.o ], [ false, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISJ_EESN_.exit53 ], [ false, %bb.k ], [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.n ], [ false, %bb.l ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE23rebalance_right_to_leftEhPSK_PSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !684    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = zext i8 %1 to i32                        ; 3 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %.idx.i = mul nuw nsw i64 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %i.i, %bb.a ]
  %.01214.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.o, %bb.a ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, label %.lr.ph.i, !llvm.loop !2353

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !684
  %.pre60 = load i8, ptr %i.d, align 8, !tbaa !22
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit ], [ %i.f, %bb.a ]
  %i.r = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit ], [ %i.g, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.pre-phi
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.x, %i.l
  %i.z = zext i8 %1 to i64                        ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.z ; 3 uses
  %narrow = mul nsw i32 %i.y, 24
  %.idx.i44 = sext i32 %narrow to i64             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.w, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit
  %i.ac = add nsw i64 %.idx.i44, -24              ; 2 uses
  %i.ad = udiv i64 %i.ac, 24
  %i.ae = add nuw nsw i64 %i.ad, 1
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.i47.preheader, %.lr.ph.i47.prol
  %.015.i48.prol = phi ptr [ %i.ag, %.lr.ph.i47.prol ], [ %i.o, %.lr.ph.i47.preheader ] ; 2 uses
  %.01214.i49.prol = phi ptr [ %i.af, %.lr.ph.i47.prol ], [ %i.aa, %.lr.ph.i47.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i47.prol ], [ 0, %.lr.ph.i47.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i48.prol, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i49.prol, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i49.prol, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i48.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol, !llvm.loop !2372

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.i47.preheader
  %.015.i48.unr = phi ptr [ %i.o, %.lr.ph.i47.preheader ], [ %i.ag, %.lr.ph.i47.prol ]
  %.01214.i49.unr = phi ptr [ %i.aa, %.lr.ph.i47.preheader ], [ %i.af, %.lr.ph.i47.prol ]
  %i.ah = icmp ult i64 %i.ac, 72
  br i1 %i.ah, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit51, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.ap, %.lr.ph.i47 ], [ %.015.i48.unr, %.lr.ph.i47.prol.loopexit ] ; 5 uses
  %.01214.i49 = phi ptr [ %i.ao, %.lr.ph.i47 ], [ %.01214.i49.unr, %.lr.ph.i47.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i48, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i49, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i48, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i48, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i48, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i48, i64 96
  %.not.i50.3 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not.i50.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit51, label %.lr.ph.i47, !llvm.loop !2353

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit51: ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !22
  %.not.i52 = icmp eq i8 %i.ar, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter62 = and i64 %i.z, 1
  %i.au = icmp eq i32 %i.m, 0
  br i1 %i.au, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.z, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.av = load i8, ptr %i.a, align 2, !tbaa !22
  %i.aw = trunc i64 %indvars.iv.epil.init to i8
  %i.ax = add i8 %i.aw, 1
  %i.ay = add i8 %i.av, %i.ax                     ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !684 ; 3 uses
  %i.bb = zext i8 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bb
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !684
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i8 %i.ay, ptr %i.bd, align 1, !tbaa !22
  store ptr %0, ptr %i.ba, align 8, !tbaa !684
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.be = load i8, ptr %i.v, align 1, !tbaa !22
  %.not55 = icmp ult i8 %i.be, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.bg = load i8, ptr %i.a, align 2, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bh = trunc nuw i64 %indvars.iv.next to i8
  %i.bi = add i8 %i.bg, %i.bh                     ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !684 ; 3 uses
  %i.bl = zext i8 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bl
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !684
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !22
  store ptr %0, ptr %i.bk, align 8, !tbaa !684
  %i.bo = load i8, ptr %i.a, align 2, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bp = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.bq = add i8 %i.bo, %i.bp                     ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !684 ; 3 uses
  %i.bt = zext i8 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bt
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !684
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %i.bq, ptr %i.bv, align 1, !tbaa !22
  store ptr %0, ptr %i.bs, align 8, !tbaa !684
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !2373

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.cd, %bb.c ] ; 4 uses
  %i.bw = add i8 %.056, %1
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !684 ; 3 uses
  %i.ca = zext i8 %.056 to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !684
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %.056, ptr %i.cc, align 1, !tbaa !22
  store ptr %2, ptr %i.bz, align 8, !tbaa !684
  %i.cd = add i8 %.056, 1                         ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = load i8, ptr %i.v, align 1, !tbaa !22
  %i.cg = zext i8 %i.cf to i32
  %i.ch = sub nsw i32 %i.cg, %i.l
  %.not = icmp slt i32 %i.ch, %i.ce
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2374

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit51
  %i.ci = load i8, ptr %i.a, align 2, !tbaa !22
  %i.cj = add i8 %i.ci, %1
  store i8 %i.cj, ptr %i.a, align 2, !tbaa !22
  %i.ck = load i8, ptr %i.v, align 1, !tbaa !22
  %i.cl = sub i8 %i.ck, %1
  store i8 %i.cl, ptr %i.v, align 1, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE23rebalance_left_to_rightEhPSK_PSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.e, 24              ; 2 uses
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [24 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [24 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 2 uses
  %i.j = add nsw i64 %.idx.i, -24                 ; 2 uses
  %i.k = udiv i64 %i.j, 24
  %i.l = add nuw nsw i64 %i.k, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.017.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %.01416.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.m = getelementptr inbounds i8, ptr %.017.i.prol, i64 -24 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i.prol, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2375

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.017.i.unr = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.j, 72
  br i1 %i.o, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.017.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01416.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.017.i, i64 -24
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -48
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.t = getelementptr inbounds i8, ptr %.017.i, i64 -72
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.017.i, i64 -96 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -96 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %.not.i.3 = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit, label %.lr.ph.i, !llvm.loop !2376

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = zext i8 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !684
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = sub nsw i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %.idx.i46 = mul nuw nsw i64 %i.y, 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit, %.lr.ph.i48
  %.015.i = phi ptr [ %i.ap, %.lr.ph.i48 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit ] ; 2 uses
  %.01214.i = phi ptr [ %i.ao, %.lr.ph.i48 ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i, i64 24
  %.not.i49 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !2353

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit: ; preds = %.lr.ph.i48
  %.pre = load i8, ptr %i.ag, align 2, !tbaa !22
  %.pre63 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit
  %.pre-phi = phi i32 [ %.pre63, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit ], [ %i.ai, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE19transfer_n_backwardEmmmPSK_PSI_.exit ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !684
  %i.ar = load i8, ptr %i.z, align 8, !tbaa !22
  %i.as = zext i8 %i.ar to i64
  %i.at = sub nsw i32 %.pre-phi, %i.c
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.as
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !22
  %.not.i50 = icmp eq i8 %i.az, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !22   ; 5 uses
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.bb, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.bd = zext i8 %i.bb to i64                    ; 2 uses
  %i.be = and i8 %i.ba, 1
  %lcmp.mod67.not.not = icmp eq i8 %i.be, 0
  br i1 %lcmp.mod67.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bf = add i8 %i.ba, %1                        ; 2 uses
  %i.bg = zext i8 %i.ba to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !684 ; 3 uses
  %i.bj = zext i8 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bj
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !684
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !22
  store ptr %2, ptr %i.bi, align 8, !tbaa !684
  %indvars.iv.next.prol = add nsw i64 %i.bd, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bm = icmp eq i8 %i.ba, 0
  br i1 %i.bm, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bp = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.bp, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.bq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter69 = and i64 %i.bq, 1
  %i.br = icmp ult i8 %i.bp, 3
  br i1 %i.br, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.bq, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.bs = trunc nuw i64 %indvars.iv to i8
  %i.bt = add i8 %i.bs, -1                        ; 2 uses
  %i.bu = add i8 %i.bt, %1                        ; 2 uses
  %i.bv = zext i8 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !684 ; 3 uses
  %i.by = zext i8 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !684
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 %i.bu, ptr %i.ca, align 1, !tbaa !22
  store ptr %2, ptr %i.bx, align 8, !tbaa !684
  %i.cb = trunc i64 %indvars.iv to i8
  %i.cc = add i8 %i.cb, -2                        ; 2 uses
  %i.cd = add i8 %i.cc, %1                        ; 2 uses
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !684 ; 3 uses
  %i.ch = zext i8 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !684
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %i.cd, ptr %i.cj, align 1, !tbaa !22
  store ptr %2, ptr %i.cg, align 8, !tbaa !684
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ck = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.ck, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !2377

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv59 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next60.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.cl = add nsw i64 %indvars.iv59, -1           ; 2 uses
  %i.cm = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.cn = trunc nuw i64 %indvars.iv59 to i8
  %i.co = sub i8 %i.cn, %1
  %i.cp = add i8 %i.co, %i.cm
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !684 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cl
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !684
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = trunc nuw i64 %i.cl to i8
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !22
  store ptr %2, ptr %i.cs, align 8, !tbaa !684
  %i.cw = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.cx = trunc i64 %indvars.iv59 to i8
  %.reass = add i8 %i.cx, %invariant.op
  %i.cy = add i8 %.reass, %i.cw
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !684 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv59
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !684
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %indvars.iv59 to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !22
  store ptr %2, ptr %i.db, align 8, !tbaa !684
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !2378

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv59.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next60.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i64 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.df = add nsw i64 %indvars.iv59.epil.init, -1 ; 2 uses
  %i.dg = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.dh = trunc nuw i64 %indvars.iv59.epil.init to i8
  %i.di = sub i8 %i.dh, %1
  %i.dj = add i8 %i.di, %i.dg
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !684 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.df
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !684
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = trunc nuw i64 %i.df to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !22
  store ptr %2, ptr %i.dm, align 8, !tbaa !684
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit
  %i.dq = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.dr = sub i8 %i.dq, %1
  store i8 %i.dr, ptr %i.ag, align 2, !tbaa !22
  %i.ds = load i8, ptr %i.a, align 1, !tbaa !22
  %i.dt = add i8 %i.ds, %1
  store i8 %i.dt, ptr %i.a, align 1, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5mergeEPSK_PSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22    ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !684
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !22
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f
  %i.i = zext i8 %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.n, 24              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.q = add nsw i64 %.idx.i, -24                 ; 2 uses
  %i.r = udiv i64 %i.q, 24
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.t, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.prol, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2379

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %i.u = icmp ult i64 %i.q, 72
  br i1 %i.u, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.3, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.2, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 72
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.3, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 96 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.y, %i.p
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, label %.lr.ph.i, !llvm.loop !2353

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre25.pre = load i8, ptr %i.a, align 2, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, %bb.a
  %.pre25 = phi i8 [ %.pre25.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %.not.i20 = icmp eq i8 %i.aa, 0
  br i1 %.not.i20, label %bb.b, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit
  %.pre26 = load i8, ptr %i.l, align 1, !tbaa !22
  br label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0.in24 = phi i8 [ %.pre25, %bb.b ], [ %.0, %bb.c ]
  %.01923 = phi i8 [ 0, %bb.b ], [ %i.aj, %bb.c ] ; 2 uses
  %.0 = add i8 %.0.in24, 1                        ; 3 uses
  %i.ad = zext i8 %.01923 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !684 ; 3 uses
  %i.ag = zext i8 %.0 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !684
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 %.0, ptr %i.ai, align 1, !tbaa !22
  store ptr %0, ptr %i.af, align 8, !tbaa !684
  %i.aj = add i8 %.01923, 1                       ; 2 uses
  %i.ak = load i8, ptr %i.l, align 1, !tbaa !22   ; 2 uses
  %.not = icmp ugt i8 %i.aj, %i.ak
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !2380

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i8, ptr %i.a, align 2, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge, %.loopexit.loopexit
  %i.al = phi i8 [ %i.ak, %.loopexit.loopexit ], [ %.pre26, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge ]
  %i.am = phi i8 [ %.pre, %.loopexit.loopexit ], [ %.pre25, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge ]
  %i.an = add i8 %i.am, 1
  %i.ao = add i8 %i.an, %i.al
  store i8 %i.ao, ptr %i.a, align 2, !tbaa !22
  store i8 0, ptr %i.l, align 1, !tbaa !22
  %i.ap = load ptr, ptr %0, align 8, !tbaa !684   ; 4 uses
  %i.aq = load i8, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 4 uses
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.at, 1                ; 2 uses
  %i.av = zext i8 %i.as to i32                    ; 2 uses
  %i.aw = and i32 %i.au, 255                      ; 3 uses
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ay ; 3 uses
  %narrow.i = mul nsw i32 %i.ax, 24
  %.idx.i.i = sext i32 %narrow.i to i64           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i
  %.not13.i.i = icmp eq i32 %i.aw, %i.av
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit
  %i.bc = zext i8 %i.aq to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.bf = udiv i64 %i.be, 24
  %i.bg = add nuw nsw i64 %i.bf, 1
  %xtraiter30 = and i64 %i.bg, 3                  ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.015.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.prol ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01214.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.prol ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.i.prol, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.015.i.i.prol, i64 24 ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2381

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.015.i.i.unr = phi ptr [ %i.bd, %.lr.ph.preheader.i.i ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.01214.i.i.unr = phi ptr [ %i.ba, %.lr.ph.preheader.i.i ], [ %i.bh, %.lr.ph.i.i.prol ]
  %i.bj = icmp ult i64 %i.be, 72
  br i1 %i.bj, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  store i8 15, ptr %i.cd, align 1, !tbaa !22
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !1822
  %i.cg = load ptr, ptr %1, align 8, !tbaa !1822
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !1822
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #45 ; 7 uses
  store ptr %.082, ptr %i.ci, align 8, !tbaa !1822
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !22
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !1822
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = icmp sgt i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cu = xor i32 %i.cs, -1
  %i.cv = add nsw i32 %i.co, %i.cu
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cv, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !1822
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_right_to_leftEhPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1822   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = zext i8 %1 to i32                        ; 3 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %i.i, %bb.a ]
  %.01214.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.o, %bb.a ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i, ptr noundef nonnull align 8 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3531

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1822
  %.pre60 = load i8, ptr %i.d, align 8, !tbaa !22
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.f, %bb.a ]
  %i.r = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.g, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.pre-phi
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.x, %i.l
  %i.z = sext i32 %i.y to i64
  %i.aa = zext i8 %1 to i64                       ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  %.idx.i44 = shl nuw nsw i64 %i.z, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.w, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.ae, %.lr.ph.i47 ], [ %i.o, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.ad, %.lr.ph.i47 ], [ %i.ab, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i48, ptr noundef nonnull align 8 dereferenceable(16) %.01214.i49, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i48, i64 16
  %.not.i50 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47, !llvm.loop !3531

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51: ; preds = %.lr.ph.i47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %.not.i52 = icmp eq i8 %i.ag, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aa, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ak = load i8, ptr %i.a, align 2, !tbaa !22
  %i.al = trunc i64 %indvars.iv.epil.init to i8
  %i.am = add i8 %i.al, 1
  %i.an = add i8 %i.ak, %i.am                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1822 ; 3 uses
  %i.aq = zext i8 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !1822
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %i.an, ptr %i.as, align 1, !tbaa !22
  store ptr %0, ptr %i.ap, align 8, !tbaa !1822
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.at = load i8, ptr %i.v, align 1, !tbaa !22
  %.not55 = icmp ult i8 %i.at, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.av = load i8, ptr %i.a, align 2, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aw = trunc nuw i64 %indvars.iv.next to i8
  %i.ax = add i8 %i.av, %i.aw                     ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1822 ; 3 uses
  %i.ba = zext i8 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ba
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !1822
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !22
  store ptr %0, ptr %i.az, align 8, !tbaa !1822
  %i.bd = load i8, ptr %i.a, align 2, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.be = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.bf = add i8 %i.bd, %i.be                     ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1822 ; 3 uses
  %i.bi = zext i8 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !1822
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 %i.bf, ptr %i.bk, align 1, !tbaa !22
  store ptr %0, ptr %i.bh, align 8, !tbaa !1822
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3533

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.bs, %bb.c ] ; 4 uses
  %i.bl = add i8 %.056, %1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1822 ; 3 uses
  %i.bp = zext i8 %.056 to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !1822
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.056, ptr %i.br, align 1, !tbaa !22
  store ptr %2, ptr %i.bo, align 8, !tbaa !1822
  %i.bs = add i8 %.056, 1                         ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = load i8, ptr %i.v, align 1, !tbaa !22
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.l
  %.not = icmp slt i32 %i.bw, %i.bt
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !3534

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51
  %i.bx = load i8, ptr %i.a, align 2, !tbaa !22
  %i.by = add i8 %i.bx, %1
  store i8 %i.by, ptr %i.a, align 2, !tbaa !22
  %i.bz = load i8, ptr %i.v, align 1, !tbaa !22
  %i.ca = sub i8 %i.bz, %1
  store i8 %i.ca, ptr %i.v, align 1, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_left_to_rightEhPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 4               ; 2 uses
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [16 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 2 uses
  %i.j = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.k = lshr exact i64 %i.j, 4
  %i.l = add nuw nsw i64 %i.k, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.017.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %.01416.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.m = getelementptr inbounds i8, ptr %.017.i.prol, i64 -16 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i.prol, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !3535

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.017.i.unr = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.j, 48
  br i1 %i.o, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.017.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01416.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.017.i, i64 -16
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -32
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds i8, ptr %.017.i, i64 -48
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  %.not.i.3 = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.i, !llvm.loop !3536

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = zext i8 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1822
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = sub nsw i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %.idx.i46 = shl nuw nsw i64 %i.y, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, %.lr.ph.i48
  %.015.i = phi ptr [ %i.ap, %.lr.ph.i48 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit ] ; 2 uses
  %.01214.i = phi ptr [ %i.ao, %.lr.ph.i48 ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i, ptr noundef nonnull align 8 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  %.not.i49 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !3531

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i48
  %.pre = load i8, ptr %i.ag, align 2, !tbaa !22
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.ai, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1822
  %i.ar = load i8, ptr %i.z, align 8, !tbaa !22
  %i.as = zext i8 %i.ar to i64
  %i.at = sub nsw i32 %.pre-phi, %i.c
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.as
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !22
  %.not.i50 = icmp eq i8 %i.az, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !22   ; 5 uses
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.bb, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.bd = zext i8 %i.bb to i64                    ; 2 uses
  %i.be = and i8 %i.ba, 1
  %lcmp.mod66.not.not = icmp eq i8 %i.be, 0
  br i1 %lcmp.mod66.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bf = add i8 %i.ba, %1                        ; 2 uses
  %i.bg = zext i8 %i.ba to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1822 ; 3 uses
  %i.bj = zext i8 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bj
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !1822
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !22
  store ptr %2, ptr %i.bi, align 8, !tbaa !1822
  %indvars.iv.next.prol = add nsw i64 %i.bd, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bm = icmp eq i8 %i.ba, 0
  br i1 %i.bm, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bp = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.bp, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.bq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter68 = and i64 %i.bq, 1
  %i.br = icmp ult i8 %i.bp, 3
  br i1 %i.br, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.bq, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.bs = trunc nuw i64 %indvars.iv to i8
  %i.bt = add i8 %i.bs, -1                        ; 2 uses
  %i.bu = add i8 %i.bt, %1                        ; 2 uses
  %i.bv = zext i8 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1822 ; 3 uses
  %i.by = zext i8 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !1822
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 %i.bu, ptr %i.ca, align 1, !tbaa !22
  store ptr %2, ptr %i.bx, align 8, !tbaa !1822
  %i.cb = trunc i64 %indvars.iv to i8
  %i.cc = add i8 %i.cb, -2                        ; 2 uses
  %i.cd = add i8 %i.cc, %1                        ; 2 uses
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1822 ; 3 uses
  %i.ch = zext i8 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !1822
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %i.cd, ptr %i.cj, align 1, !tbaa !22
  store ptr %2, ptr %i.cg, align 8, !tbaa !1822
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ck = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.ck, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !3537

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.cl = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.cm = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.cn = trunc nuw i64 %indvars.iv58 to i8
  %i.co = sub i8 %i.cn, %1
  %i.cp = add i8 %i.co, %i.cm
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1822 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cl
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !1822
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = trunc nuw i64 %i.cl to i8
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !22
  store ptr %2, ptr %i.cs, align 8, !tbaa !1822
  %i.cw = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.cx = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.cx, %invariant.op
  %i.cy = add i8 %.reass, %i.cw
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1822 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv58
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !1822
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !22
  store ptr %2, ptr %i.db, align 8, !tbaa !1822
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3538

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i64 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.df = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.dg = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.dh = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.di = sub i8 %i.dh, %1
  %i.dj = add i8 %i.di, %i.dg
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1822 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.df
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !1822
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = trunc nuw i64 %i.df to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !22
  store ptr %2, ptr %i.dm, align 8, !tbaa !1822
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.dq = load i8, ptr %i.ag, align 2, !tbaa !22
  %i.dr = sub i8 %i.dq, %1
  store i8 %i.dr, ptr %i.ag, align 2, !tbaa !22
  %i.ds = load i8, ptr %i.a, align 1, !tbaa !22
  %i.dt = add i8 %i.ds, %1
  store i8 %i.dt, ptr %i.a, align 1, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 15, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !22
  %i.l = load i8, ptr %i.j, align 1, !tbaa !22    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.m, 4               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.s = lshr exact i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.u, %.lr.ph.i.prol ], [ %i.p, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.01214.i.prol, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !3539

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp ult i64 %i.r, 48
  br i1 %i.v, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.3, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i, ptr noundef nonnull align 8 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i.3, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.z, %i.q
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3531

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i8, ptr %i.h, align 1, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %bb.d
  %i.aa = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ab = add i8 %i.aa, -1                        ; 2 uses
  store i8 %i.ab, ptr %i.h, align 1, !tbaa !22
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1822  ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !22  ; 4 uses
  %i.af = zext i8 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.af
  %i.ah = zext i8 %i.ae to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 10 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22  ; 3 uses
  %i.ak = icmp ult i8 %i.ae, %i.aj
  %i.al = zext i8 %i.ae to i64                    ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = getelementptr [16 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %narrow.i = sub nuw i8 %i.aj, %i.ae
  %i.ao = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ap, ptr align 8 %i.an, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.ai, align 1, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.aq = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.aj, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.at = add i8 %i.aq, 1                         ; 3 uses
  store i8 %i.at, ptr %i.ai, align 1, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  %i.av = load i8, ptr %i.au, align 1, !tbaa !22
  %.not.i18.i = icmp eq i8 %i.av, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.aw = zext i8 %i.at to i32
  %i.ax = add nuw nsw i32 %i.ah, 1                ; 2 uses
  %i.ay = icmp samesign ult i32 %i.ax, %i.aw
  br i1 %i.ay, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 256 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.at, %.lr.ph.i27 ], [ %i.ba, %bb.f ] ; 3 uses
  %i.ba = add i8 %.019.i, -1                      ; 3 uses
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1822 ; 2 uses
  %i.be = zext i8 %.019.i to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !1822
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i8 %.019.i, ptr %i.bg, align 1, !tbaa !22
  %i.bh = zext i8 %i.ba to i32
  %i.bi = icmp samesign ult i32 %i.ax, %i.bh
  br i1 %i.bi, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit, !llvm.loop !3540

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i, %bb.e
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1822
  %i.bk = load i8, ptr %i.ad, align 8, !tbaa !22
  %i.bl = add i8 %i.bk, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 256
  %i.bn = zext i8 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  store ptr %2, ptr %i.bo, align 8, !tbaa !1822
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !22
  %.not.i28 = icmp eq i8 %i.bq, 0
  br i1 %.not.i28, label %bb.g, label %.loopexit

end_hunk_1
