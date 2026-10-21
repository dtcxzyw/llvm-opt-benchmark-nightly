Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/point_attribute?download=true
inline.NumInlined: 3495
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN5draco14PointAttribute26DeduplicateFormattedValuesIfLi3EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE:bb.a
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph75
  %n.vec = and i64 %wide.trip.count87, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !68
  %wide.load128 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !68
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !68
  store <4 x i32> %wide.load128, ptr %i.cb, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count87
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph75, %middle.block
  %indvars.iv84.ph = phi i64 [ 0, %.lr.ph75 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter132 = and i64 %wide.trip.count87, 3    ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv84.prol = phi i64 [ %indvars.iv.next85.prol, %scalar.ph.prol ], [ %indvars.iv84.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv84.prol
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !68
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv84.prol
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !68
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter132
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !191

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph.preheader ], [ %indvars.iv.next85.prol, %scalar.ph.prol ]
  %i.cg = sub nsw i64 %indvars.iv84.ph, %wide.trip.count87
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.loopexit, label %scalar.ph

bb.m:                                             ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %scalar.ph ], [ %indvars.iv84.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv84
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !68
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv84
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !68
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next85
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !68
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next85
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !68
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next85.1
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !68
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next85.1
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !68
  %indvars.iv.next85.2 = add nuw nsw i64 %indvars.iv84, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next85.2
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !68
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next85.2
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !68
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %exitcond88.not.3 = icmp eq i64 %indvars.iv.next85.3, %wide.trip.count87
  br i1 %exitcond88.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !192

.lr.ph73:                                         ; preds = %.lr.ph73, %.lr.ph73.preheader.new
  %indvars.iv81 = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %indvars.iv.next82.3, %.lr.ph73 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %niter.next.3, %.lr.ph73 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv81 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !68
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !68
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !68
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv81
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !68
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !68
  store i32 %i.df, ptr %i.db, align 4, !tbaa !68
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv81
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !68
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !68
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !68
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv81
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !68
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !68
  store i32 %i.dr, ptr %i.dn, align 4, !tbaa !68
  %indvars.iv.next82.3 = add nuw nsw i64 %indvars.iv81, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit130.unr-lcssa, label %.lr.ph73, !llvm.loop !193

.loopexit.loopexit130.unr-lcssa:                  ; preds = %.lr.ph73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph73.epil.preheader

.lr.ph73.epil.preheader:                          ; preds = %.loopexit.loopexit130.unr-lcssa, %.lr.ph73.preheader
  %indvars.iv81.epil.init = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvars.iv.next82.3, %.loopexit.loopexit130.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph73.epil

.lr.ph73.epil:                                    ; preds = %.lr.ph73.epil, %.lr.ph73.epil.preheader
  %indvars.iv81.epil = phi i64 [ %indvars.iv81.epil.init, %.lr.ph73.epil.preheader ], [ %indvars.iv.next82.epil, %.lr.ph73.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph73.epil.preheader ], [ %epil.iter.next, %.lr.ph73.epil ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv81.epil ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !68
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !68
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !68
  %indvars.iv.next82.epil = add nuw nsw i64 %indvars.iv81.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph73.epil, !llvm.loop !194

.loopexit:                                        ; preds = %.loopexit.loopexit130.unr-lcssa, %.lr.ph73.epil, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit
  store i32 %.sroa.059.1, ptr %i.f, align 8, !tbaa !62
  br label %.thread

.thread:                                          ; preds = %.loopexit, %._crit_edge, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_EC2Em.exit
  %.sroa.059.0.lcssa112117 = phi i32 [ 0, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_EC2Em.exit ], [ %.sroa.059.1, %._crit_edge ], [ %.sroa.059.1, %.loopexit ]
  %.idx126 = shl nuw nsw i64 %i.h, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx126) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit: ; preds = %bb.a, %.thread
  %.sroa.059.0.lcssa112118 = phi i32 [ %.sroa.059.0.lcssa112117, %.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.057)
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !95  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt5arrayIjLm3EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %i.dx, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit ] ; 2 uses
  %i.dy = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !87 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #15
  %.not.i.i.i.i28 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i28, label %_ZNSt10_HashtableISt5arrayIjLm3EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableISt5arrayIjLm3EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit
  %i.dz = load ptr, ptr %3, align 8, !tbaa !93
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !94
  %i.eb = shl i64 %i.ea, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dz, i8 0, i64 %i.eb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ec = load ptr, ptr %3, align 8, !tbaa !93    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.a
  br i1 %i.ed, label %_ZNSt13unordered_mapISt5arrayIjLm3EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10_HashtableISt5arrayIjLm3EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !94
  %i.ef = shl i64 %i.ee, 3
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #15
  br label %_ZNSt13unordered_mapISt5arrayIjLm3EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit

_ZNSt13unordered_mapISt5arrayIjLm3EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt5arrayIjLm3EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.sroa.059.0.lcssa112118

bb.o:                                             ; preds = %bb.m, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.m ], [ %i.ah, %bb.e ]
  %.idx = shl nuw nsw i64 %i.h, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit30

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit30: ; preds = %bb.o, %bb.b
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn.pn.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.057)
  call void @_ZNSt13unordered_mapISt5arrayIjLm3EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5draco14PointAttribute26DeduplicateFormattedValuesIfLi4EEEjRKNS_17GeometryAttributeENS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unordered_map.119", align 8 ; 13 uses
  %.sroa.053.sroa.0 = alloca <4 x float>, align 16 ; 5 uses
  %4 = alloca %"struct.std::pair.145", align 16   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.053.sroa.0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #14
          to label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_EC2Em.exit unwind label %bb.b ; 16 uses

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_EC2Em.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.k = ptrtoaddr ptr %i.j to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !68
  %.pre = load i32, ptr %i.f, align 8, !tbaa !32
  %i.l = icmp eq i32 %.pre, 0
  br i1 %i.l, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_EC2Em.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g
  %i.q = icmp eq i32 %.sroa.055.1, %i.aq
  br i1 %i.q, label %.thread, label %bb.h

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit26

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.sroa.055.066 = phi i32 [ 0, %.lr.ph ], [ %.sroa.055.1, %bb.g ] ; 5 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !68, !noalias !204
  %i.t = trunc nuw i64 %indvars.iv to i32
  %i.u = add i32 %i.s, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !83
  %i.w = load i64, ptr %i.n, align 8, !tbaa !66
  %i.x = zext i32 %i.u to i64
  %i.y = mul nsw i64 %i.w, %i.x
  %i.z = load ptr, ptr %1, align 8, !tbaa !84
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.v
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.y   ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ac, align 1
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 1
  %5 = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.2.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x float> %5, ptr %.sroa.053.sroa.0, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store <4 x float> %5, ptr %4, align 16
  store i32 %.sroa.055.066, ptr %i.o, align 16, !tbaa !68
  %i.ad = invoke { ptr, i8 } @_ZNSt10_HashtableISt5arrayIjLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S7_EEEES2_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(20) %4)
          to label %_ZNSt13unordered_mapISt5arrayIjLm4EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEE6insertISA_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleISC_OT_EE5valueESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEE4typeESJ_.exit unwind label %bb.e ; 2 uses

_ZNSt13unordered_mapISt5arrayIjLm4EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEE6insertISA_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleISC_OT_EE5valueESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEE4typeESJ_.exit: ; preds = %bb.c
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ae = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ae, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapISt5arrayIjLm4EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEE6insertISA_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleISC_OT_EE5valueESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEE4typeESJ_.exit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !68
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.f:                                             ; preds = %_ZNSt13unordered_mapISt5arrayIjLm4EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEE6insertISA_IS1_S5_EEENSt9enable_ifIXsr16is_constructibleISC_OT_EE5valueESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEE4typeESJ_.exit
  %i.ai = zext i32 %.sroa.055.066 to i64
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = load ptr, ptr %0, align 8, !tbaa !84
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 16 %.sroa.053.sroa.0, i64 %i.aj, i1 false)
  %i.ao = add i32 %.sroa.055.066, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ %.sroa.055.066, %bb.f ], [ %i.ag, %bb.d ]
  %.sroa.055.1 = phi i32 [ %i.ao, %bb.f ], [ %.sroa.055.066, %bb.d ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %.sink, ptr %i.ap, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.f, align 8, !tbaa !32  ; 6 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.c, label %._crit_edge, !llvm.loop !198

bb.h:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4, !tbaa !57, !range !63, !noundef !64
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 6 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = and i64 %i.bc, 17179869180
  %.not72 = icmp eq i64 %i.bd, 0
  br i1 %.not72, label %.loopexit, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %.preheader
  %i.be = lshr exact i64 %i.bc, 2                 ; 3 uses
  %wide.trip.count = and i64 %i.be, 4294967295
  %i.bf = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 3
  br i1 %i.bg, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter = and i64 %i.be, 4294967292
  br label %.lr.ph69

bb.i:                                             ; preds = %bb.h
  %i.bh = zext i32 %i.aq to i64                   ; 4 uses
  store i8 0, ptr %i.at, align 4, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59 ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !58 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %i.bh
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = sub nuw nsw i64 %i.bh, %i.bp
  invoke void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr %i.bk, i64 noundef %i.br, ptr noundef nonnull align 4 dereferenceable(4) @_ZN5dracoL27kInvalidAttributeValueIndexE)
          to label %._ZN5draco14PointAttribute18SetExplicitMappingEm.exit_crit_edge unwind label %bb.m

._ZN5draco14PointAttribute18SetExplicitMappingEm.exit_crit_edge: ; preds = %bb.j
  %.pre85 = load i32, ptr %i.f, align 8, !tbaa !62
  br label %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit

bb.k:                                             ; preds = %bb.i
  %i.bs = icmp ugt i64 %i.bp, %i.bh
  br i1 %i.bs, label %bb.l, label %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bh ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i.i.i, label %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.l
  store ptr %i.bt, ptr %i.bj, align 8, !tbaa !59
  br label %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit

_ZN5draco14PointAttribute18SetExplicitMappingEm.exit: ; preds = %._ZN5draco14PointAttribute18SetExplicitMappingEm.exit_crit_edge, %bb.k, %bb.l, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.bu = phi i32 [ %.pre85, %._ZN5draco14PointAttribute18SetExplicitMappingEm.exit_crit_edge ], [ %i.aq, %bb.k ], [ %i.aq, %bb.l ], [ %i.aq, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i ] ; 3 uses
  %.not73 = icmp eq i32 %i.bu, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit
  %i.bv = load ptr, ptr %i.bi, align 8, !tbaa !58 ; 7 uses
  %wide.trip.count83 = zext i32 %i.bu to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.bu, 8
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = sub i64 %i.k, %i.bw
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph71
  %n.vec = and i64 %wide.trip.count83, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !68
  %wide.load124 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !68
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !68
  store <4 x i32> %wide.load124, ptr %i.cb, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count83
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph71, %middle.block
  %indvars.iv80.ph = phi i64 [ 0, %.lr.ph71 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter128 = and i64 %wide.trip.count83, 3    ; 2 uses
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv80.prol = phi i64 [ %indvars.iv.next81.prol, %scalar.ph.prol ], [ %indvars.iv80.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv80.prol
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !68
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv80.prol
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !68
  %indvars.iv.next81.prol = add nuw nsw i64 %indvars.iv80.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter128
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !200

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv80.unr = phi i64 [ %indvars.iv80.ph, %scalar.ph.preheader ], [ %indvars.iv.next81.prol, %scalar.ph.prol ]
  %i.cg = sub nsw i64 %indvars.iv80.ph, %wide.trip.count83
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.loopexit, label %scalar.ph

bb.m:                                             ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.3, %scalar.ph ], [ %indvars.iv80.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv80
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !68
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv80
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !68
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next81
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !68
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next81
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !68
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next81.1
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !68
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next81.1
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !68
  %indvars.iv.next81.2 = add nuw nsw i64 %indvars.iv80, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next81.2
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !68
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next81.2
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !68
  %indvars.iv.next81.3 = add nuw nsw i64 %indvars.iv80, 4 ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %indvars.iv.next81.3, %wide.trip.count83
  br i1 %exitcond84.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !201

.lr.ph69:                                         ; preds = %.lr.ph69, %.lr.ph69.preheader.new
  %indvars.iv77 = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %indvars.iv.next78.3, %.lr.ph69 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %niter.next.3, %.lr.ph69 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv77 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !68
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !68
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !68
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv77
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !68
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !68
  store i32 %i.df, ptr %i.db, align 4, !tbaa !68
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv77
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !68
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !68
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !68
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !68
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !68
  store i32 %i.dr, ptr %i.dn, align 4, !tbaa !68
  %indvars.iv.next78.3 = add nuw nsw i64 %indvars.iv77, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit126.unr-lcssa, label %.lr.ph69, !llvm.loop !202

.loopexit.loopexit126.unr-lcssa:                  ; preds = %.lr.ph69
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.loopexit.loopexit126.unr-lcssa, %.lr.ph69.preheader
  %indvars.iv77.epil.init = phi i64 [ 0, %.lr.ph69.preheader ], [ %indvars.iv.next78.3, %.loopexit.loopexit126.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph69.epil

.lr.ph69.epil:                                    ; preds = %.lr.ph69.epil, %.lr.ph69.epil.preheader
  %indvars.iv77.epil = phi i64 [ %indvars.iv77.epil.init, %.lr.ph69.epil.preheader ], [ %indvars.iv.next78.epil, %.lr.ph69.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph69.epil.preheader ], [ %epil.iter.next, %.lr.ph69.epil ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv77.epil ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !68
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !68
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !68
  %indvars.iv.next78.epil = add nuw nsw i64 %indvars.iv77.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph69.epil, !llvm.loop !203

.loopexit:                                        ; preds = %.loopexit.loopexit126.unr-lcssa, %.lr.ph69.epil, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit
  store i32 %.sroa.055.1, ptr %i.f, align 8, !tbaa !62
  br label %.thread

.thread:                                          ; preds = %.loopexit, %._crit_edge, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_EC2Em.exit
  %.sroa.055.0.lcssa108113 = phi i32 [ 0, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_EC2Em.exit ], [ %.sroa.055.1, %._crit_edge ], [ %.sroa.055.1, %.loopexit ]
  %.idx122 = shl nuw nsw i64 %i.h, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx122) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit: ; preds = %bb.a, %.thread
  %.sroa.055.0.lcssa108114 = phi i32 [ %.sroa.055.0.lcssa108113, %.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.053.sroa.0)
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !99  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt5arrayIjLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %i.dx, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit ] ; 2 uses
  %i.dy = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !87 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 40) #15
  %.not.i.i.i.i24 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i24, label %_ZNSt10_HashtableISt5arrayIjLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt10_HashtableISt5arrayIjLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit
  %i.dz = load ptr, ptr %3, align 8, !tbaa !97
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !98
  %i.eb = shl i64 %i.ea, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dz, i8 0, i64 %i.eb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ec = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.a
  br i1 %i.ed, label %_ZNSt13unordered_mapISt5arrayIjLm4EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10_HashtableISt5arrayIjLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !98
  %i.ef = shl i64 %i.ee, 3
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #15
  br label %_ZNSt13unordered_mapISt5arrayIjLm4EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit

_ZNSt13unordered_mapISt5arrayIjLm4EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt5arrayIjLm4EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.sroa.055.0.lcssa108114

bb.o:                                             ; preds = %bb.m, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.m ], [ %i.ah, %bb.e ]
  %.idx = shl nuw nsw i64 %i.h, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx) #15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit26

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEES3_ED2Ev.exit26: ; preds = %bb.o, %bb.b
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn.pn.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.053.sroa.0)
  call void @_ZNSt13unordered_mapISt5arrayIjLm4EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapISt5arrayIjLm1EEN5draco9IndexTypeIjNS2_29AttributeValueIndex_tag_type_EEENS2_9HashArrayIS1_EESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !87 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #15
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !81
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #15
  br label %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S7_EEEES2_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load <2 x i32>, ptr %1, align 4, !tbaa !28
  %i.d = load i32, ptr %1, align 4, !tbaa !28     ; 5 uses
  store <2 x i32> %i.c, ptr %i.b, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100
  %.not.not = icmp eq i64 %i.f, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = add nuw nsw i64 %i.h, 214
  %i.j = xor i64 %i.i, 1092                       ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !81   ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 5 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %.critedge27, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.034.0.in = phi ptr [ %i.q, %bb.b ], [ %.sroa.034.0, %bb.d ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.0.in, align 8, !tbaa !87 ; 4 uses
  %.not = icmp eq ptr %.sroa.034.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %rhsv.i.i.i = load i32, ptr %i.r, align 4
  %.not.i.i.i = icmp eq i32 %i.d, %rhsv.i.i.i
  br i1 %.not.i.i.i, label %_ZNKSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.c, !llvm.loop !205

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.d to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = add nuw nsw i64 %i.t, 214
  %i.v = xor i64 %i.u, 1092                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !81
  %i.y = urem i64 %i.v, %i.x
  br label %.critedge27

bb.f:                                             ; preds = %.thread
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !87   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !103
  %i.ad = icmp eq i64 %i.j, %i.ac
  %rhsv.i.i.i.i20.i.i = load i32, ptr %i.aa, align 8
  %.not.i.i.i.i21.i.i = icmp eq i32 %i.d, %rhsv.i.i.i.i20.i.i
  %i.ae = select i1 %i.ad, i1 %.not.i.i.i.i21.i.i, i1 false
  br i1 %i.ae, label %_ZNKSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ag = icmp eq i64 %i.j, %i.ak
  %rhsv.i.i.i.i.i.i = load i32, ptr %i.af, align 8
  %.not.i.i.i.i.i.i = icmp eq i32 %i.d, %rhsv.i.i.i.i.i.i
  %i.ah = select i1 %i.ag, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %i.ah, label %_ZNKSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.i.i, !llvm.loop !206

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.022.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.z, %bb.f ]
  %i.ai = load ptr, ptr %.022.i.i, align 8, !tbaa !87 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !103 ; 2 uses
  %i.al = urem i64 %i.ak, %i.l
  %.not19.i.i = icmp eq i64 %i.al, %i.m
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge23.i.i, !llvm.loop !206

..loopexit_crit_edge23.i.i:                       ; preds = %bb.h
  br label %.critedge27, !llvm.loop !206

.critedge27:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge23.i.i, %.thread
  %i.am = phi i64 [ %i.y, %bb.e ], [ %i.m, %.thread ], [ %i.m, %..loopexit_crit_edge23.i.i ], [ %i.m, %.lr.ph.i.i ]
  %i.an = phi i64 [ %i.v, %bb.e ], [ %i.j, %.thread ], [ %i.j, %..loopexit_crit_edge23.i.i ], [ %i.j, %.lr.ph.i.i ]
  %i.ao = invoke ptr @_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29

_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29: ; preds = %.critedge27
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #15
  resume { ptr, i32 } %i.ap

_ZNKSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.042.0.ph = phi ptr [ %.sroa.034.0, %bb.d ], [ %i.z, %bb.f ], [ %i.ai, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #15
  br label %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %.sroa.443.055 = phi i8 [ 0, %_ZNKSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ 1, %.critedge27 ]
  %.sroa.042.053 = phi ptr [ %.sroa.042.0.ph, %_ZNKSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ %i.ao, %.critedge27 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.042.053, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.443.055, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !100
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableISt5arrayIjLm1EESt4pairIKS1_N5draco9IndexTypeIjNS4_29AttributeValueIndex_tag_type_EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS4_9HashArrayIS1_EENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #17 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !104
  invoke void @__cxa_rethrow() #16
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
