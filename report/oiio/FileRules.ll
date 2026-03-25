begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %25, 24
  %n.vec = and i64 %25, -32                       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %24, i64 %index ; 3 uses
  %27 = getelementptr i8, ptr %next.gep, i64 16   ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !23, !noalias !113 ; 3 uses
  %wide.load57 = load <16 x i8>, ptr %27, align 1, !tbaa !23, !noalias !113 ; 3 uses
  %28 = add <16 x i8> %wide.load, splat (i8 -65)
  %29 = add <16 x i8> %wide.load57, splat (i8 -65)
  %30 = icmp ult <16 x i8> %28, splat (i8 26)
  %31 = icmp ult <16 x i8> %29, splat (i8 26)
  %32 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %33 = or disjoint <16 x i8> %wide.load57, splat (i8 32)
  %34 = select <16 x i1> %30, <16 x i8> %32, <16 x i8> %wide.load
  %35 = select <16 x i1> %31, <16 x i8> %33, <16 x i8> %wide.load57
  store <16 x i8> %34, ptr %next.gep, align 1, !tbaa !23, !noalias !113
  store <16 x i8> %35, ptr %27, align 1, !tbaa !23, !noalias !113
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %36 = icmp eq i64 %index.next, %n.vec
  br i1 %36, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %25, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %24, i64 %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %25, -8                      ; 3 uses
  %37 = getelementptr i8, ptr %24, i64 %n.vec59
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %next.gep61 = getelementptr i8, ptr %24, i64 %index60 ; 2 uses
  %wide.load62 = load <8 x i8>, ptr %next.gep61, align 1, !tbaa !23, !noalias !113 ; 3 uses
  %38 = add <8 x i8> %wide.load62, splat (i8 -65)
  %39 = icmp ult <8 x i8> %38, splat (i8 26)
  %40 = or disjoint <8 x i8> %wide.load62, splat (i8 32)
  %41 = select <8 x i1> %39, <8 x i8> %40, <8 x i8> %wide.load62
  store <8 x i8> %41, ptr %next.gep61, align 1, !tbaa !23, !noalias !113
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %42 = icmp eq i64 %index.next63, %n.vec59
  br i1 %42, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %25, %n.vec59
  br i1 %cmp.n64, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %24, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %37, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %46, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %43 = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !23, !noalias !113 ; 3 uses
  %44 = add i8 %43, -65
  %or.cond.i.i.i.i = icmp ult i8 %44, 26
  %45 = or disjoint i8 %43, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %45, i8 %43
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !23, !noalias !113
  %46 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %46, %26
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !121

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
end_hunk_1
begin_hunk_2
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %47 = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %48, ptr %5, align 8, !tbaa !88, !alias.scope !113
  %49 = icmp eq ptr %47, %9
  br i1 %49, label %50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

50:                                               ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %51 = load i64, ptr %21, align 8, !tbaa !62, !noalias !113 ; 3 uses
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  %53 = add nuw nsw i64 %51, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %53, i1 false)
  br label %55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %47, ptr %5, align 8, !tbaa !63, !alias.scope !113
  %54 = load i64, ptr %9, align 8, !tbaa !23, !noalias !113
  store i64 %54, ptr %48, align 8, !tbaa !23, !alias.scope !113
  %.pre4.i = load i64, ptr %21, align 8, !tbaa !62, !noalias !113
  br label %55

55:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %50
  %56 = phi i64 [ %51, %50 ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %56, ptr %57, align 8, !tbaa !62, !alias.scope !113
  store ptr %9, ptr %6, align 8, !tbaa !63, !noalias !113
  store i64 0, ptr %21, align 8, !tbaa !62, !noalias !113
  store i8 0, ptr %9, align 8, !tbaa !23, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %58 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %58, ptr %8, align 8, !tbaa !88
  %59 = load ptr, ptr %1, align 8, !tbaa !63      ; 2 uses
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %61 = load i64, ptr %60, align 8, !tbaa !62     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i64 %61, ptr %3, align 8, !tbaa !68
  %62 = icmp ugt i64 %61, 15
  br i1 %62, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %55
  %63 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %.noexc unwind label %132      ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %63, ptr %8, align 8, !tbaa !63
  %64 = load i64, ptr %3, align 8, !tbaa !68
  store i64 %64, ptr %58, align 8, !tbaa !23
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %55
  %65 = phi ptr [ %63, %.noexc ], [ %58, %55 ]    ; 2 uses
  switch i64 %61, label %68 [
    i64 1, label %66
    i64 0, label %69
  ]

66:                                               ; preds = %._crit_edge.i.i7
  %67 = load i8, ptr %59, align 1, !tbaa !23
  store i8 %67, ptr %65, align 1, !tbaa !23
  br label %69

68:                                               ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %59, i64 %61, i1 false)
  br label %69

69:                                               ; preds = %68, %66, %._crit_edge.i.i7
  %70 = load i64, ptr %3, align 8, !tbaa !68      ; 2 uses
  %71 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 %70, ptr %71, align 8, !tbaa !62
  %72 = load ptr, ptr %8, align 8, !tbaa !63
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 %70
  store i8 0, ptr %73, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %74 = load ptr, ptr %8, align 8, !tbaa !63, !noalias !122 ; 7 uses
  %75 = load i64, ptr %71, align 8, !tbaa !62, !noalias !122 ; 9 uses
  %76 = getelementptr inbounds nuw i8, ptr %74, i64 %75
  %.not6.i.i10 = icmp samesign eq i64 %75, 0
  br i1 %.not6.i.i10, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18, label %iter.check67

iter.check67:                                     ; preds = %69
  %min.iters.check65 = icmp ult i64 %75, 8
  br i1 %min.iters.check65, label %.lr.ph.i.i11.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %iter.check67
  %min.iters.check68 = icmp ult i64 %75, 32
  br i1 %min.iters.check68, label %vec.epilog.ph85, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check69
  %n.mod.vf71 = and i64 %75, 24
  %n.vec72 = and i64 %75, -32                     ; 4 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph70
  %index74 = phi i64 [ 0, %vector.ph70 ], [ %index.next78, %vector.body73 ] ; 2 uses
  %next.gep75 = getelementptr i8, ptr %74, i64 %index74 ; 3 uses
  %77 = getelementptr i8, ptr %next.gep75, i64 16 ; 2 uses
  %wide.load76 = load <16 x i8>, ptr %next.gep75, align 1, !tbaa !23, !noalias !122 ; 3 uses
  %wide.load77 = load <16 x i8>, ptr %77, align 1, !tbaa !23, !noalias !122 ; 3 uses
  %78 = add <16 x i8> %wide.load76, splat (i8 -65)
  %79 = add <16 x i8> %wide.load77, splat (i8 -65)
  %80 = icmp ult <16 x i8> %78, splat (i8 26)
  %81 = icmp ult <16 x i8> %79, splat (i8 26)
  %82 = or disjoint <16 x i8> %wide.load76, splat (i8 32)
  %83 = or disjoint <16 x i8> %wide.load77, splat (i8 32)
  %84 = select <16 x i1> %80, <16 x i8> %82, <16 x i8> %wide.load76
  %85 = select <16 x i1> %81, <16 x i8> %83, <16 x i8> %wide.load77
  store <16 x i8> %84, ptr %next.gep75, align 1, !tbaa !23, !noalias !122
  store <16 x i8> %85, ptr %77, align 1, !tbaa !23, !noalias !122
  %index.next78 = add nuw i64 %index74, 32        ; 2 uses
  %86 = icmp eq i64 %index.next78, %n.vec72
  br i1 %86, label %middle.block79, label %vector.body73, !llvm.loop !125

middle.block79:                                   ; preds = %vector.body73
  %cmp.n80 = icmp eq i64 %75, %n.vec72
  br i1 %cmp.n80, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %middle.block79
  %ind.end96 = getelementptr i8, ptr %74, i64 %n.vec72
  %min.epilog.iters.check84 = icmp eq i64 %n.mod.vf71, 0
  br i1 %min.epilog.iters.check84, label %.lr.ph.i.i11.preheader, label %vec.epilog.ph85, !prof !119

vec.epilog.ph85:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check83
  %vec.epilog.resume.val81 = phi i64 [ %n.vec72, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check69 ]
  %n.vec87 = and i64 %75, -8                      ; 3 uses
  %87 = getelementptr i8, ptr %74, i64 %n.vec87
  br label %vec.epilog.vector.body88

vec.epilog.vector.body88:                         ; preds = %vec.epilog.vector.body88, %vec.epilog.ph85
  %index89 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph85 ], [ %index.next92, %vec.epilog.vector.body88 ] ; 2 uses
  %next.gep90 = getelementptr i8, ptr %74, i64 %index89 ; 2 uses
  %wide.load91 = load <8 x i8>, ptr %next.gep90, align 1, !tbaa !23, !noalias !122 ; 3 uses
  %88 = add <8 x i8> %wide.load91, splat (i8 -65)
  %89 = icmp ult <8 x i8> %88, splat (i8 26)
  %90 = or disjoint <8 x i8> %wide.load91, splat (i8 32)
  %91 = select <8 x i1> %89, <8 x i8> %90, <8 x i8> %wide.load91
  store <8 x i8> %91, ptr %next.gep90, align 1, !tbaa !23, !noalias !122
  %index.next92 = add nuw i64 %index89, 8         ; 2 uses
  %92 = icmp eq i64 %index.next92, %n.vec87
  br i1 %92, label %vec.epilog.middle.block93, label %vec.epilog.vector.body88, !llvm.loop !126

vec.epilog.middle.block93:                        ; preds = %vec.epilog.vector.body88
  %cmp.n94 = icmp eq i64 %75, %n.vec87
  br i1 %cmp.n94, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11.preheader

.lr.ph.i.i11.preheader:                           ; preds = %iter.check67, %vec.epilog.iter.check83, %vec.epilog.middle.block93
  %.sroa.0.08.i.i12.ph = phi ptr [ %74, %iter.check67 ], [ %ind.end96, %vec.epilog.iter.check83 ], [ %87, %vec.epilog.middle.block93 ]
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11.preheader, %.lr.ph.i.i11
  %.sroa.0.08.i.i12 = phi ptr [ %96, %.lr.ph.i.i11 ], [ %.sroa.0.08.i.i12.ph, %.lr.ph.i.i11.preheader ] ; 3 uses
  %93 = load i8, ptr %.sroa.0.08.i.i12, align 1, !tbaa !23, !noalias !122 ; 3 uses
  %94 = add i8 %93, -65
  %or.cond.i.i.i.i13 = icmp ult i8 %94, 26
  %95 = or disjoint i8 %93, 32
  %.0.i.i.i.i14 = select i1 %or.cond.i.i.i.i13, i8 %95, i8 %93
  store i8 %.0.i.i.i.i14, ptr %.sroa.0.08.i.i12, align 1, !tbaa !23, !noalias !122
  %96 = getelementptr i8, ptr %.sroa.0.08.i.i12, i64 1 ; 2 uses
  %.not.i.i15 = icmp eq ptr %96, %76
  br i1 %.not.i.i15, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11, !llvm.loop !127

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16: ; preds = %.lr.ph.i.i11, %vec.epilog.middle.block93, %middle.block79
  %.pre.i17 = load ptr, ptr %8, align 8, !tbaa !63, !noalias !122
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, %69
  %97 = phi ptr [ %.pre.i17, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16 ], [ %74, %69 ] ; 3 uses
  %98 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %98, ptr %7, align 8, !tbaa !88, !alias.scope !122
  %99 = icmp eq ptr %97, %58
  br i1 %99, label %100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

100:                                              ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  %101 = load i64, ptr %71, align 8, !tbaa !62, !noalias !122 ; 3 uses
  %102 = icmp ult i64 %101, 16
  call void @llvm.assume(i1 %102)
  %103 = add nuw nsw i64 %101, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %98, ptr noundef nonnull align 8 dereferenceable(1) %58, i64 %103, i1 false)
  br label %105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  store ptr %97, ptr %7, align 8, !tbaa !63, !alias.scope !122
  %104 = load i64, ptr %58, align 8, !tbaa !23, !noalias !122
  store i64 %104, ptr %98, align 8, !tbaa !23, !alias.scope !122
  %.pre4.i20 = load i64, ptr %71, align 8, !tbaa !62, !noalias !122
  br label %105

105:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %100
  %106 = phi ptr [ %98, %100 ], [ %97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 3 uses
  %107 = phi i64 [ %101, %100 ], [ %.pre4.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 5 uses
  %108 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %107, ptr %108, align 8, !tbaa !62, !alias.scope !122
  store ptr %58, ptr %8, align 8, !tbaa !63, !noalias !122
  store i64 0, ptr %71, align 8, !tbaa !62, !noalias !122
  store i8 0, ptr %58, align 8, !tbaa !23, !noalias !122
  %109 = load i64, ptr %57, align 8, !tbaa !62
  %110 = icmp eq i64 %109, %107
  br i1 %110, label %111, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

111:                                              ; preds = %105
  %112 = icmp eq i64 %107, 0
  br i1 %112, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr %5, align 8, !tbaa !63
  %bcmp.i = call i32 @bcmp(ptr %114, ptr %106, i64 %107)
  %115 = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %105, %111, %113
  %116 = phi i1 [ false, %105 ], [ %115, %113 ], [ true, %111 ]
  %117 = icmp eq ptr %106, %98
  br i1 %117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %118 = icmp ult i64 %107, 16
  call void @llvm.assume(i1 %118)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %119 = load i64, ptr %98, align 8, !tbaa !23
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %106, i64 noundef %120) #30
  %.pre = load ptr, ptr %8, align 8, !tbaa !63    ; 2 uses
  %121 = icmp eq ptr %.pre, %58
  br i1 %121, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %122 = load i64, ptr %58, align 8, !tbaa !23
  %123 = add i64 %122, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %123) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %124 = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %125 = icmp eq ptr %124, %48
  br i1 %125, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %126 = load i64, ptr %48, align 8, !tbaa !23
  %127 = add i64 %126, 1
  call void @_ZdlPvm(ptr noundef %124, i64 noundef %127) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %128 = load ptr, ptr %6, align 8, !tbaa !63     ; 2 uses
  %129 = icmp eq ptr %128, %9
  br i1 %129, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %130 = load i64, ptr %9, align 8, !tbaa !23
  %131 = add i64 %130, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %131) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %116

132:                                              ; preds = %.noexc.i8
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %134 = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %135 = icmp eq ptr %134, %48
  br i1 %135, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %132
  %136 = load i64, ptr %48, align 8, !tbaa !23
  %137 = add i64 %136, 1
  call void @_ZdlPvm(ptr noundef %134, i64 noundef %137) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %138 = load ptr, ptr %6, align 8, !tbaa !63     ; 2 uses
  %139 = icmp eq ptr %138, %9
  br i1 %139, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %140 = load i64, ptr %9, align 8, !tbaa !23
  %141 = add i64 %140, 1
  call void @_ZdlPvm(ptr noundef %138, i64 noundef %141) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %133
}

; Function Attrs: mustprogress uwtable
end_hunk_2
