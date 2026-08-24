Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/relationSynthesiser?download=true
inline.NumInlined: 1251
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5eSLIM19RelationSynthesiser24addUseAllStepsConstraintEv:bb.a
  store i32 %i.bp, ptr %.sroa.13.073, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.p:                                             ; preds = %.lr.ph.i21
  %i.cm = ptrtoint ptr %.sroa.13.073 to i64
  %i.cn = ptrtoint ptr %.sroa.052.074 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775804
  br i1 %i.cp, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.cq = ashr exact i64 %i.co, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 2305843009213693951)
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.cu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i36)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #14 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %i.bp, ptr %i.cx, align 4, !tbaa !46
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %.sroa.052.074, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.052.074, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.052.074, i64 noundef %i.co) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.24.4 = phi ptr [ %i.cz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.24.072, %bb.o ] ; 2 uses
  %.pn68 = phi ptr [ %i.cx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13.073, %bb.o ]
  %.sroa.052.4 = phi ptr [ %i.cw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.052.074, %bb.o ] ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn68, i64 4 ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.da = load i32, ptr %i.a, align 8, !tbaa !11
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next82, %i.db
  br i1 %i.dc, label %.lr.ph.i21, label %._crit_edge, !llvm.loop !180
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM19RelationSynthesiser21setupIsFaninVariablesEiRKSt6vectorIS1_IiSaIiEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !43, !align !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !126  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i63.lr.ph, label %.lr.ph.i

.lr.ph.i63.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79, !nonnull !43, !align !44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.k, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  %invariant.op = sub i32 %i.q, %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.t = add i32 %1, 1
  %.reass = add i32 %i.t, %invariant.op
  br label %.lr.ph.i63

.loopexit.loopexit:                               ; preds = %.lr.ph.i77
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre138 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !126
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph.i63
  %i.u = phi i32 [ %.pre138, %.loopexit.loopexit ], [ %i.ck, %.lr.ph.i63 ]
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next136, %i.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.w, label %.lr.ph.i63, label %.lr.ph.i, !llvm.loop !181

.lr.ph.i:                                         ; preds = %.loopexit, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !46
  %i.an = sub nsw i32 0, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i32 noundef %i.ad) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i32 noundef %i.an) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i32 noundef 0) #13
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !96
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46
  %i.av = sub nsw i32 0, %i.au
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !96
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i32 noundef %i.av) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i32 noundef %i.bd) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i32 noundef 0) #13
  ret void

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.lr.ph, %.loopexit
  %indvars.iv135 = phi i64 [ 0, %.lr.ph.i63.lr.ph ], [ %indvars.iv.next136, %.loopexit ] ; 17 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.i63.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !81
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv135
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv135
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !46
  %i.bj = sub nsw i32 0, %i.bi                    ; 2 uses
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !109
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !81
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv135
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv135
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !46
  %i.br = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14 ; 3 uses
  store i32 %i.bj, ptr %i.br, align 4
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  store i32 %i.bq, ptr %.sroa.4124.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.bj) #13
  %i.bs = load i32, ptr %.sroa.4124.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.bs) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 8) #16
  %i.bt = load ptr, ptr %2, align 8, !tbaa !81
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %indvars.iv135
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv135
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !46 ; 2 uses
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !109
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.a
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !81
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %indvars.iv135
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv135
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !46
  %i.cf = sub nsw i32 0, %i.ce
  %i.cg = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14 ; 3 uses
  store i32 %i.bx, ptr %i.cg, align 4
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  store i32 %i.cf, ptr %.sroa.4117.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.bx) #13
  %i.ch = load i32, ptr %.sroa.4117.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.ch) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 8) #16
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !43, !align !44
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !126 ; 2 uses
  %i.cl = add nsw i32 %i.ck, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp eq i64 %indvars.iv135, %i.cm
  %.neg = sext i1 %i.cn to i32
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 3 uses
  %i.co = trunc i64 %indvars.iv135 to i32
  %i.cp = add i32 %.reass, %i.co
  %i.cq = add i32 %i.cp, %.neg
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next136, %i.cr
  br i1 %i.cs, label %.lr.ph.i77, label %.loopexit

.lr.ph.i77:                                       ; preds = %.lr.ph.i63, %.lr.ph.i77
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph.i77 ], [ %indvars.iv, %.lr.ph.i63 ] ; 6 uses
  %i.ct = add nsw i64 %indvars.iv132, -1          ; 2 uses
  %i.cu = load ptr, ptr %2, align 8, !tbaa !81    ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !45
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv135
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !46 ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %indvars.iv132
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !45
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv135
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !46
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !109
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.a
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !81
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %indvars.iv135
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !45
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv132
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !46
  %i.dk = sub nsw i32 0, %i.dj
  %i.dl = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #14 ; 4 uses
  store i32 %i.cy, ptr %i.dl, align 4
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  store i32 %i.dc, ptr %.sroa.4109.0..sroa_idx, align 4
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  store i32 %i.dk, ptr %.sroa.5110.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.cy) #13
  %i.dm = load i32, ptr %.sroa.4109.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.dm) #13
  %i.dn = load i32, ptr %.sroa.5110.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.dn) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 12) #16
  %i.do = load ptr, ptr %2, align 8, !tbaa !81    ; 2 uses
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.ct
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !45
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv135
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !46 ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %indvars.iv132
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !45
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv135
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !46
  %i.dx = sub nsw i32 0, %i.dw
  %i.dy = load ptr, ptr %i.r, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.a
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !81
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %indvars.iv135
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !45
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv132
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !46
  %i.ef = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #14 ; 4 uses
  store i32 %i.ds, ptr %i.ef, align 4
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  store i32 %i.dx, ptr %.sroa.4102.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  store i32 %i.ee, ptr %.sroa.5.0..sroa_idx, align 4
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.ds) #13
  %i.eg = load i32, ptr %.sroa.4102.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.eg) #13
  %i.eh = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.eh) #13
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef 0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 12) #16
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next133, %i.cr
  br i1 %3, label %.lr.ph.i77, label %.loopexit.loopexit, !llvm.loop !182
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM19RelationSynthesiser20addSequentialCounterERKSt6vectorIiSaIiEEji(ptr dead_on_unwind noalias writable sret(%"class.std::vector.1") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backEOS1_.exit:
  %5 = alloca %"class.std::vector", align 8       ; 7 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.std::vector", align 8       ; 7 uses
  %8 = alloca %"class.std::vector", align 8       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = load ptr, ptr %2, align 8, !tbaa !96
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %i.c = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #14 ; 3 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !77
  store i32 %i.b, ptr %i.c, align 4, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %.pr = load ptr, ptr %5, align 8, !tbaa !45     ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backEOS1_.exit
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.pr to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.l) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backEOS1_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = add nsw i64 %i.s, -3
  %i.u = icmp ult i64 %i.t, -2
  br i1 %i.u, label %.lr.ph129, label %.lr.ph.i

.lr.ph129:                                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.aa = add i32 %3, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = zext i32 %3 to i64
  %i.af = zext i32 %i.aa to i64
  br label %bb.b

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit64, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.lcssa117 = phi ptr [ %i.n, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.fs, %_ZNSt6vectorIiSaIiEED2Ev.exit64 ]
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !96
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !46
  %i.al = sub nsw i32 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.lcssa117, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !46
  %i.ao = sub nsw i32 0, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i32 noundef %i.al) #13
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i32 noundef %i.ao) #13
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i32 noundef 0) #13
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !96
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46 ; 2 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !46
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i32 noundef %i.au) #13
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i32 noundef %i.ax) #13
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i32 noundef 0) #13
  %i.ay = icmp ugt i32 %3, 1
  br i1 %i.ay, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit72, label %_ZNSt6vectorIiSaIiEED2Ev.exit79

bb.b:                                             ; preds = %.lr.ph129, %_ZNSt6vectorIiSaIiEED2Ev.exit64
  %indvars.iv134 = phi i64 [ 1, %.lr.ph129 ], [ %indvars.iv.next135, %_ZNSt6vectorIiSaIiEED2Ev.exit64 ] ; 2 uses
  %i.az = phi ptr [ %i.o, %.lr.ph129 ], [ %i.ft, %_ZNSt6vectorIiSaIiEED2Ev.exit64 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv134
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !46 ; 4 uses
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !87  ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.bg
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bh = sub nsw i32 0, %i.bb
  br label %bb.c

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %.0114.lcssa = phi i32 [ %i.bb, %bb.b ], [ %.1, %bb.j ] ; 2 uses
  %.lcssa = phi i64 [ 0, %bb.b ], [ %i.dr, %bb.j ]
  %i.bi = icmp samesign ult i64 %.lcssa, %i.ae
  br i1 %i.bi, label %bb.k, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit61

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.bj = phi ptr [ %i.bg, %.lr.ph ], [ %i.dn, %bb.j ]
  %.0114125 = phi i32 [ %i.bb, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %i.bk = load i32, ptr %i.v, align 8, !tbaa !41
  %i.bl = add nsw i32 %i.bk, 1                    ; 4 uses
  store i32 %i.bl, ptr %i.v, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !46
  %i.bo = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14 ; 4 uses
  store ptr %i.bo, ptr %7, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.w, align 8, !tbaa !77
  store i32 %.0114125, ptr %i.bo, align 4
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bn, ptr %.sroa.4107.0..sroa_idx, align 4
  store ptr %i.bp, ptr %i.x, align 8, !tbaa !76
  call void @_ZN5eSLIM19RelationSynthesiser17defineDisjunctionEiOSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(224) %1, i32 noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %4)
  %i.bq = load ptr, ptr %7, align 8, !tbaa !45    ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIiSaIiEED2Ev.exit42, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit42

_ZNSt6vectorIiSaIiEED2Ev.exit42:                  ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bv = load ptr, ptr %i.y, align 8, !tbaa !76  ; 4 uses
  %i.bw = load ptr, ptr %i.z, align 8, !tbaa !77
  %.not.i43 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit42
  store i32 %i.bl, ptr %i.bv, align 4, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store ptr %i.bx, ptr %i.y, align 8, !tbaa !76
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit42
  %i.by = load ptr, ptr %6, align 8, !tbaa !45    ; 4 uses
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775804
  br i1 %i.cc, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.cd = ashr exact i64 %i.cb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 2305843009213693951)
  %i.ch = select i1 %i.cf, i64 2305843009213693951, i64 %i.cg ; 3 uses
  %.not.i.i.i44 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i44)
  %i.ci = shl nuw nsw i64 %i.ch, 2
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #14 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cb ; 2 uses
  store i32 %i.bl, ptr %i.ck, align 4, !tbaa !46
  %i.cl = icmp sgt i64 %i.cb, 0
  br i1 %i.cl, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr align 4 %i.by, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.not.i17.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !77
end_hunk_0
