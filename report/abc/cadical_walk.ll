Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_walk?download=true
inline.NumInlined: 640
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7CaDiCaL6Walker14populate_tableEd:bb.a
  %i.j = fcmp ogt double %1, 5.000000e+00
  %or.cond25.i = or i1 %i.i, %i.j
  br i1 %or.cond25.i, label %.critedge2.2.i, label %_ZN7CaDiCaLL8fitcbvalEd.exit

.critedge2.2.i:                                   ; preds = %.critedge2.1.i
  %i.k = fcmp olt double %1, 5.000000e+00
  %i.l = fcmp ogt double %1, 6.000000e+00
  %or.cond26.i = or i1 %i.k, %i.l
  %spec.select.i = select i1 %or.cond26.i, i64 4, i64 3
  br label %_ZN7CaDiCaLL8fitcbvalEd.exit

_ZN7CaDiCaLL8fitcbvalEd.exit:                     ; preds = %bb.b, %.critedge2.i, %.critedge2.1.i, %.critedge2.2.i
  %.0.lcssa.i = phi i64 [ 2, %.critedge2.1.i ], [ 0, %bb.b ], [ 1, %.critedge2.i ], [ %spec.select.i, %.critedge2.2.i ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @_ZN7CaDiCaLL6cbvalsE, i64 %.0.lcssa.i ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load double, ptr %i.n, align 16, !tbaa !189
  %i.p = load double, ptr %i.m, align 16, !tbaa !189 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !189 ; 2 uses
  %i.u = fsub double %i.o, %i.p
  %i.v = fsub double %i.r, %i.t
  %i.w = fsub double %1, %i.p
  %i.x = fmul double %i.w, %i.v
  %i.y = fdiv double %i.x, %i.u
  %i.z = fadd double %i.t, %i.y
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN7CaDiCaLL8fitcbvalEd.exit
  %i.aa = phi double [ %i.z, %_ZN7CaDiCaLL8fitcbvalEd.exit ], [ 2.000000e+00, %bb.a ]
  %i.ab = fdiv double 1.000000e+00, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !190
  %.pre8 = load ptr, ptr %i.af, align 8, !tbaa !191
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.ag = phi ptr [ %.pre8, %bb.c ], [ %i.az, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.ah = phi ptr [ %.pre, %bb.c ], [ %i.ba, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %.07 = phi double [ 1.000000e+00, %bb.c ], [ %i.bc, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  store double %.07, ptr %i.ac, align 8, !tbaa !192
  %.not.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %.07, ptr %i.ah, align 8, !tbaa !189
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !190
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !193 ; 4 uses
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.g, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #14 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store double %.07, ptr %i.av, align 8, !tbaa !189
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.aj, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #16
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.au, ptr %i.ad, align 8, !tbaa !193
  store ptr %i.ax, ptr %i.ae, align 8, !tbaa !190
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as ; 2 uses
  store ptr %i.ay, ptr %i.af, align 8, !tbaa !191
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %bb.e, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i
  %i.az = phi ptr [ %i.ag, %bb.e ], [ %i.ay, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ]
  %i.ba = phi ptr [ %i.ai, %bb.e ], [ %i.ax, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ]
  %i.bb = load double, ptr %i.ac, align 8, !tbaa !192
  %i.bc = fmul double %i.ab, %i.bb                ; 2 uses
  %i.bd = fcmp une double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.d, label %bb.j, !llvm.loop !194

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL6Walker12push_flippedEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !180  ; 4 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !186  ; 7 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !185  ; 13 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 7 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !184
  %i.o = sdiv i32 %i.n, 4
  %i.p = add nsw i32 %i.o, 1
  %i.q = sext i32 %i.p to i64
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !187
  %.not.i = icmp eq ptr %i.f, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.f, align 4, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.u, ptr %i.e, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.k ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.k
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #14 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.ac, align 4, !tbaa !196
  %i.ad = icmp sgt i64 %i.j, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !185
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !186
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.af, ptr %i.s, align 8, !tbaa !187
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.s, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ag = zext nneg i32 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.ag, 2              ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aj = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.ak = and i64 %i.aj, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.al = load i32, ptr %i.g, align 4, !tbaa !196 ; 2 uses
  %i.am = tail call i8 @llvm.scmp.i8.i32(i32 %i.al, i32 0)
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !197
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.am, ptr %i.aq, align 1, !tbaa !188
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.08.019.i.unr = phi ptr [ %i.g, %.lr.ph.i ], [ %i.ar, %.prol.loopexit.unr-lcssa ]
  %i.as = icmp eq i64 %i.aj, 0
  br i1 %i.as, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.sroa.08.019.i = phi ptr [ %i.bg, %.lr.ph.i.new ], [ %.sroa.08.019.i.unr, %.prol.loopexit ] ; 3 uses
  %i.at = load i32, ptr %.sroa.08.019.i, align 4, !tbaa !196 ; 2 uses
  %i.au = tail call i8 @llvm.scmp.i8.i32(i32 %i.at, i32 0)
  %i.av = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !197
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 %i.au, ptr %i.ay, align 1, !tbaa !188
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !196 ; 2 uses
  %i.bb = tail call i8 @llvm.scmp.i8.i32(i32 %i.ba, i32 0)
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !197
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 %i.bb, ptr %i.bf, align 1, !tbaa !188
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i, i64 8 ; 2 uses
  %.not.i2.1 = icmp eq ptr %i.bg, %i.ah
  br i1 %.not.i2.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !198

._crit_edge.i:                                    ; preds = %.lr.ph.i.new, %.prol.loopexit
  %i.bh = lshr exact i64 %i.j, 2
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = sub i32 %i.bi, %i.b
  %.not1720.i = icmp eq ptr %i.ah, %i.f
  br i1 %.not1720.i, label %._crit_edge24.i, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %._crit_edge.i
  %i.bk = add i64 %i.h, -4
  %i.bl = add i64 %.idx.i, %i.i
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 28
  br i1 %min.iters.check, label %.lr.ph23.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.i.preheader
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  %i.bp = shl i64 %n.vec, 2                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.ah, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.bs ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.ah, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep31, align 4, !tbaa !196
  %wide.load32 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !196
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !196
  store <4 x i32> %wide.load32, ptr %i.bu, align 4, !tbaa !196
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %._crit_edge24.i, label %.lr.ph23.i.preheader34

.lr.ph23.i.preheader34:                           ; preds = %.lr.ph23.i.preheader, %middle.block
  %.sroa.0.022.i.ph = phi ptr [ %i.g, %.lr.ph23.i.preheader ], [ %i.bq, %middle.block ]
  %.sroa.08.121.i.ph = phi ptr [ %i.ah, %.lr.ph23.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader34, %.lr.ph23.i
  %.sroa.0.022.i = phi ptr [ %i.by, %.lr.ph23.i ], [ %.sroa.0.022.i.ph, %.lr.ph23.i.preheader34 ] ; 2 uses
  %.sroa.08.121.i = phi ptr [ %i.bx, %.lr.ph23.i ], [ %.sroa.08.121.i.ph, %.lr.ph23.i.preheader34 ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.08.121.i, align 4, !tbaa !196
  store i32 %i.bw, ptr %.sroa.0.022.i, align 4, !tbaa !196
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.121.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i, i64 4
  %.not17.i = icmp eq ptr %i.bx, %i.f
  br i1 %.not17.i, label %._crit_edge24.i, label %.lr.ph23.i, !llvm.loop !202

._crit_edge24.i:                                  ; preds = %.lr.ph23.i, %middle.block, %._crit_edge.i
  %i.bz = sext i32 %i.bj to i64                   ; 4 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !186 ; 4 uses
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !185 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.bz
  br i1 %i.cg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge24.i
  %i.ch = sub nuw nsw i64 %i.bz, %i.cf
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ch)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !186
  br label %_ZN7CaDiCaL6Walker17save_walker_trailEb.exit

bb.k:                                             ; preds = %._crit_edge24.i
  %i.ci = icmp ugt i64 %i.cf, %i.bz
  br i1 %i.ci, label %bb.l, label %_ZN7CaDiCaL6Walker17save_walker_trailEb.exit

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bz ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ca, %i.cj
  br i1 %.not.i.i.i3, label %_ZN7CaDiCaL6Walker17save_walker_trailEb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !186
  br label %_ZN7CaDiCaL6Walker17save_walker_trailEb.exit

_ZN7CaDiCaL6Walker17save_walker_trailEb.exit:     ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.ck = phi ptr [ %.pre, %bb.j ], [ %i.ca, %bb.k ], [ %i.ca, %bb.l ], [ %i.cj, %bb.m ] ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !180
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !187
  %.not.i4 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN7CaDiCaL6Walker17save_walker_trailEb.exit
  store i32 %1, ptr %i.ck, align 4, !tbaa !196
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.cn, ptr %i.e, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %_ZN7CaDiCaL6Walker17save_walker_trailEb.exit
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !185 ; 4 uses
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 6 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775804
  br i1 %i.cs, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i5

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i5: ; preds = %bb.o
  %i.ct = ashr exact i64 %i.cr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i6, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 2305843009213693951)
  %i.cx = select i1 %i.cv, i64 2305843009213693951, i64 %i.cw ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.cx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #14 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store i32 %1, ptr %i.da, align 4, !tbaa !196
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8

bb.q:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.co, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8: ; preds = %bb.q, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %.not.i17.i.i9 = icmp eq ptr %i.co, null
  br i1 %.not.i17.i.i9, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i10, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cr) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i10

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i10: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i8
  store ptr %i.cz, ptr %i.d, align 8, !tbaa !185
  store ptr %i.dc, ptr %i.e, align 8, !tbaa !186
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dd, ptr %i.cl, align 8, !tbaa !187
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.s:                                             ; preds = %bb.i
  %.not.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.g, ptr %i.e, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.s, %bb.t
  store i32 -1, ptr %i.a, align 8, !tbaa !180
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i10, %bb.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL6Walker17save_walker_trailEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !186  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !185  ; 9 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !180  ; 3 uses
  %i.k = trunc i64 %i.h to i32
  %i.l = sub i32 %i.k, %i.j
  %i.m = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.m, 2                     ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 3 uses
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.p = add nsw i64 %.idx, -4                    ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.r = load i32, ptr %i.d, align 4, !tbaa !196  ; 2 uses
  %i.s = tail call i8 @llvm.scmp.i8.i32(i32 %i.r, i32 0)
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.u = zext nneg i32 %i.t to i64
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !197
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 %i.s, ptr %i.w, align 1, !tbaa !188
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.sroa.08.019.unr = phi ptr [ %i.d, %.lr.ph ], [ %i.x, %.prol.loopexit.unr-lcssa ]
  %i.y = icmp eq i64 %i.p, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
end_hunk_0
