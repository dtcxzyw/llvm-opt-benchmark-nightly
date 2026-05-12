inline.NumInlined: 172
inline.NumDeleted: 107
begin_hunk_0_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph416:                                        ; preds = %bb.a, %.thread307
  %i.d = phi i64 [ %i.nx, %.thread307 ], [ %i.c, %bb.a ]
  %.0146.ph637 = phi i64 [ %.pre-phi, %.thread307 ], [ 0, %bb.a ] ; 24 uses
  %i.e = add i64 %.0146.ph637, 3                  ; 3 uses
  %i.f = add nuw i64 %.0146.ph637, 1              ; 9 uses
  %i.g = add i64 %.0146.ph637, 2                  ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.b:                                             ; preds = %.lr.ph416, %bb.ci
  %i.i = phi i64 [ %i.d, %.lr.ph416 ], [ %i.nw, %bb.ci ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8                ; 10 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %.0146.ph637 ; 8 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 92
end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit224

bb.ba:                                            ; preds = %bb.ae
  %i.kh = sub i64 %.0153.lcssa, %i.h              ; 6 uses
  %i.ki = and i64 %i.kh, 7
  %.not = icmp eq i64 %i.ki, 0
  br i1 %.not, label %.lr.ph407.preheader, label %.critedge

.lr.ph407.preheader:                              ; preds = %bb.ba
  %i.kj = lshr exact i64 %i.kh, 3                 ; 4 uses
  %i.kk = lshr exact i64 %i.kh, 1                 ; 2 uses
  %i.kl = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kk) #13 ; 9 uses
  %i.km = getelementptr i8, ptr %i.j, i64 %i.h    ; 8 uses
  %min.iters.check666 = icmp ult i64 %i.kh, 32
  br i1 %min.iters.check666, label %.lr.ph407.preheader698, label %vector.memcheck657

vector.memcheck657:                               ; preds = %.lr.ph407.preheader
  %1 = lshr exact i64 %i.kh, 1
  %scevgep658 = getelementptr i8, ptr %i.kl, i64 %1
  %scevgep659 = getelementptr i8, ptr %i.j, i64 4
  %scevgep660 = getelementptr i8, ptr %scevgep659, i64 %.0146.ph637
  %scevgep661 = getelementptr i8, ptr %scevgep660, i64 %i.kh
  %bound0662 = icmp ult ptr %i.kl, %scevgep661
  %bound1663 = icmp ult ptr %i.km, %scevgep658
  %found.conflict664 = and i1 %bound0662, %bound1663
  br i1 %found.conflict664, label %.lr.ph407.preheader698, label %vector.ph667

vector.ph667:                                     ; preds = %vector.memcheck657
  %n.vec669 = and i64 %i.kj, 2305843009213693948  ; 4 uses
  %2 = shl nuw i64 %n.vec669, 3
  %3 = getelementptr i8, ptr %i.km, i64 %2
  br label %vector.body670

vector.body670:                                   ; preds = %vector.body670, %vector.ph667
  %index671 = phi i64 [ 0, %vector.ph667 ], [ %index.next692, %vector.body670 ] ; 3 uses
  %4 = shl i64 %index671, 3                       ; 4 uses
  %next.gep672 = getelementptr i8, ptr %i.km, i64 %4 ; 8 uses
  %5 = getelementptr i8, ptr %i.km, i64 %4        ; 8 uses
  %next.gep673 = getelementptr i8, ptr %5, i64 8
  %6 = getelementptr i8, ptr %i.km, i64 %4        ; 8 uses
  %next.gep674 = getelementptr i8, ptr %6, i64 16
  %7 = getelementptr i8, ptr %i.km, i64 %4        ; 8 uses
  %next.gep675 = getelementptr i8, ptr %7, i64 24
  %8 = load i8, ptr %next.gep672, align 1, !alias.scope !15
  %9 = load i8, ptr %next.gep673, align 1, !alias.scope !15
  %10 = load i8, ptr %next.gep674, align 1, !alias.scope !15
  %11 = load i8, ptr %next.gep675, align 1, !alias.scope !15
  %12 = insertelement <4 x i8> poison, i8 %8, i64 0
  %13 = insertelement <4 x i8> %12, i8 %9, i64 1
  %14 = insertelement <4 x i8> %13, i8 %10, i64 2
  %15 = insertelement <4 x i8> %14, i8 %11, i64 3 ; 6 uses
  %16 = add <4 x i8> %15, splat (i8 -58)
  %17 = icmp ult <4 x i8> %16, splat (i8 -10)
  %18 = add <4 x i8> %15, splat (i8 -65)
  %19 = icmp ult <4 x i8> %18, splat (i8 6)
  %20 = add <4 x i8> %15, splat (i8 9)
  %21 = select <4 x i1> %19, <4 x i8> %20, <4 x i8> splat (i8 15)
  %22 = add <4 x i8> %15, splat (i8 -97)
  %23 = icmp ult <4 x i8> %22, splat (i8 6)
  %24 = add <4 x i8> %15, splat (i8 9)
  %predphi676 = select <4 x i1> %23, <4 x i8> %24, <4 x i8> %21
  %predphi677 = select <4 x i1> %17, <4 x i8> %predphi676, <4 x i8> %15
  %25 = getelementptr inbounds nuw i8, ptr %next.gep672, i64 1
  %26 = getelementptr i8, ptr %5, i64 9
  %27 = getelementptr i8, ptr %6, i64 17
  %28 = getelementptr i8, ptr %7, i64 25
  %29 = load i8, ptr %25, align 1, !alias.scope !15
  %30 = load i8, ptr %26, align 1, !alias.scope !15
  %31 = load i8, ptr %27, align 1, !alias.scope !15
  %32 = load i8, ptr %28, align 1, !alias.scope !15
  %33 = insertelement <4 x i8> poison, i8 %29, i64 0
  %34 = insertelement <4 x i8> %33, i8 %30, i64 1
  %35 = insertelement <4 x i8> %34, i8 %31, i64 2
  %36 = insertelement <4 x i8> %35, i8 %32, i64 3 ; 5 uses
  %37 = add <4 x i8> %36, splat (i8 -48)          ; 2 uses
  %38 = icmp ugt <4 x i8> %37, splat (i8 9)
  %39 = add <4 x i8> %36, splat (i8 -65)
  %40 = icmp ult <4 x i8> %39, splat (i8 6)
  %41 = add <4 x i8> %36, splat (i8 -55)
  %42 = select <4 x i1> %40, <4 x i8> %41, <4 x i8> splat (i8 -1)
  %43 = add <4 x i8> %36, splat (i8 -97)
  %44 = icmp ult <4 x i8> %43, splat (i8 6)
  %45 = add nsw <4 x i8> %36, splat (i8 -87)
  %predphi678 = select <4 x i1> %44, <4 x i8> %45, <4 x i8> %42
  %predphi679 = select <4 x i1> %38, <4 x i8> %predphi678, <4 x i8> %37
  %46 = shl <4 x i8> %predphi677, splat (i8 4)
  %47 = add <4 x i8> %predphi679, %46
  %48 = getelementptr inbounds nuw i8, ptr %next.gep672, i64 2
  %49 = getelementptr i8, ptr %5, i64 10
  %50 = getelementptr i8, ptr %6, i64 18
  %51 = getelementptr i8, ptr %7, i64 26
  %52 = load i8, ptr %48, align 1, !alias.scope !15
  %53 = load i8, ptr %49, align 1, !alias.scope !15
  %54 = load i8, ptr %50, align 1, !alias.scope !15
  %55 = load i8, ptr %51, align 1, !alias.scope !15
  %56 = insertelement <4 x i8> poison, i8 %52, i64 0
  %57 = insertelement <4 x i8> %56, i8 %53, i64 1
  %58 = insertelement <4 x i8> %57, i8 %54, i64 2
  %59 = insertelement <4 x i8> %58, i8 %55, i64 3 ; 6 uses
  %60 = add <4 x i8> %59, splat (i8 -58)
  %61 = icmp ult <4 x i8> %60, splat (i8 -10)
  %62 = add <4 x i8> %59, splat (i8 -65)
  %63 = icmp ult <4 x i8> %62, splat (i8 6)
  %64 = add <4 x i8> %59, splat (i8 9)
  %65 = select <4 x i1> %63, <4 x i8> %64, <4 x i8> splat (i8 15)
  %66 = add <4 x i8> %59, splat (i8 -97)
  %67 = icmp ult <4 x i8> %66, splat (i8 6)
  %68 = add <4 x i8> %59, splat (i8 9)
  %predphi680 = select <4 x i1> %67, <4 x i8> %68, <4 x i8> %65
  %predphi681 = select <4 x i1> %61, <4 x i8> %predphi680, <4 x i8> %59
  %69 = getelementptr inbounds nuw i8, ptr %next.gep672, i64 3
  %70 = getelementptr i8, ptr %5, i64 11
  %71 = getelementptr i8, ptr %6, i64 19
  %72 = getelementptr i8, ptr %7, i64 27
  %73 = load i8, ptr %69, align 1, !alias.scope !15
  %74 = load i8, ptr %70, align 1, !alias.scope !15
  %75 = load i8, ptr %71, align 1, !alias.scope !15
  %76 = load i8, ptr %72, align 1, !alias.scope !15
  %77 = insertelement <4 x i8> poison, i8 %73, i64 0
  %78 = insertelement <4 x i8> %77, i8 %74, i64 1
  %79 = insertelement <4 x i8> %78, i8 %75, i64 2
  %80 = insertelement <4 x i8> %79, i8 %76, i64 3 ; 5 uses
  %81 = add <4 x i8> %80, splat (i8 -48)          ; 2 uses
  %82 = icmp ugt <4 x i8> %81, splat (i8 9)
  %83 = add <4 x i8> %80, splat (i8 -65)
  %84 = icmp ult <4 x i8> %83, splat (i8 6)
  %85 = add <4 x i8> %80, splat (i8 -55)
  %86 = select <4 x i1> %84, <4 x i8> %85, <4 x i8> splat (i8 -1)
  %87 = add <4 x i8> %80, splat (i8 -97)
  %88 = icmp ult <4 x i8> %87, splat (i8 6)
  %89 = add nsw <4 x i8> %80, splat (i8 -87)
  %predphi682 = select <4 x i1> %88, <4 x i8> %89, <4 x i8> %86
  %predphi683 = select <4 x i1> %82, <4 x i8> %predphi682, <4 x i8> %81
  %90 = shl <4 x i8> %predphi681, splat (i8 4)
  %91 = add <4 x i8> %predphi683, %90
  %92 = getelementptr inbounds nuw i8, ptr %next.gep672, i64 4
  %93 = getelementptr i8, ptr %5, i64 12
  %94 = getelementptr i8, ptr %6, i64 20
  %95 = getelementptr i8, ptr %7, i64 28
  %96 = load i8, ptr %92, align 1, !alias.scope !15
  %97 = load i8, ptr %93, align 1, !alias.scope !15
  %98 = load i8, ptr %94, align 1, !alias.scope !15
  %99 = load i8, ptr %95, align 1, !alias.scope !15
  %100 = insertelement <4 x i8> poison, i8 %96, i64 0
  %101 = insertelement <4 x i8> %100, i8 %97, i64 1
  %102 = insertelement <4 x i8> %101, i8 %98, i64 2
  %103 = insertelement <4 x i8> %102, i8 %99, i64 3 ; 6 uses
  %104 = add <4 x i8> %103, splat (i8 -58)
  %105 = icmp ult <4 x i8> %104, splat (i8 -10)
  %106 = add <4 x i8> %103, splat (i8 -65)
  %107 = icmp ult <4 x i8> %106, splat (i8 6)
  %108 = add <4 x i8> %103, splat (i8 9)
  %109 = select <4 x i1> %107, <4 x i8> %108, <4 x i8> splat (i8 15)
  %110 = add <4 x i8> %103, splat (i8 -97)
  %111 = icmp ult <4 x i8> %110, splat (i8 6)
  %112 = add <4 x i8> %103, splat (i8 9)
  %predphi684 = select <4 x i1> %111, <4 x i8> %112, <4 x i8> %109
  %predphi685 = select <4 x i1> %105, <4 x i8> %predphi684, <4 x i8> %103
  %113 = getelementptr inbounds nuw i8, ptr %next.gep672, i64 5
  %114 = getelementptr i8, ptr %5, i64 13
  %115 = getelementptr i8, ptr %6, i64 21
  %116 = getelementptr i8, ptr %7, i64 29
  %117 = load i8, ptr %113, align 1, !alias.scope !15
  %118 = load i8, ptr %114, align 1, !alias.scope !15
  %119 = load i8, ptr %115, align 1, !alias.scope !15
  %120 = load i8, ptr %116, align 1, !alias.scope !15
  %121 = insertelement <4 x i8> poison, i8 %117, i64 0
  %122 = insertelement <4 x i8> %121, i8 %118, i64 1
  %123 = insertelement <4 x i8> %122, i8 %119, i64 2
  %124 = insertelement <4 x i8> %123, i8 %120, i64 3 ; 5 uses
  %125 = add <4 x i8> %124, splat (i8 -48)        ; 2 uses
  %126 = icmp ugt <4 x i8> %125, splat (i8 9)
  %127 = add <4 x i8> %124, splat (i8 -65)
  %128 = icmp ult <4 x i8> %127, splat (i8 6)
  %129 = add <4 x i8> %124, splat (i8 -55)
  %130 = select <4 x i1> %128, <4 x i8> %129, <4 x i8> splat (i8 -1)
  %131 = add <4 x i8> %124, splat (i8 -97)
  %132 = icmp ult <4 x i8> %131, splat (i8 6)
  %133 = add nsw <4 x i8> %124, splat (i8 -87)
  %predphi686 = select <4 x i1> %132, <4 x i8> %133, <4 x i8> %130
  %predphi687 = select <4 x i1> %126, <4 x i8> %predphi686, <4 x i8> %125
  %134 = shl <4 x i8> %predphi685, splat (i8 4)
  %135 = add <4 x i8> %predphi687, %134
  %136 = getelementptr inbounds nuw i8, ptr %next.gep672, i64 6
  %137 = getelementptr i8, ptr %5, i64 14
  %138 = getelementptr i8, ptr %6, i64 22
  %139 = getelementptr i8, ptr %7, i64 30
  %140 = load i8, ptr %136, align 1, !alias.scope !15
  %141 = load i8, ptr %137, align 1, !alias.scope !15
  %142 = load i8, ptr %138, align 1, !alias.scope !15
  %143 = load i8, ptr %139, align 1, !alias.scope !15
  %144 = insertelement <4 x i8> poison, i8 %140, i64 0
  %145 = insertelement <4 x i8> %144, i8 %141, i64 1
  %146 = insertelement <4 x i8> %145, i8 %142, i64 2
  %147 = insertelement <4 x i8> %146, i8 %143, i64 3 ; 6 uses
  %148 = add <4 x i8> %147, splat (i8 -58)
  %149 = icmp ult <4 x i8> %148, splat (i8 -10)
  %150 = add <4 x i8> %147, splat (i8 -65)
  %151 = icmp ult <4 x i8> %150, splat (i8 6)
  %152 = add <4 x i8> %147, splat (i8 9)
  %153 = select <4 x i1> %151, <4 x i8> %152, <4 x i8> splat (i8 15)
  %154 = add <4 x i8> %147, splat (i8 -97)
  %155 = icmp ult <4 x i8> %154, splat (i8 6)
  %156 = add <4 x i8> %147, splat (i8 9)
  %predphi688 = select <4 x i1> %155, <4 x i8> %156, <4 x i8> %153
  %predphi689 = select <4 x i1> %149, <4 x i8> %predphi688, <4 x i8> %147
  %157 = getelementptr inbounds nuw i8, ptr %next.gep672, i64 7
  %158 = getelementptr i8, ptr %5, i64 15
  %159 = getelementptr i8, ptr %6, i64 23
  %160 = getelementptr i8, ptr %7, i64 31
  %161 = load i8, ptr %157, align 1, !alias.scope !15
  %162 = load i8, ptr %158, align 1, !alias.scope !15
  %163 = load i8, ptr %159, align 1, !alias.scope !15
  %164 = load i8, ptr %160, align 1, !alias.scope !15
  %165 = insertelement <4 x i8> poison, i8 %161, i64 0
  %166 = insertelement <4 x i8> %165, i8 %162, i64 1
  %167 = insertelement <4 x i8> %166, i8 %163, i64 2
  %168 = insertelement <4 x i8> %167, i8 %164, i64 3 ; 5 uses
  %169 = add <4 x i8> %168, splat (i8 -48)        ; 2 uses
  %170 = icmp ugt <4 x i8> %169, splat (i8 9)
  %171 = add <4 x i8> %168, splat (i8 -65)
  %172 = icmp ult <4 x i8> %171, splat (i8 6)
  %173 = add <4 x i8> %168, splat (i8 -55)
  %174 = select <4 x i1> %172, <4 x i8> %173, <4 x i8> splat (i8 -1)
  %175 = add <4 x i8> %168, splat (i8 -97)
  %176 = icmp ult <4 x i8> %175, splat (i8 6)
  %177 = add nsw <4 x i8> %168, splat (i8 -87)
  %predphi690 = select <4 x i1> %176, <4 x i8> %177, <4 x i8> %174
  %predphi691 = select <4 x i1> %170, <4 x i8> %predphi690, <4 x i8> %169
  %178 = shl <4 x i8> %predphi689, splat (i8 4)
  %179 = add <4 x i8> %predphi691, %178
  %180 = zext <4 x i8> %47 to <4 x i32>
  %181 = shl nuw <4 x i32> %180, splat (i32 24)
  %182 = zext <4 x i8> %91 to <4 x i32>
  %183 = shl nuw nsw <4 x i32> %182, splat (i32 16)
  %184 = or disjoint <4 x i32> %183, %181
  %185 = zext <4 x i8> %135 to <4 x i32>
  %186 = shl nuw nsw <4 x i32> %185, splat (i32 8)
  %187 = or disjoint <4 x i32> %186, %184
  %188 = zext <4 x i8> %179 to <4 x i32>
  %189 = or disjoint <4 x i32> %187, %188
  %190 = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %index671
  store <4 x i32> %189, ptr %190, align 4, !alias.scope !18, !noalias !15
  %index.next692 = add nuw i64 %index671, 4       ; 2 uses
  %191 = icmp eq i64 %index.next692, %n.vec669
  br i1 %191, label %middle.block693, label %vector.body670, !llvm.loop !20

middle.block693:                                  ; preds = %vector.body670
  %cmp.n694 = icmp eq i64 %i.kj, %n.vec669
  br i1 %cmp.n694, label %._crit_edge408, label %.lr.ph407.preheader698

.lr.ph407.preheader698:                           ; preds = %vector.memcheck657, %.lr.ph407.preheader, %middle.block693
  %.0154405.ph = phi i64 [ 0, %vector.memcheck657 ], [ 0, %.lr.ph407.preheader ], [ %n.vec669, %middle.block693 ]
  %.0155404.ph = phi ptr [ %i.km, %vector.memcheck657 ], [ %i.km, %.lr.ph407.preheader ], [ %3, %middle.block693 ]
  br label %.lr.ph407

._crit_edge408:                                   ; preds = %bb.cc, %middle.block693
  %i.kn = mul nuw i64 %i.kj, 5
  %i.ko = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kn) #13
          to label %bb.cd unwind label %bb.cf     ; 4 uses

.lr.ph407:                                        ; preds = %.lr.ph407.preheader698, %bb.cc
  %.0154405 = phi i64 [ %i.nl, %bb.cc ], [ %.0154405.ph, %.lr.ph407.preheader698 ] ; 2 uses
  %.0155404 = phi ptr [ %i.nm, %bb.cc ], [ %.0155404.ph, %.lr.ph407.preheader698 ] ; 9 uses
  %i.kp = load i8, ptr %.0155404, align 1         ; 5 uses
  %i.kq = add i8 %i.kp, -48                       ; 2 uses
  %or.cond.i.i225 = icmp ult i8 %i.kq, 10
end_hunk_2
begin_hunk_3_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.nl = add nuw nsw i64 %.0154405, 1            ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0155404, i64 8
  %exitcond475.not = icmp eq i64 %i.nl, %i.kj
  br i1 %exitcond475.not, label %._crit_edge408, label %.lr.ph407, !llvm.loop !21

bb.cd:                                            ; preds = %._crit_edge408
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kk
end_hunk_3
begin_hunk_4_@_ZN6Assimp4STEP12StringToUTF8ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc:                                           ; preds = %.lr.ph.i273
  %i.nq = getelementptr inbounds nuw i8, ptr %.057.i275, i64 4 ; 2 uses
  %.not.i276 = icmp eq ptr %i.nq, %i.nn
  br i1 %.not.i276, label %_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277, label %.lr.ph.i273, !llvm.loop !22

_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277:     ; preds = %.noexc
  %.reass.reass = add i64 %.0153.lcssa, %invariant.op
end_hunk_4
begin_hunk_5_@_ZN4utf88utf16to8IPKtPhEET0_T_S5_S4_:bb.a
  %.1 = phi ptr [ %i.h, %bb.d ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.r = tail call noundef ptr @_ZN4utf86appendIPhEET_jS2_(i32 noundef %.016, ptr noundef %.01728) ; 2 uses
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.h ]
end_hunk_5
begin_hunk_6_@llvm.umin.i64
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !4, !12}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !4, !12, !13}
!21 = distinct !{!21, !4, !12}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
end_hunk_6
