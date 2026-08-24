Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/SensIndexSchurData?download=true
inline.NumInlined: 482
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5Ipopt14IndexSchurData21GetMultiplyingVectorsEiRSt6vectorIiSaIiEERS1_IdSaIdEE:bb.a
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #16 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store double %i.ai, ptr %i.ba, align 8, !tbaa !31
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.j, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !119
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bf) #14
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.az, ptr %3, align 8, !tbaa !120
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !117
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bg, ptr %i.al, align 8, !tbaa !119
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14IndexSchurData8MultiplyERKNS_14IteratesVectorERNS_6VectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(205) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(205) %2, double noundef 0.000000e+00), !inline_history !93
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !98, !range !102, !noundef !85
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 233 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !102
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %2)
  store i8 1, ptr %i.d, align 8, !tbaa !98
  store i8 0, ptr %i.g, align 1, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_ZN5Ipopt11DenseVector6ValuesEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !87   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i32 %i.p to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #16
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i, ptr %i.j, align 8, !tbaa !104
  br label %_ZN5Ipopt11DenseVector6ValuesEv.exit

_ZN5Ipopt11DenseVector6ValuesEv.exit:             ; preds = %bb.c, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.u = phi ptr [ %i.k, %bb.c ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !67   ; 4 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i32 %i.y, 0
  %i.ab = shl nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !121
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !79, !noalias !121 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i.i:  ; preds = %_ZN5Ipopt11DenseVector6ValuesEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82, !noalias !121
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83, !noalias !121, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i.i, %_ZN5Ipopt11DenseVector6ValuesEv.exit
  %.0.i3.i.i = phi ptr [ %i.aj, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i.i ], [ %i.ag, %_ZN5Ipopt11DenseVector6ValuesEv.exit ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !8, !noalias !121
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !87
  store i32 %i.ap, ptr %i.ad, align 4, !tbaa !24
  %i.aq = icmp eq i32 %i.al, 0
  br i1 %i.aq, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i

bb.f:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i
  %i.ar = load ptr, ptr %.0.i3.i.i, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i) #17, !inline_history !88
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i:      ; preds = %bb.f, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i
  %i.au = icmp sgt i32 %i.y, 1
  br i1 %i.au, label %.lr.ph.i, label %_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit

.lr.ph.i:                                         ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 232
  %wide.trip.count.i = zext nneg i32 %i.y to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i ] ; 4 uses
  %i.aw = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv.i ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !124
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !79, !noalias !124 ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i21.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25.i: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !82, !noalias !124
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83, !noalias !124, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25.i, %bb.g
  %.0.i3.i23.i = phi ptr [ %i.be, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i25.i ], [ %i.bb, %bb.g ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i3.i23.i, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !8, !noalias !124 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i3.i23.i, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  %i.bl = add nsw i32 %i.bk, %i.ay
  store i32 %i.bl, ptr %i.aw, align 4, !tbaa !24
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !8
  %i.bm = icmp eq i32 %i.bg, 0
  br i1 %i.bm, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i

bb.h:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i
  %i.bn = load ptr, ptr %.0.i3.i23.i, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i23.i) #17, !inline_history !88
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i:    ; preds = %bb.h, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i22.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit, label %bb.g, !llvm.loop !92

_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit29.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !20 ; 2 uses
  %.not77 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52
  %i.bw = phi ptr [ %i.bt, %.lr.ph ], [ %i.ep, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52 ]
  %.02876 = phi i64 [ 0, %.lr.ph ], [ %i.en, %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52 ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.02876
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !24 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ -1, %bb.i ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 6 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !24 ; 2 uses
  %.not = icmp slt i32 %i.by, %i.ca
  br i1 %.not, label %bb.k, label %bb.j, !llvm.loop !127

bb.k:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !128
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !79, !noalias !128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, label %bb.l

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i:    ; preds = %bb.k
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !82, !noalias !128
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !83, !noalias !128, !nonnull !85, !noundef !85
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, %bb.k
  %.0.i3.i = phi ptr [ %i.cg, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ], [ %i.cd, %bb.k ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !8, !noalias !128 ; 2 uses
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !8, !noalias !128
  %i.ck = tail call ptr @__dynamic_cast(ptr nonnull %.0.i3.i, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #17 ; 8 uses
  %.not.i.i36 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !8
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !8
  %.pre = load i32, ptr %i.ch, align 8, !tbaa !8
  %i.co = add nsw i32 %.pre, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cp = phi i32 [ %i.ci, %bb.l ], [ %i.co, %bb.m ] ; 2 uses
  store i32 %i.cp, ptr %i.ch, align 8, !tbaa !8
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38

bb.o:                                             ; preds = %bb.n
  %i.cr = load ptr, ptr %.0.i3.i, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i) #17, !inline_history !109
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38:      ; preds = %bb.n, %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 233
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !103, !range !102, !noundef !85
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.02876
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !24
  %i.da = sitofp i32 %i.cz to double              ; 2 uses
  br i1 %i.cw, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 216
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !104
  %i.dd = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !131
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !79, !noalias !131 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.df, null
  br i1 %.not.i.i39, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i43, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i43:  ; preds = %bb.p
  %i.dg = load ptr, ptr %i.bu, align 8, !tbaa !82, !noalias !131
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.next
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !83, !noalias !131, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i43, %bb.p
  %.0.i3.i41 = phi ptr [ %i.di, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i43 ], [ %i.df, %bb.p ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i3.i41, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !8, !noalias !131 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i3.i41, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !86
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !87
  %i.dp = add nsw i32 %i.do, %i.by
  %i.dq = sub i32 %i.dp, %i.ca
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.02876 ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !31
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dt, double %i.dv)
  store double %i.dw, ptr %i.du, align 8, !tbaa !31
  store i32 %i.dk, ptr %i.dj, align 8, !tbaa !8
  %i.dx = icmp eq i32 %i.dk, 0
  br i1 %i.dx, label %bb.q, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47

bb.q:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40
  %i.dy = load ptr, ptr %.0.i3.i41, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i41) #17, !inline_history !109
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47

bb.r:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 240
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !134
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.02876 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !31
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.da, double %i.ec, double %i.ee)
  store double %i.ef, ptr %i.ed, align 8, !tbaa !31
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47:      ; preds = %bb.r, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i40, %bb.q
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !8
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !8
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.s, label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52

bb.s:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47
  %i.ek = load ptr, ptr %i.ck, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(248) %i.ck) #17, !inline_history !135
  br label %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52

_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit47, %bb.s
  %i.en = add nuw i64 %.02876, 1                  ; 2 uses
  %i.eo = load ptr, ptr %i.br, align 8, !tbaa !16
  %i.ep = load ptr, ptr %i.bq, align 8, !tbaa !20 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2
  %i.eu = icmp ult i64 %i.en, %i.et
  br i1 %i.eu, label %bb.i, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_11DenseVectorEED2Ev.exit52, %_ZNK5Ipopt14IndexSchurData16GetVectorLengthsERKNS_14IteratesVectorE.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14IndexSchurData13TransMultiplyERKNS_6VectorERNS_14IteratesVectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  br label %.preheader74

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.k = sext i32 %i.ag to i64
  %i.l = icmp slt i32 %i.ag, 0
  %i.m = shl nsw i64 %i.k, 3
  %spec.select = select i1 %i.l, i64 -1, i64 %i.m
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select) #16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104  ; 2 uses
  %i.q = icmp sgt i32 %i.ag, 0
  br i1 %i.q, label %.lr.ph80.preheader, label %.preheader74

.lr.ph80.preheader:                               ; preds = %._crit_edge
  %i.r = zext nneg i32 %i.ag to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.s, i1 false), !tbaa !31
  br label %.preheader74

bb.b:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.t = phi ptr [ %i.b, %.lr.ph ], [ %i.al, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ] ; 3 uses
  %.04776 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ]
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !75, !noalias !137
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79, !noalias !137 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i:    ; preds = %bb.b
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !82, !noalias !137
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83, !noalias !137, !nonnull !85, !noundef !85
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, %bb.b
  %.0.i3.i = phi ptr [ %i.z, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ], [ %i.w, %bb.b ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !8, !noalias !137
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87
  %.fr109 = freeze i32 %i.af
  %i.ag = add i32 %.fr109, %.04776                ; 5 uses
  %i.ah = icmp eq i32 %i.ab, 0
  br i1 %i.ah, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.c:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i
  %i.ai = load ptr, ptr %.0.i3.i, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i) #17, !inline_history !109
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i, %bb.c
  %i.al = phi ptr [ %i.t, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !67
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !140

.preheader74:                                     ; preds = %.thread, %.lr.ph80.preheader, %._crit_edge
  %i.aq = phi ptr [ %i.h, %.thread ], [ %i.p, %.lr.ph80.preheader ], [ %i.p, %._crit_edge ] ; 3 uses
  %i.ar = phi ptr [ %i.f, %.thread ], [ %i.n, %.lr.ph80.preheader ], [ %i.n, %._crit_edge ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !20 ; 5 uses
  %.not = icmp eq ptr %i.au, %i.av
  br i1 %.not, label %.preheader, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader74
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 3 uses
  %i.bc = icmp eq i64 %i.ay, 4
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph82.new

.lr.ph82.new:                                     ; preds = %.lr.ph82
  %unroll_iter = and i64 %i.az, -2
  br label %bb.d

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.d
  %i.bd = and i64 %i.ay, 4
  %lcmp.mod.not = icmp eq i64 %i.bd, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph82
  %.04181.epil.init = phi i64 [ 0, %.lr.ph82 ], [ %i.cu, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod114 = trunc i64 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.04181.epil.init
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !24
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.04181.epil.init
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = sitofp i32 %i.bh to double
  %sext.epil = shl i64 %.04181.epil.init, 32
  %i.bj = ashr exact i64 %sext.epil, 29
  %i.bk = getelementptr inbounds i8, ptr %i.aq, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !31
end_hunk_0
