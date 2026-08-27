Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN8DecGraph10TruthTable11fourierCostEv:_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.068.0114 = phi i64 [ %i.cr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %.lr.ph115.preheader ] ; 2 uses
  %.sroa.17.1113 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.17.0121, %.lr.ph115.preheader ] ; 3 uses
  %.sroa.11.1112 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.11.0120, %.lr.ph115.preheader ] ; 3 uses
  %.sroa.081.1111 = phi ptr [ %.sroa.081.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.081.0119, %.lr.ph115.preheader ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.081.1111, i64 %.sroa.068.0114
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23
  %i.cc = add nsw i32 %i.cb, 1                    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.11.1112, %.sroa.17.1113
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph115
  store i32 %i.cc, ptr %.sroa.11.1112, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.b:                                             ; preds = %.lr.ph115
  %i.cd = ptrtoint ptr %.sroa.17.1113 to i64
  %i.ce = ptrtoint ptr %.sroa.081.1111 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775804
  br i1 %i.cg, label %bb.c, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #40
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.b
  %i.ch = ashr exact i64 %i.cf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 2305843009213693951)
  %i.cl = select i1 %i.cj, i64 2305843009213693951, i64 %i.ck ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #37 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store i32 %i.cc, ptr %i.co, align 4, !tbaa !23
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

bb.d:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %.sroa.081.1111, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.d, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.081.1111, i64 noundef %i.cf) #35
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cl
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %.sroa.081.2 = phi ptr [ %i.cn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.081.1111, %bb.a ] ; 2 uses
  %.pn = phi ptr [ %i.co, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.11.1112, %bb.a ]
  %.sroa.17.2 = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.17.1113, %bb.a ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.cr = add i64 %.sroa.068.0114, 1              ; 2 uses
  %.not100 = icmp eq i64 %i.cr, %i.ai
  br i1 %.not100, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit, label %.lr.ph115

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %.lcssa153 = phi i32 [ %i.ae, %middle.block ], [ %i.dk, %scalar.ph ]
  %i.cs = uitofp nneg i32 %.lcssa153 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge
  %.028.lcssa = phi float [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge ], [ %i.cs, %._crit_edge.loopexit ]
  %i.ct = load i8, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %i.cu = zext i8 %i.ct to i64                    ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 4 uses
  %min.iters.check158 = icmp ult i8 %i.ct, 7
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %._crit_edge
  %n.vec160 = and i64 %i.cv, 504                  ; 3 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body161 ] ; 2 uses
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %vector.ph159 ], [ %i.dc, %vector.body161 ]
  %vec.phi164 = phi <4 x i32> [ zeroinitializer, %vector.ph159 ], [ %i.dd, %vector.body161 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index162 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load165 = load <4 x float>, ptr %i.cw, align 4, !tbaa !153
  %wide.load166 = load <4 x float>, ptr %i.cx, align 4, !tbaa !153
  %i.cy = fcmp une <4 x float> %wide.load165, zeroinitializer
  %i.cz = fcmp une <4 x float> %wide.load166, zeroinitializer
  %i.da = zext <4 x i1> %i.cy to <4 x i32>
  %i.db = zext <4 x i1> %i.cz to <4 x i32>
  %i.dc = add <4 x i32> %vec.phi163, %i.da        ; 2 uses
  %i.dd = add <4 x i32> %vec.phi164, %i.db        ; 2 uses
  %index.next167 = add nuw i64 %index162, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.de, label %middle.block168, label %vector.body161, !llvm.loop !161

middle.block168:                                  ; preds = %vector.body161
  %bin.rdx169 = add <4 x i32> %i.dd, %i.dc
  %i.df = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx169) ; 2 uses
  %cmp.n170 = icmp eq i64 %i.cv, %n.vec160
  br i1 %cmp.n170, label %.preheader, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %._crit_edge, %middle.block168
  %indvars.iv.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec160, %middle.block168 ]
  %.027132.ph = phi i32 [ 0, %._crit_edge ], [ %i.df, %middle.block168 ]
  br label %scalar.ph157

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.028128 = phi i32 [ %i.dk, %scalar.ph ], [ %.028128.ph, %scalar.ph.preheader ]
  %.sroa.061.0127 = phi i64 [ %i.dl, %scalar.ph ], [ %.sroa.061.0127.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.061.0127
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !153
  %i.di = fcmp une float %i.dh, 0.000000e+00
  %i.dj = zext i1 %i.di to i32
  %i.dk = add nuw nsw i32 %.028128, %i.dj         ; 2 uses
  %i.dl = add nuw i64 %.sroa.061.0127, 1          ; 2 uses
  %.not = icmp eq i64 %i.dl, %i.t
  br i1 %.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !162

.preheader:                                       ; preds = %scalar.ph157, %middle.block168
  %.lcssa152 = phi i32 [ %i.df, %middle.block168 ], [ %i.dr, %scalar.ph157 ]
  %xtraiter182 = and i64 %i.cv, 3                 ; 3 uses
  %i.dm = icmp ult i8 %i.ct, 3
  br i1 %i.dm, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter186 = and i64 %i.cv, 508
  br label %bb.g

scalar.ph157:                                     ; preds = %scalar.ph157.preheader, %scalar.ph157
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph157 ], [ %indvars.iv.ph, %scalar.ph157.preheader ] ; 3 uses
  %.027132 = phi i32 [ %i.dr, %scalar.ph157 ], [ %.027132.ph, %scalar.ph157.preheader ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.do = load float, ptr %i.dn, align 4, !tbaa !153
  %i.dp = fcmp une float %i.do, 0.000000e+00
  %i.dq = zext i1 %i.dp to i32
  %i.dr = add nuw nsw i32 %.027132, %i.dq         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not97 = icmp eq i64 %indvars.iv, %i.cu
  br i1 %.not97, label %.preheader, label %scalar.ph157, !llvm.loop !163

_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa:          ; preds = %bb.g
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa, %.preheader
  %indvars.iv139.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next140.3, %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa ]
  %.0134.epil.init = phi float [ 0.000000e+00, %.preheader ], [ %i.fh, %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa ]
  %lcmp.mod185 = icmp ne i64 %xtraiter182, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv139.epil = phi i64 [ %indvars.iv139.epil.init, %.epil.preheader ], [ %indvars.iv.next140.epil, %bb.e ] ; 3 uses
  %.0134.epil = phi float [ %.0134.epil.init, %.epil.preheader ], [ %i.dx, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv139.epil
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !153
  %i.du = trunc i64 %indvars.iv139.epil to i32
  %i.dv = mul i32 %i.du, 3
  %i.dw = uitofp nneg i32 %i.dv to float
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dw, float %.0134.epil) ; 2 uses
  %indvars.iv.next140.epil = add nuw nsw i64 %indvars.iv139.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter182
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e, !llvm.loop !164

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.e, %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa
  %.lcssa = phi float [ %i.fh, %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa ], [ %i.dx, %bb.e ]
  %i.dy = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.dz = ptrtoint ptr %.sroa.081.0.lcssa to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.081.0.lcssa, i64 noundef %i.ea) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.g) #35
  %i.eb = load ptr, ptr %1, align 8, !tbaa !149   ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIfSaIfEED2Ev.exit49, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !152
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49

_ZNSt6vectorIfSaIfEED2Ev.exit49:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.f
  %i.eh = uitofp nneg i32 %.lcssa152 to float
  %i.ei = fdiv float %.028.lcssa, %i.eh
  %i.ej = fadd float %i.ei, %.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret float %i.ej

bb.g:                                             ; preds = %bb.g, %.preheader.new
  %indvars.iv139 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next140.3, %bb.g ] ; 6 uses
  %.0134 = phi float [ 0.000000e+00, %.preheader.new ], [ %i.fh, %bb.g ]
  %niter187 = phi i64 [ 0, %.preheader.new ], [ %niter187.next.3, %bb.g ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv139
  %i.el = load float, ptr %i.ek, align 4, !tbaa !153
  %i.em = trunc i64 %indvars.iv139 to i32
  %i.en = mul nsw i32 %i.em, 3
  %i.eo = uitofp nneg i32 %i.en to float
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.el, float %i.eo, float %.0134)
  %indvars.iv.next140 = or disjoint i64 %indvars.iv139, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next140
  %i.er = load float, ptr %i.eq, align 4, !tbaa !153
  %i.es = trunc i64 %indvars.iv.next140 to i32
  %i.et = mul nsw i32 %i.es, 3
  %i.eu = uitofp nneg i32 %i.et to float
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.er, float %i.eu, float %i.ep)
  %indvars.iv.next140.1 = or disjoint i64 %indvars.iv139, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next140.1
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !153
  %i.ey = trunc i64 %indvars.iv.next140.1 to i32
  %i.ez = mul nsw i32 %i.ey, 3
  %i.fa = uitofp nneg i32 %i.ez to float
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.fa, float %i.ev)
  %indvars.iv.next140.2 = or disjoint i64 %indvars.iv139, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next140.2
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !153
  %i.fe = trunc i64 %indvars.iv.next140.2 to i32
  %i.ff = mul nsw i32 %i.fe, 3
  %i.fg = uitofp nneg i32 %i.ff to float
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.fg, float %i.fb) ; 3 uses
  %indvars.iv.next140.3 = add nuw nsw i64 %indvars.iv139, 4 ; 2 uses
  %niter187.next.3 = add i64 %niter187, 4         ; 2 uses
  %niter187.ncmp.3 = icmp eq i64 %niter187.next.3, %unroll_iter186
  br i1 %niter187.ncmp.3, label %_ZNSt6vectorIfSaIfEED2Ev.exit.unr-lcssa, label %bb.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN8DecGraph11reverseBitsEm(i64 noundef %0) local_unnamed_addr #13 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret i64 %i.p

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.067 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ]
  %i.a = lshr i64 %0, %indvars.iv
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.b = shl i64 %.067, 2
  %i.c = shl i64 %i.a, 1
  %i.d = and i64 %i.c, 2
  %i.e = or disjoint i64 %i.b, %i.d
  %i.f = lshr i64 %0, %indvars.iv.next
  %i.g = and i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, %i.e
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.i = lshr i64 %0, %indvars.iv.next.1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.j = shl i64 %i.h, 2
  %i.k = shl nuw nsw i64 %i.i, 1
  %i.l = and i64 %i.k, 2
  %i.m = or disjoint i64 %i.j, %i.l
  %i.n = lshr i64 %0, %indvars.iv.next.2
  %i.o = and i64 %i.n, 1
  %i.p = or disjoint i64 %i.o, %i.m               ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 64
  br i1 %exitcond.not.3, label %bb.b, label %bb.c, !llvm.loop !165
}

; Function Attrs: mustprogress nounwind uwtable
define noundef float @_ZN8DecGraph10TruthTable4costEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZN8DecGraph10TruthTable11fourierCostEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN8DecGraph11Combination4nextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !166  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load i32, ptr %0, align 8
  %invariant.op = sub i32 %i.e, %i.b
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph53, label %.loopexit

.lr.ph53:                                         ; preds = %bb.a
  %i.g = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.loopexit, !llvm.loop !171

bb.c:                                             ; preds = %.lr.ph53, %bb.b
  %i.j = phi i32 [ %i.b, %.lr.ph53 ], [ %i.h, %bb.b ]
  %indvars.iv52 = phi i64 [ %i.g, %.lr.ph53 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv52, -1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.k = and i64 %indvars.iv.next, 4294967295     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23   ; 2 uses
  %.reass = add i32 %invariant.op, %indvars
  %i.n = icmp slt i32 %i.m, %.reass
  br i1 %i.n, label %bb.d, label %bb.b, !llvm.loop !171

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.p = add nsw i32 %i.m, 1
  store i32 %i.p, ptr %i.o, align 4, !tbaa !23
  %i.q = load i32, ptr %i.a, align 4, !tbaa !166
  %i.r = icmp sgt i32 %i.q, %i.j
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph ], [ %indvars.iv52, %bb.d ] ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv32 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !23
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !166
  %i.x = trunc nuw i64 %indvars.iv.next33 to i32
  %i.y = icmp sgt i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph, label %.loopexit, !llvm.loop !172

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %bb.a, %bb.d
  %i.z = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ true, %.lr.ph ], [ false, %bb.b ]
  ret i1 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8DecGraph11Combination4nextEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not13 = icmp slt i32 %1, 1
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %i.a, align 4, !tbaa !166
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN8DecGraph11Combination4nextEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN8DecGraph11Combination4nextEv.exit
  %i.c = phi i32 [ %.pre, %.lr.ph ], [ %i.z, %_ZN8DecGraph11Combination4nextEv.exit ] ; 6 uses
  %.sroa.04.014 = phi i32 [ 0, %.lr.ph ], [ %i.aa, %_ZN8DecGraph11Combination4nextEv.exit ]
  %i.d = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.e = load i32, ptr %0, align 8
  %invariant.op.i = sub i32 %i.e, %i.c
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %.lr.ph38, label %_ZN8DecGraph11Combination4nextEv.exit

.lr.ph38:                                         ; preds = %bb.b
  %i.g = zext nneg i32 %i.c to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.h = trunc nuw i64 %indvars.iv.next.i to i32  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN8DecGraph11Combination4nextEv.exit, !llvm.loop !171

bb.d:                                             ; preds = %.lr.ph38, %bb.c
  %i.j = phi i32 [ %i.c, %.lr.ph38 ], [ %i.h, %bb.c ]
  %indvars.iv.i36 = phi i64 [ %i.g, %.lr.ph38 ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i36, -1 ; 4 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.k = and i64 %indvars.iv.next.i, 4294967295   ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23   ; 2 uses
  %.reass.i = add i32 %invariant.op.i, %indvars.i
  %i.n = icmp slt i32 %i.m, %.reass.i
  br i1 %i.n, label %bb.e, label %bb.c, !llvm.loop !171

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.p = add nsw i32 %i.m, 1
  store i32 %i.p, ptr %i.o, align 4, !tbaa !23
  %i.q = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %i.r = icmp sgt i32 %i.q, %i.j
  br i1 %i.r, label %.lr.ph.i, label %_ZN8DecGraph11Combination4nextEv.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %.lr.ph.i ], [ %indvars.iv.i36, %bb.e ] ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv32.i ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !23
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv.next33.i to i32
  %i.y = icmp sgt i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i, label %_ZN8DecGraph11Combination4nextEv.exit, !llvm.loop !172

_ZN8DecGraph11Combination4nextEv.exit:            ; preds = %bb.c, %.lr.ph.i, %bb.b, %bb.e
  %i.z = phi i32 [ %i.c, %bb.b ], [ %i.q, %bb.e ], [ %i.w, %.lr.ph.i ], [ %i.c, %bb.c ]
  %i.aa = add nuw nsw i32 %.sroa.04.014, 1        ; 2 uses
  %.not = icmp eq i32 %1, %i.aa
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN8DecGraph11Combination5countEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !166  ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !173    ; 2 uses
  %i.d = sub nsw i32 %i.c, %i.b                   ; 3 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.a, align 4, !tbaa !166
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
