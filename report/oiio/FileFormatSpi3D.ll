begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %8, align 8, !tbaa !16
  store i8 0, ptr %7, align 8, !tbaa !19
  br label %82

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
end_hunk_1
begin_hunk_2

.noexc.i16:                                       ; preds = %19
  %28 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %.noexc17 unwind label %76     ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %28, ptr %6, align 8, !tbaa !29
end_hunk_2
begin_hunk_3
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %40, 24
  %n.vec = and i64 %40, -32                       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %39, i64 %index ; 3 uses
  %42 = getelementptr i8, ptr %next.gep, i64 16   ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19, !noalias !136 ; 3 uses
  %wide.load36 = load <16 x i8>, ptr %42, align 1, !tbaa !19, !noalias !136 ; 3 uses
  %43 = add <16 x i8> %wide.load, splat (i8 -65)
  %44 = add <16 x i8> %wide.load36, splat (i8 -65)
  %45 = icmp ult <16 x i8> %43, splat (i8 26)
  %46 = icmp ult <16 x i8> %44, splat (i8 26)
  %47 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %48 = or disjoint <16 x i8> %wide.load36, splat (i8 32)
  %49 = select <16 x i1> %45, <16 x i8> %47, <16 x i8> %wide.load
  %50 = select <16 x i1> %46, <16 x i8> %48, <16 x i8> %wide.load36
  store <16 x i8> %49, ptr %next.gep, align 1, !tbaa !19, !noalias !136
  store <16 x i8> %50, ptr %42, align 1, !tbaa !19, !noalias !136
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %51 = icmp eq i64 %index.next, %n.vec
  br i1 %51, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %40, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %39, i64 %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !142

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %40, -8                      ; 3 uses
  %52 = getelementptr i8, ptr %39, i64 %n.vec38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %next.gep40 = getelementptr i8, ptr %39, i64 %index39 ; 2 uses
  %wide.load41 = load <8 x i8>, ptr %next.gep40, align 1, !tbaa !19, !noalias !136 ; 3 uses
  %53 = add <8 x i8> %wide.load41, splat (i8 -65)
  %54 = icmp ult <8 x i8> %53, splat (i8 26)
  %55 = or disjoint <8 x i8> %wide.load41, splat (i8 32)
  %56 = select <8 x i1> %54, <8 x i8> %55, <8 x i8> %wide.load41
  store <8 x i8> %56, ptr %next.gep40, align 1, !tbaa !19, !noalias !136
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %57 = icmp eq i64 %index.next42, %n.vec38
  br i1 %57, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %40, %n.vec38
  br i1 %cmp.n43, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %39, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %52, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %61, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %58 = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !19, !noalias !136 ; 3 uses
  %59 = add i8 %58, -65
  %or.cond.i.i.i.i = icmp ult i8 %59, 26
  %60 = or disjoint i8 %58, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %60, i8 %58
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !19, !noalias !136
  %61 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %61, %41
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !144

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
end_hunk_3
begin_hunk_4
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %34
  %62 = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %39, %34 ] ; 2 uses
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %63, ptr %0, align 8, !tbaa !13, !alias.scope !136
  %64 = icmp eq ptr %62, %24
  br i1 %64, label %65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

65:                                               ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %66 = load i64, ptr %36, align 8, !tbaa !16, !noalias !136 ; 3 uses
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  %68 = add nuw nsw i64 %66, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %63, ptr noundef nonnull align 8 dereferenceable(1) %24, i64 %68, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %62, ptr %0, align 8, !tbaa !29, !alias.scope !136
  %69 = load i64, ptr %24, align 8, !tbaa !19, !noalias !136
  store i64 %69, ptr %63, align 8, !tbaa !19, !alias.scope !136
  %.pre4.i = load i64, ptr %36, align 8, !tbaa !16, !noalias !136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %65
  %70 = phi i64 [ %66, %65 ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %70, ptr %71, align 8, !tbaa !16, !alias.scope !136
  store ptr %24, ptr %6, align 8, !tbaa !29, !noalias !136
  store i64 0, ptr %36, align 8, !tbaa !16, !noalias !136
  store i8 0, ptr %24, align 8, !tbaa !19, !noalias !136
  %72 = load ptr, ptr %5, align 8, !tbaa !29      ; 2 uses
  %73 = icmp eq ptr %72, %10
  br i1 %73, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %74 = load i64, ptr %10, align 8, !tbaa !19
  %75 = add i64 %74, 1
  call void @_ZdlPvm(ptr noundef %72, i64 noundef %75) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %82

76:                                               ; preds = %.noexc.i16
  %77 = landingpad { ptr, i32 }
          cleanup
  %78 = load ptr, ptr %5, align 8, !tbaa !29      ; 2 uses
  %79 = icmp eq ptr %78, %10
  br i1 %79, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %76
  %80 = load i64, ptr %10, align 8, !tbaa !19
  %81 = add i64 %80, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %81) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %77

82:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %._crit_edge.i.i
  ret void
}

end_hunk_4
