inline.NumInlined: 1687
inline.NumDeleted: 345
begin_hunk_0_@_ZNK6Assimp11X3DExporter22Matrix_GlobalToCurrentERK6aiNode:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4
  %4 = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30
          to label %5 unwind label %.loopexit.split-lp ; 2 uses

5:                                                ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %6, i64 64, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  %8 = load i64, ptr %i.b, align 8
  %9 = add i64 %8, 1
  store i64 %9, ptr %i.b, align 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 1096
  %11 = load ptr, ptr %10, align 8                ; 2 uses
  %.not = icmp eq ptr %11, null
  br i1 %.not, label %.loopexit55, label %.preheader

.preheader:                                       ; preds = %5, %bb.b
  %.09 = phi ptr [ %i.o, %bb.b ], [ %11, %5 ]     ; 2 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30
          to label %bb.b unwind label %.loopexit  ; 2 uses

bb.b:                                             ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.09, i64 1028
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11X3DExporter22Matrix_GlobalToCurrentERK6aiNode:bb.a
  %.not12 = icmp eq ptr %i.o, null
  br i1 %.not12, label %.loopexit55, label %.preheader, !llvm.loop !5

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i.i16 = icmp eq ptr %.pre, %3
  br i1 %.not8.i.i16, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit20, label %.lr.ph.i.i17

.loopexit55:                                      ; preds = %bb.b, %5
  %i.p = load ptr, ptr %3, align 8, !noalias !6   ; 3 uses
  %.not5469 = icmp eq ptr %3, %i.p
  br i1 %.not5469, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge, label %.lr.ph
end_hunk_1
begin_hunk_2_@_ZNK6Assimp11X3DExporter22Matrix_GlobalToCurrentERK6aiNode:bb.a

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit20: ; preds = %.lr.ph.i.i17, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_2
