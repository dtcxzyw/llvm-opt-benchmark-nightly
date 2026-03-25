begin_hunk_0
inline.NumInlined: 5824
inline.NumDeleted: 2063
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %25, 24
  %n.vec = and i64 %25, -32                       ; 4 uses
  %27 = getelementptr i8, ptr %24, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %24, i64 %index ; 3 uses
  %28 = getelementptr i8, ptr %next.gep, i64 16   ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !23, !noalias !113 ; 3 uses
  %wide.load57 = load <16 x i8>, ptr %28, align 1, !tbaa !23, !noalias !113 ; 3 uses
  %29 = add <16 x i8> %wide.load, splat (i8 -65)
  %30 = add <16 x i8> %wide.load57, splat (i8 -65)
  %31 = icmp ult <16 x i8> %29, splat (i8 26)
  %32 = icmp ult <16 x i8> %30, splat (i8 26)
  %33 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %34 = or disjoint <16 x i8> %wide.load57, splat (i8 32)
  %35 = select <16 x i1> %31, <16 x i8> %33, <16 x i8> %wide.load
  %36 = select <16 x i1> %32, <16 x i8> %34, <16 x i8> %wide.load57
  store <16 x i8> %35, ptr %next.gep, align 1, !tbaa !23, !noalias !113
  store <16 x i8> %36, ptr %28, align 1, !tbaa !23, !noalias !113
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %37 = icmp eq i64 %index.next, %n.vec
  br i1 %37, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %25, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %25, -8                      ; 3 uses
  %38 = getelementptr i8, ptr %24, i64 %n.vec59
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %next.gep61 = getelementptr i8, ptr %24, i64 %index60 ; 2 uses
  %wide.load62 = load <8 x i8>, ptr %next.gep61, align 1, !tbaa !23, !noalias !113 ; 3 uses
  %39 = add <8 x i8> %wide.load62, splat (i8 -65)
  %40 = icmp ult <8 x i8> %39, splat (i8 26)
  %41 = or disjoint <8 x i8> %wide.load62, splat (i8 32)
  %42 = select <8 x i1> %40, <8 x i8> %41, <8 x i8> %wide.load62
  store <8 x i8> %42, ptr %next.gep61, align 1, !tbaa !23, !noalias !113
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %43 = icmp eq i64 %index.next63, %n.vec59
  br i1 %43, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %25, %n.vec59
  br i1 %cmp.n64, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %24, %iter.check ], [ %27, %vec.epilog.iter.check ], [ %38, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %47, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %44 = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !23, !noalias !113 ; 3 uses
  %45 = add i8 %44, -65
  %or.cond.i.i.i.i = icmp ult i8 %45, 26
  %46 = or disjoint i8 %44, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %46, i8 %44
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !23, !noalias !113
  %47 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %47, %26
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !121

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
end_hunk_1
begin_hunk_2
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %48 = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %49, ptr %5, align 8, !tbaa !88, !alias.scope !113
  %50 = icmp eq ptr %48, %9
  br i1 %50, label %51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

51:                                               ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %52 = load i64, ptr %21, align 8, !tbaa !62, !noalias !113 ; 3 uses
  %53 = icmp ult i64 %52, 16
  call void @llvm.assume(i1 %53)
  %54 = add nuw nsw i64 %52, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %49, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %54, i1 false)
  br label %56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %48, ptr %5, align 8, !tbaa !63, !alias.scope !113
  %55 = load i64, ptr %9, align 8, !tbaa !23, !noalias !113
  store i64 %55, ptr %49, align 8, !tbaa !23, !alias.scope !113
  %.pre4.i = load i64, ptr %21, align 8, !tbaa !62, !noalias !113
  br label %56

56:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %51
  %57 = phi i64 [ %52, %51 ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %57, ptr %58, align 8, !tbaa !62, !alias.scope !113
  store ptr %9, ptr %6, align 8, !tbaa !63, !noalias !113
  store i64 0, ptr %21, align 8, !tbaa !62, !noalias !113
  store i8 0, ptr %9, align 8, !tbaa !23, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %59 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %59, ptr %8, align 8, !tbaa !88
  %60 = load ptr, ptr %1, align 8, !tbaa !63      ; 2 uses
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %62 = load i64, ptr %61, align 8, !tbaa !62     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i64 %62, ptr %3, align 8, !tbaa !68
  %63 = icmp ugt i64 %62, 15
  br i1 %63, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %56
  %64 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %.noexc unwind label %134      ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %64, ptr %8, align 8, !tbaa !63
  %65 = load i64, ptr %3, align 8, !tbaa !68
  store i64 %65, ptr %59, align 8, !tbaa !23
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %56
  %66 = phi ptr [ %64, %.noexc ], [ %59, %56 ]    ; 2 uses
  switch i64 %62, label %69 [
    i64 1, label %67
    i64 0, label %70
  ]

67:                                               ; preds = %._crit_edge.i.i7
  %68 = load i8, ptr %60, align 1, !tbaa !23
  store i8 %68, ptr %66, align 1, !tbaa !23
  br label %70

69:                                               ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %60, i64 %62, i1 false)
  br label %70

70:                                               ; preds = %69, %67, %._crit_edge.i.i7
  %71 = load i64, ptr %3, align 8, !tbaa !68      ; 2 uses
  %72 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 %71, ptr %72, align 8, !tbaa !62
  %73 = load ptr, ptr %8, align 8, !tbaa !63
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %71
  store i8 0, ptr %74, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %75 = load ptr, ptr %8, align 8, !tbaa !63, !noalias !122 ; 7 uses
  %76 = load i64, ptr %72, align 8, !tbaa !62, !noalias !122 ; 9 uses
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 %76
  %.not6.i.i10 = icmp samesign eq i64 %76, 0
  br i1 %.not6.i.i10, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18, label %iter.check68

iter.check68:                                     ; preds = %70
  %min.iters.check66 = icmp ult i64 %76, 8
  br i1 %min.iters.check66, label %.lr.ph.i.i11.preheader, label %vector.main.loop.iter.check70

vector.main.loop.iter.check70:                    ; preds = %iter.check68
  %min.iters.check69 = icmp ult i64 %76, 32
  br i1 %min.iters.check69, label %vec.epilog.ph86, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check70
  %n.mod.vf72 = and i64 %76, 24
  %n.vec73 = and i64 %76, -32                     ; 4 uses
  %78 = getelementptr i8, ptr %75, i64 %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph71
  %index75 = phi i64 [ 0, %vector.ph71 ], [ %index.next79, %vector.body74 ] ; 2 uses
  %next.gep76 = getelementptr i8, ptr %75, i64 %index75 ; 3 uses
  %79 = getelementptr i8, ptr %next.gep76, i64 16 ; 2 uses
  %wide.load77 = load <16 x i8>, ptr %next.gep76, align 1, !tbaa !23, !noalias !122 ; 3 uses
  %wide.load78 = load <16 x i8>, ptr %79, align 1, !tbaa !23, !noalias !122 ; 3 uses
  %80 = add <16 x i8> %wide.load77, splat (i8 -65)
  %81 = add <16 x i8> %wide.load78, splat (i8 -65)
  %82 = icmp ult <16 x i8> %80, splat (i8 26)
  %83 = icmp ult <16 x i8> %81, splat (i8 26)
  %84 = or disjoint <16 x i8> %wide.load77, splat (i8 32)
  %85 = or disjoint <16 x i8> %wide.load78, splat (i8 32)
  %86 = select <16 x i1> %82, <16 x i8> %84, <16 x i8> %wide.load77
  %87 = select <16 x i1> %83, <16 x i8> %85, <16 x i8> %wide.load78
  store <16 x i8> %86, ptr %next.gep76, align 1, !tbaa !23, !noalias !122
  store <16 x i8> %87, ptr %79, align 1, !tbaa !23, !noalias !122
  %index.next79 = add nuw i64 %index75, 32        ; 2 uses
  %88 = icmp eq i64 %index.next79, %n.vec73
  br i1 %88, label %middle.block80, label %vector.body74, !llvm.loop !125

middle.block80:                                   ; preds = %vector.body74
  %cmp.n81 = icmp eq i64 %76, %n.vec73
  br i1 %cmp.n81, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %vec.epilog.iter.check84

vec.epilog.iter.check84:                          ; preds = %middle.block80
  %min.epilog.iters.check85 = icmp eq i64 %n.mod.vf72, 0
  br i1 %min.epilog.iters.check85, label %.lr.ph.i.i11.preheader, label %vec.epilog.ph86, !prof !119

vec.epilog.ph86:                                  ; preds = %vector.main.loop.iter.check70, %vec.epilog.iter.check84
  %vec.epilog.resume.val82 = phi i64 [ %n.vec73, %vec.epilog.iter.check84 ], [ 0, %vector.main.loop.iter.check70 ]
  %n.vec88 = and i64 %76, -8                      ; 3 uses
  %89 = getelementptr i8, ptr %75, i64 %n.vec88
  br label %vec.epilog.vector.body89

vec.epilog.vector.body89:                         ; preds = %vec.epilog.vector.body89, %vec.epilog.ph86
  %index90 = phi i64 [ %vec.epilog.resume.val82, %vec.epilog.ph86 ], [ %index.next93, %vec.epilog.vector.body89 ] ; 2 uses
  %next.gep91 = getelementptr i8, ptr %75, i64 %index90 ; 2 uses
  %wide.load92 = load <8 x i8>, ptr %next.gep91, align 1, !tbaa !23, !noalias !122 ; 3 uses
  %90 = add <8 x i8> %wide.load92, splat (i8 -65)
  %91 = icmp ult <8 x i8> %90, splat (i8 26)
  %92 = or disjoint <8 x i8> %wide.load92, splat (i8 32)
  %93 = select <8 x i1> %91, <8 x i8> %92, <8 x i8> %wide.load92
  store <8 x i8> %93, ptr %next.gep91, align 1, !tbaa !23, !noalias !122
  %index.next93 = add nuw i64 %index90, 8         ; 2 uses
  %94 = icmp eq i64 %index.next93, %n.vec88
  br i1 %94, label %vec.epilog.middle.block94, label %vec.epilog.vector.body89, !llvm.loop !126

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body89
  %cmp.n95 = icmp eq i64 %76, %n.vec88
  br i1 %cmp.n95, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11.preheader

.lr.ph.i.i11.preheader:                           ; preds = %iter.check68, %vec.epilog.iter.check84, %vec.epilog.middle.block94
  %.sroa.0.08.i.i12.ph = phi ptr [ %75, %iter.check68 ], [ %78, %vec.epilog.iter.check84 ], [ %89, %vec.epilog.middle.block94 ]
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11.preheader, %.lr.ph.i.i11
  %.sroa.0.08.i.i12 = phi ptr [ %98, %.lr.ph.i.i11 ], [ %.sroa.0.08.i.i12.ph, %.lr.ph.i.i11.preheader ] ; 3 uses
  %95 = load i8, ptr %.sroa.0.08.i.i12, align 1, !tbaa !23, !noalias !122 ; 3 uses
  %96 = add i8 %95, -65
  %or.cond.i.i.i.i13 = icmp ult i8 %96, 26
  %97 = or disjoint i8 %95, 32
  %.0.i.i.i.i14 = select i1 %or.cond.i.i.i.i13, i8 %97, i8 %95
  store i8 %.0.i.i.i.i14, ptr %.sroa.0.08.i.i12, align 1, !tbaa !23, !noalias !122
  %98 = getelementptr i8, ptr %.sroa.0.08.i.i12, i64 1 ; 2 uses
  %.not.i.i15 = icmp eq ptr %98, %77
  br i1 %.not.i.i15, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11, !llvm.loop !127

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16: ; preds = %.lr.ph.i.i11, %vec.epilog.middle.block94, %middle.block80
  %.pre.i17 = load ptr, ptr %8, align 8, !tbaa !63, !noalias !122
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, %70
  %99 = phi ptr [ %.pre.i17, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16 ], [ %75, %70 ] ; 3 uses
  %100 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %100, ptr %7, align 8, !tbaa !88, !alias.scope !122
  %101 = icmp eq ptr %99, %59
  br i1 %101, label %102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

102:                                              ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  %103 = load i64, ptr %72, align 8, !tbaa !62, !noalias !122 ; 3 uses
  %104 = icmp ult i64 %103, 16
  call void @llvm.assume(i1 %104)
  %105 = add nuw nsw i64 %103, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %100, ptr noundef nonnull align 8 dereferenceable(1) %59, i64 %105, i1 false)
  br label %107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  store ptr %99, ptr %7, align 8, !tbaa !63, !alias.scope !122
  %106 = load i64, ptr %59, align 8, !tbaa !23, !noalias !122
  store i64 %106, ptr %100, align 8, !tbaa !23, !alias.scope !122
  %.pre4.i20 = load i64, ptr %72, align 8, !tbaa !62, !noalias !122
  br label %107

107:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %102
  %108 = phi ptr [ %100, %102 ], [ %99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 3 uses
  %109 = phi i64 [ %103, %102 ], [ %.pre4.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 5 uses
  %110 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %109, ptr %110, align 8, !tbaa !62, !alias.scope !122
  store ptr %59, ptr %8, align 8, !tbaa !63, !noalias !122
  store i64 0, ptr %72, align 8, !tbaa !62, !noalias !122
  store i8 0, ptr %59, align 8, !tbaa !23, !noalias !122
  %111 = load i64, ptr %58, align 8, !tbaa !62
  %112 = icmp eq i64 %111, %109
  br i1 %112, label %113, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

113:                                              ; preds = %107
  %114 = icmp eq i64 %109, 0
  br i1 %114, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %115

115:                                              ; preds = %113
  %116 = load ptr, ptr %5, align 8, !tbaa !63
  %bcmp.i = call i32 @bcmp(ptr %116, ptr %108, i64 %109)
  %117 = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %107, %113, %115
  %118 = phi i1 [ false, %107 ], [ %117, %115 ], [ true, %113 ]
  %119 = icmp eq ptr %108, %100
  br i1 %119, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %120 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %120)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %121 = load i64, ptr %100, align 8, !tbaa !23
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %108, i64 noundef %122) #30
  %.pre = load ptr, ptr %8, align 8, !tbaa !63    ; 2 uses
  %123 = icmp eq ptr %.pre, %59
  br i1 %123, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %124 = load i64, ptr %59, align 8, !tbaa !23
  %125 = add i64 %124, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %125) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %126 = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %127 = icmp eq ptr %126, %49
  br i1 %127, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %128 = load i64, ptr %49, align 8, !tbaa !23
  %129 = add i64 %128, 1
  call void @_ZdlPvm(ptr noundef %126, i64 noundef %129) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %130 = load ptr, ptr %6, align 8, !tbaa !63     ; 2 uses
  %131 = icmp eq ptr %130, %9
  br i1 %131, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %132 = load i64, ptr %9, align 8, !tbaa !23
  %133 = add i64 %132, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %133) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %118

134:                                              ; preds = %.noexc.i8
  %135 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %136 = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %137 = icmp eq ptr %136, %49
  br i1 %137, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %134
  %138 = load i64, ptr %49, align 8, !tbaa !23
  %139 = add i64 %138, 1
  call void @_ZdlPvm(ptr noundef %136, i64 noundef %139) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %140 = load ptr, ptr %6, align 8, !tbaa !63     ; 2 uses
  %141 = icmp eq ptr %140, %9
  br i1 %141, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %142 = load i64, ptr %9, align 8, !tbaa !23
  %143 = add i64 %142, 1
  call void @_ZdlPvm(ptr noundef %140, i64 noundef %143) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %135
}

; Function Attrs: mustprogress uwtable
end_hunk_2
