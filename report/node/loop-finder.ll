inline.NumInlined: 356
inline.NumDeleted: 247
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft10LoopFinder9VisitLoopEPKNS2_5BlockE:bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %i.bz)
  %.pre.i26 = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27

_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27: ; preds = %bb.i, %bb.j
  %i.ca = phi ptr [ %i.bk, %bb.i ], [ %.pre.i26, %bb.j ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.an, align 8
  store ptr %i.br, ptr %i.ca, align 8
  store i8 1, ptr %i.bc, align 8
  br label %.loopexit, !llvm.loop !6

bb.k:                                             ; preds = %bb.g
  %i.cc = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.cc, ptr %i.c, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i28 = load i32, ptr %i.cd, align 8
  %i.ce = lshr i32 %.sroa.0.0.copyload.i.i28, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 44 ; 2 uses
  %.sroa.0.0.copyload.i1.i29 = load i32, ptr %i.cf, align 4
  %i.cg = lshr i32 %.sroa.0.0.copyload.i1.i29, 4
  %i.ch = sub nsw i32 %i.ce, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = add i64 %i.bj, %i.ci                    ; 3 uses
  store i64 %i.cj, ptr %i.l, align 8
  store ptr %2, ptr %i.bq, align 8
  %i.ck = load i8, ptr %i.n, align 8
  %i.cl = and i8 %i.ck, 1
  %.not.i31 = icmp eq i8 %i.cl, 0
  %i.cm = trunc nuw i8 %i.bf to i1
  %or.cond55 = select i1 %.not.i31, i1 true, i1 %i.cm
  br i1 %or.cond55, label %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit39, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.01.0.copyload.i.i32 = load i32, ptr %i.cf, align 4, !noalias !8 ; 2 uses
  %.sroa.0.0.copyload.i.i33 = load i32, ptr %i.cd, align 8, !noalias !8 ; 2 uses
  %.not2425.i34 = icmp eq i32 %.sroa.01.0.copyload.i.i32, %.sroa.0.0.copyload.i.i33
  br i1 %.not2425.i34, label %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit39, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.l
  %i.cn = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i37, %.lr.ph.i35
  %.sroa.0.026.i36 = phi i32 [ %.sroa.01.0.copyload.i.i32, %.lr.ph.i35 ], [ %i.de, %.critedge.i37 ] ; 3 uses
  %i.cs = zext i32 %.sroa.0.026.i36 to i64
  %i.ct = add i64 %i.cs, %i.cq
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = icmp eq i8 %i.cv, 93
  br i1 %i.cw, label %bb.n, label %.critedge.i37

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.bd, align 8
  br label %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit39

.critedge.i37:                                    ; preds = %bb.m
  %i.cx = load ptr, ptr %i.cr, align 8
  %i.cy = lshr i32 %.sroa.0.026.i36, 4
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = zext i16 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 3
  %i.de = add i32 %i.dd, %.sroa.0.026.i36         ; 2 uses
  %.not24.i38 = icmp eq i32 %i.de, %.sroa.0.0.copyload.i.i33
  br i1 %.not24.i38, label %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit39, label %bb.m

_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit39: ; preds = %.critedge.i37, %bb.k, %bb.l, %bb.n
  %i.df = phi i8 [ 0, %bb.l ], [ %i.bf, %bb.k ], [ 1, %bb.n ], [ 0, %.critedge.i37 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.dj = load i8, ptr %i.di, align 8
  %i.dk = icmp eq i8 %i.dj, 1
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit39
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8
  store i8 1, ptr %i.bc, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit39
  %.0 = phi ptr [ %i.dm, %bb.o ], [ %i.dh, %_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE.exit39 ] ; 2 uses
  %.not4950 = icmp eq ptr %.0, null
  br i1 %.not4950, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41
  %.sroa.042.051 = phi ptr [ %i.dz, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41 ], [ %.0, %bb.p ] ; 2 uses
  %i.dn = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.do = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.dp = icmp ult ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41, label %bb.q, !prof !5

bb.q:                                             ; preds = %.lr.ph
  %i.dq = load ptr, ptr %i.al, align 8
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = add nsw i64 %i.du, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %i.dv)
  %.pre.i40 = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41

_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41: ; preds = %.lr.ph, %bb.q
  %i.dw = phi ptr [ %i.dn, %.lr.ph ], [ %.pre.i40, %bb.q ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dx, ptr %i.an, align 8
  store ptr %.sroa.042.051, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.042.051, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not49 = icmp eq ptr %i.dz, null
  br i1 %.not49, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41, %bb.p, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27, %bb.h, %bb.f
  %i.ea = phi i8 [ %i.bf, %bb.f ], [ %i.bf, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27 ], [ %i.bf, %bb.h ], [ %i.df, %bb.p ], [ %i.df, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41 ]
  %i.eb = phi i64 [ %i.bj, %bb.f ], [ %i.bj, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27 ], [ %i.bj, %bb.h ], [ %i.cj, %bb.p ], [ %i.cj, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41 ]
  %i.ec = phi i64 [ %i.bi, %bb.f ], [ %i.bi, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit27 ], [ %i.bi, %bb.h ], [ %i.cc, %bb.p ], [ %i.cc, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit41 ]
  %i.ed = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ee = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft10LoopFinder15CollectLoopInfoEPKNS2_5BlockEPNS3_8LoopInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !11, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.g, align 4, !noalias !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !noalias !13 ; 2 uses
  %.not2425 = icmp eq i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not2425, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.026 = phi i32 [ %.sroa.01.0.copyload.i, %.lr.ph ], [ %i.aa, %.critedge ] ; 3 uses
  %i.o = zext i32 %.sroa.0.026 to i64
  %i.p = add i64 %i.m, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i8, ptr %i.q, align 4
  %i.s = icmp eq i8 %i.r, 93
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.d, align 8
  br label %.loopexit

.critedge:                                        ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = lshr i32 %.sroa.0.026, 4
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 3
  %i.aa = add i32 %i.z, %.sroa.0.026              ; 2 uses
  %.not24 = icmp eq i32 %i.aa, %.sroa.0.0.copyload.i
  br i1 %.not24, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.critedge, %bb.c, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft10LoopFinder11GetLoopBodyEPKNS2_5BlockE(ptr dead_on_unwind noalias nonnull writable sret(%"class.v8::internal::ZoneSet") align 8 initializes((0, 8), (16, 20), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backEOS6_.exit:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.v8::internal::ZoneVector.0", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.i, align 8
  %i.j = call { ptr, i8 } @_ZNSt8_Rb_treeIPKN2v88internal8compiler10turboshaft5BlockES6_St9_IdentityIS6_ENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE16_M_insert_uniqueIRKS6_EESt4pairISt17_Rb_tree_iteratorIS6_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.k = load ptr, ptr %1, align 8
  store ptr %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.p, align 8         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  store ptr %i.r, ptr %i.p, align 8
  store ptr %i.o, ptr %.pre.i.i, align 8
  %i.s = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph11

.lr.ph11:                                         ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backEOS6_.exit, %.loopexit
  %i.v = phi ptr [ %i.az, %.loopexit ], [ %i.s, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backEOS6_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  store ptr %i.x, ptr %i.b, align 8
  store ptr %i.w, ptr %i.p, align 8
  %i.y = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph11
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %.sroa.0.0.copyload.i2.i.i.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.ac, align 4
  %i.ad = icmp ult i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i ; 2 uses
  %.19.i.i.i = select i1 %i.ad, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN2v88internal8compiler10turboshaft5BlockES6_St9_IdentityIS6_ENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRKS6_.exit.i.i, label %bb.a, !llvm.loop !16

_ZNSt8_Rb_treeIPKN2v88internal8compiler10turboshaft5BlockES6_St9_IdentityIS6_ENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRKS6_.exit.i.i: ; preds = %bb.a
  %i.ae = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.ae, label %_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit.thread, label %_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit

_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit: ; preds = %_ZNSt8_Rb_treeIPKN2v88internal8compiler10turboshaft5BlockES6_St9_IdentityIS6_ENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRKS6_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %.sroa.0.0.copyload.i2.i.i.i = load i32, ptr %i.ah, align 4
  %i.ai = icmp ult i32 %.sroa.0.0.copyload.i2.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %i.ai, label %_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit.thread, label %.loopexit, !llvm.loop !17

_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKN2v88internal8compiler10turboshaft5BlockES6_St9_IdentityIS6_ENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRKS6_.exit.i.i, %.lr.ph11, %_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit
  %i.aj = call { ptr, i8 } @_ZNSt8_Rb_treeIPKN2v88internal8compiler10turboshaft5BlockES6_St9_IdentityIS6_ENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE16_M_insert_uniqueIRKS6_EESt4pairISt17_Rb_tree_iteratorIS6_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %storemerge8 = load ptr, ptr %i.al, align 8     ; 2 uses
  %.not9 = icmp eq ptr %storemerge8, null
  br i1 %.not9, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit.thread
  %.pre12 = load ptr, ptr %i.a, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %storemerge10.a = phi ptr [ %4, %bb.d ], [ %.pre12, %.lr.ph.preheader ] ; 2 uses
  %storemerge10 = phi ptr [ %storemerge, %bb.d ], [ %storemerge8, %.lr.ph.preheader ] ; 3 uses
  %i.am = icmp eq ptr %storemerge10, %storemerge10.a
  br i1 %i.am, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.l, align 8
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.av)
  %.pre.i = load ptr, ptr %i.p, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit: ; preds = %bb.b, %bb.c
  %i.aw = phi ptr [ %i.an, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.p, align 8
  store ptr %storemerge10, ptr %i.aw, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit
  %4 = phi ptr [ %storemerge10.a, %.lr.ph ], [ %.pre, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backERKS6_.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge10, i64 64
  %storemerge = load ptr, ptr %i.ay, align 8      ; 2 uses
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %bb.d, %_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit.thread, %_ZNSt3setIPKN2v88internal8compiler10turboshaft5BlockENS3_10LoopFinder8BlockCmpENS1_13ZoneAllocatorIS6_EEE4findERKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.az = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ba = load ptr, ptr %i.l, align 8
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %._crit_edge, label %.lr.ph11

._crit_edge:                                      ; preds = %.loopexit, %_ZN2v88internal10ZoneVectorIPKNS0_8compiler10turboshaft5BlockEE9push_backEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJSB_EEES7_INSE_14_Node_iteratorISB_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, 72
  br i1 %i.g, label %bb.b, label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJSB_EEEPNSE_16_Hashtable_allocINSC_INSE_10_Hash_nodeISB_Lb1EEEEEEEDpOT_.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef 72) #10
  %.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJSB_EEEPNSE_16_Hashtable_allocINSC_INSE_10_Hash_nodeISB_Lb1EEEEEEEDpOT_.exit

_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJSB_EEEPNSE_16_Hashtable_allocINSC_INSE_10_Hash_nodeISB_Lb1EEEEEEEDpOT_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i.i.i.i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 10 uses
  %i.j = add i64 %i.h, 72
  store i64 %i.j, ptr %i.d, align 8
  store ptr null, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.m, 0                 ; 2 uses
  br i1 %.not.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJSB_EEEPNSE_16_Hashtable_allocINSC_INSE_10_Hash_nodeISB_Lb1EEEEEEEDpOT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.024.0.in = phi ptr [ %i.n, %bb.c ], [ %.sroa.024.0, %bb.e ]
  %.sroa.024.0 = load ptr, ptr %.sroa.024.0.in, align 8 ; 4 uses
  %i.o = icmp eq ptr %.sroa.024.0, null
  br i1 %i.o, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 8
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %bb.d, !llvm.loop !20

.critedge:                                        ; preds = %bb.d, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJSB_EEEPNSE_16_Hashtable_allocINSC_INSE_10_Hash_nodeISB_Lb1EEEEEEEDpOT_.exit
  %i.t = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = xor i64 %i.u, -1
  %i.w = shl i64 %i.u, 21
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %i.y = lshr i64 %i.x, 24
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 265                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 14
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, 21                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 28
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, 2147483649               ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = urem i64 %i.ag, %i.ai                   ; 3 uses
  br i1 %.not.not, label %.critedge17, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %.critedge17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ag, %i.ar
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = icmp eq ptr %i.t, %i.at
  %i.av = select i1 %i.as, i1 %i.au, i1 false
  br i1 %i.av, label %_ZNKSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ax = icmp eq i64 %i.ag, %i.bd
  %i.ay = load ptr, ptr %i.aw, align 8
  %i.az = icmp eq ptr %i.t, %i.ay
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %i.ba, label %_ZNKSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit, label %.lr.ph.i.i, !llvm.loop !21

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.020.i.i = phi ptr [ %i.bb, %bb.h ], [ %i.ao, %bb.g ]
  %i.bb = load ptr, ptr %.020.i.i, align 8        ; 5 uses
  %.not18.i.i = icmp eq ptr %i.bb, null
  br i1 %.not18.i.i, label %.critedge17, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = urem i64 %i.bd, %i.ai
  %.not19.i.i = icmp eq i64 %i.be, %i.aj
  br i1 %.not19.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i, !llvm.loop !21

..loopexit_crit_edge21.i.i:                       ; preds = %bb.i
  br label %.critedge17, !llvm.loop !21

.critedge17:                                      ; preds = %.lr.ph.i.i, %..loopexit_crit_edge21.i.i, %bb.f, %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 noundef %i.ai, i64 noundef %i.m, i64 noundef 1) #10 ; 2 uses
  %i.bh = extractvalue { i8, i64 } %i.bg, 0
  %i.bi = trunc i8 %i.bh to i1
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge17
  %i.bj = extractvalue { i8, i64 } %i.bg, 1
  tail call void @_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.bj)
  %i.bk = load i64, ptr %i.ah, align 8
  %i.bl = urem i64 %i.ag, %i.bk
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge17
  %.0.i18 = phi i64 [ %i.bl, %bb.j ], [ %i.aj, %.critedge17 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %i.ag, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.0.i18
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bq, align 8
  store ptr %i.br, ptr %i.i, align 8
  %i.bs = load ptr, ptr %i.bn, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0.i18
  %i.bu = load ptr, ptr %i.bt, align 8
  store ptr %i.i, ptr %i.bu, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISB_Lb1EEEm.exit

bb.m:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  store ptr %i.bw, ptr %i.i, align 8
  store ptr %i.i, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not11.i.i = icmp eq ptr %i.bx, null
  br i1 %.not11.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.bn, align 8
  %i.bz = load i64, ptr %i.ah, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = urem i64 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cc
  store ptr %i.i, ptr %i.cd, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = load ptr, ptr %i.bn, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0.i18
  store ptr %i.bv, ptr %i.cf, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISB_Lb1EEEm.exit

_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISB_Lb1EEEm.exit: ; preds = %bb.l, %bb.o
  %i.cg = load i64, ptr %i.l, align 8
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.l, align 8
  br label %_ZNKSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit

_ZNKSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS8_m.exit: ; preds = %bb.e, %bb.h, %bb.g, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISB_Lb1EEEm.exit
  %.sroa.030.0 = phi ptr [ %i.i, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISB_Lb1EEEm.exit ], [ %i.bb, %bb.h ], [ %i.ao, %bb.g ], [ %.sroa.024.0, %bb.e ]
  %.sroa.4.0 = phi i8 [ 1, %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISB_Lb1EEEm.exit ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.030.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: noreturn
end_hunk_0
