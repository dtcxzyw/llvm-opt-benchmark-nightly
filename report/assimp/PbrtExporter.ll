inline.NumInlined: 1466
inline.NumDeleted: 366
begin_hunk_0_@_ZN6Assimp12PbrtExporter20WriteWorldDefinitionEv:bb.a
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::map", align 8          ; 12 uses
  %2 = alloca %"class.std::function", align 8     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store i32 0, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp12PbrtExporter20WriteWorldDefinitionEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %1, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr @"_ZNSt17_Function_handlerIFvP6aiNodeEZN6Assimp12PbrtExporter20WriteWorldDefinitionEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvP6aiNodeEZN6Assimp12PbrtExporter20WriteWorldDefinitionEvE3$_0E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.i, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp12PbrtExporter20WriteWorldDefinitionEv:bb.a
  br i1 %.not14.i.i.i.i, label %"_ZNSt17_Function_handlerIFvP6aiNodeEZN6Assimp12PbrtExporter20WriteWorldDefinitionEvE3$_0E9_M_invokeERKSt9_Any_dataOS1_.exit", label %.lr.ph13.i.i.i.i

.lr.ph13.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1112
  br label %bb.c

bb.b:                                             ; preds = %.noexc, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.noexc ] ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !nonnull !52, !align !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6Assimp12PbrtExporter20WriteWorldDefinitionEv:bb.a

bb.c:                                             ; preds = %.noexc66, %.lr.ph13.i.i.i.i
  %indvars.iv16.i.i.i.i = phi i64 [ 0, %.lr.ph13.i.i.i.i ], [ %indvars.iv.next17.i.i.i.i, %.noexc66 ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !52, !align !63 ; 3 uses
  %i.ac = load ptr, ptr %i.q, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv16.i.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8
end_hunk_3
begin_hunk_4_@_ZN6Assimp12PbrtExporter20WriteWorldDefinitionEv:bb.a
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.bv = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.p

end_hunk_4
begin_hunk_5_@_ZN6Assimp12PbrtExporter20WriteWorldDefinitionEv:bb.a

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.h, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.h ], [ %i.bp, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit67, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp.loopexit.split-lp ]
  %i.cc = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i38 = icmp eq ptr %i.cc, null
  br i1 %.not.i38, label %_ZNSt14_Function_baseD2Ev.exit39, label %bb.s

end_hunk_5
