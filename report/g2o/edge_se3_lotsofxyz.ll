Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_lotsofxyz?download=true
inline.NumInlined: 6649
inline.NumDeleted: 3240
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN3g2o16EdgeSE3LotsOfXYZ23setMeasurementFromStateEv:bb.a
  %i.bi = fadd <2 x double> %i.bf, %i.bh
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !185 ; 4 uses
  %i.bj = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %.sroa.18.72.vec.insert, %i.bj
  %i.bl = fadd <2 x double> %i.bi, %i.bk
  %i.bm = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = fmul <2 x double> %i.am, %i.bm
  %i.bo = fadd <2 x double> %i.bn, %i.bl          ; 2 uses
  %i.bp = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.bq = fmul double %i.as, %i.bp
  %i.br = extractelement <2 x double> %i.ba, i64 0
  %i.bs = fmul double %i.i, %i.br
  %i.bt = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.bu = fmul double %i.o, %i.bt
  %i.bv = fadd double %i.bs, %i.bu
  %i.bw = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.bx = fmul double %i.u, %i.bw
  %i.by = fadd double %i.bv, %i.bx
  %.sroa.4.16.vec.extract.i.i = fadd double %i.bq, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bz = trunc nuw i64 %indvars.iv to i32
  %i.ca = mul i32 %i.bz, 3                        ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %i.bo, i64 0
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cb
  store double %.sroa.0.0.vec.extract, ptr %i.cc, align 8, !tbaa !68
  %.sroa.0.8.vec.extract = extractelement <2 x double> %i.bo, i64 1
  %i.cd = add i32 %i.ca, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ce
  store double %.sroa.0.8.vec.extract, ptr %i.cf, align 8, !tbaa !68
  %i.cg = add i32 %i.ca, 2
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ch
  store double %.sroa.4.16.vec.extract.i.i, ptr %i.ci, align 8, !tbaa !68
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o16EdgeSE3LotsOfXYZ12computeErrorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(284) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !66   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69   ; 3 uses
  %wide.trip.count = zext i32 %i.d to i64
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx35 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66   ; 2 uses
  %i.x = load double, ptr %i.f, align 8, !tbaa !68, !noalias !193
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.x, i64 0
  %i.y = load double, ptr %i.g, align 8, !tbaa !68, !noalias !193
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.y, i64 1 ; 2 uses
  %i.z = load double, ptr %i.h, align 8, !tbaa !68, !noalias !193 ; 2 uses
  %i.aa = load double, ptr %i.i, align 8, !tbaa !68, !noalias !193
  %.sroa.10.32.vec.insert = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ab = load double, ptr %i.j, align 8, !tbaa !68, !noalias !193
  %.sroa.10.40.vec.insert = insertelement <2 x double> %.sroa.10.32.vec.insert, double %i.ab, i64 1 ; 2 uses
  %i.ac = load double, ptr %i.k, align 8, !tbaa !68, !noalias !193 ; 2 uses
  %i.ad = load double, ptr %i.l, align 8, !tbaa !68, !noalias !193
  %.sroa.18.64.vec.insert = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ae = load double, ptr %i.m, align 8, !tbaa !68, !noalias !193
  %.sroa.18.72.vec.insert = insertelement <2 x double> %.sroa.18.64.vec.insert, double %i.ae, i64 1 ; 2 uses
  %i.af = load double, ptr %i.n, align 8, !tbaa !68, !noalias !193 ; 2 uses
  %i.ag = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.ah = load double, ptr %i.o, align 8, !tbaa !68, !noalias !193 ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.aj, %i.ag
  %i.al = load double, ptr %i.p, align 8, !tbaa !68, !noalias !193 ; 2 uses
  %i.am = insertelement <2 x double> poison, double %i.al, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %.sroa.10.40.vec.insert, %i.an
  %i.ap = fsub <2 x double> %i.ak, %i.ao
  %i.aq = load double, ptr %i.q, align 8, !tbaa !68, !noalias !193 ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %.sroa.18.72.vec.insert, %i.as
  %i.au = fsub <2 x double> %i.ap, %i.at
  %i.av = fneg double %i.af
  %i.aw = fmul double %i.aq, %i.av
  %i.ax = fmul double %i.ac, %i.al
  %i.ay = fsub double %i.aw, %i.ax
  %i.az = fmul double %i.z, %i.ah
  %i.ba = fsub double %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.bc = load <2 x double>, ptr %i.bb, align 1, !tbaa !70, !noalias !194 ; 3 uses
  store <2 x double> %i.bc, ptr %.sroa.0.i.i, align 16, !tbaa !70, !noalias !194
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.be = load double, ptr %i.bd, align 8, !tbaa !68, !noalias !194
  %i.bf = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.be, i64 0
  store <2 x double> %i.bf, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx35, align 16, !tbaa !68, !noalias !194
  %i.bg = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %.sroa.0.8.vec.insert, %i.bg
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !194 ; 2 uses
  %i.bi = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x double> %.sroa.10.40.vec.insert, %i.bi
  %i.bk = fadd <2 x double> %i.bh, %i.bj
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !194 ; 4 uses
  %i.bl = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %.sroa.18.72.vec.insert, %i.bl
  %i.bn = fadd <2 x double> %i.bk, %i.bm
  %i.bo = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x double> %i.au, %i.bo
  %i.bq = fadd <2 x double> %i.bp, %i.bn          ; 2 uses
  %i.br = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.bs = fmul double %i.ba, %i.br
  %i.bt = extractelement <2 x double> %i.bc, i64 0
  %i.bu = fmul double %i.z, %i.bt
  %i.bv = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.bw = fmul double %i.ac, %i.bv
  %i.bx = fadd double %i.bu, %i.bw
  %i.by = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.bz = fmul double %i.af, %i.by
  %i.ca = fadd double %i.bx, %i.bz
  %.sroa.4.16.vec.extract.i.i = fadd double %i.bs, %i.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.cb = trunc nuw i64 %indvars.iv to i32
  %i.cc = mul i32 %i.cb, 3                        ; 3 uses
  %.sroa.030.0.vec.extract = extractelement <2 x double> %i.bq, i64 0
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !68
  %i.cg = fsub double %.sroa.030.0.vec.extract, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cd
  store double %i.cg, ptr %i.ch, align 8, !tbaa !68
  %.sroa.030.8.vec.extract = extractelement <2 x double> %i.bq, i64 1
  %i.ci = add i32 %i.cc, 1
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !68
  %i.cm = fsub double %.sroa.030.8.vec.extract, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cj
  store double %i.cm, ptr %i.cn, align 8, !tbaa !68
  %i.co = add i32 %i.cc, 2
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !68
  %i.cs = fsub double %.sroa.4.16.vec.extract.i.i, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cp
  store double %i.cs, ptr %i.ct, align 8, !tbaa !68
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !192
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o16EdgeSE3LotsOfXYZ14linearizeOplusEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(284) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = mul nuw nsw i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 4294967293
  %i.l = and i64 %i.k, 4294967295                 ; 9 uses
  %.not.i = icmp ne i64 %i.l, 0                   ; 2 uses
  br i1 %.not.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.m = mul nuw nsw i64 %i.l, 48
  %calloc201 = tail call ptr @calloc(i64 1, i64 %i.m) ; 2 uses
  %i.n = icmp eq ptr %calloc201, null
  br i1 %i.n, label %bb.a, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.thread

bb.a:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc61 unwind label %bb.c

.noexc61:                                         ; preds = %bb.a
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %.sroa.0126.1181 = phi ptr [ null, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i ], [ %calloc201, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !68, !noalias !204
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.q, i64 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !68, !noalias !204
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.s, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !68, !noalias !204
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !68, !noalias !204
  %.sroa.11.32.vec.insert120 = insertelement <2 x double> poison, double %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !68, !noalias !204
  %.sroa.11.40.vec.insert121 = insertelement <2 x double> %.sroa.11.32.vec.insert120, double %i.y, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !68, !noalias !204
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !68, !noalias !204
  %.sroa.19.64.vec.insert124 = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !68, !noalias !204
  %.sroa.19.72.vec.insert125 = insertelement <2 x double> %.sroa.19.64.vec.insert124, double %i.ae, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !68, !noalias !204
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.ak = icmp ugt i64 %i.h, 8
  br i1 %i.ak, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i40.lr.ph, label %._crit_edge

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i40.lr.ph: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.thread
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 4 ; 2 uses
  %i.al = mul nuw nsw i64 %i.l, 3                 ; 3 uses
  %i.am = shl nuw nsw i64 %i.l, 2                 ; 3 uses
  %i.an = mul nuw nsw i64 %i.l, 5                 ; 3 uses
  tail call void @llvm.assume(i1 %.not.i)
  %i.ao = mul nuw nsw i64 %i.l, 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx202 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i40

._crit_edge:                                      ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSIS2_EERS5_RKNS_9DenseBaseIT_EE.exit60, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !77
  %i.ax = mul i64 %i.aw, %i.au                    ; 4 uses
  %i.ay = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.az = and i64 %i.ay, 7
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %._crit_edge
  %i.ba = lshr exact i64 %i.ay, 3
  %i.bb = and i64 %i.ba, 1
  %i.bc = tail call i64 @llvm.smin.i64(i64 %i.bb, i64 %i.ax)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %._crit_edge
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.b ], [ %i.ax, %._crit_edge ] ; 8 uses
  %i.bd = sub i64 %i.ax, %.0.i.i.i.i.i.i.i.i.i    ; 3 uses
  %i.be = sdiv i64 %i.bd, 2                       ; 2 uses
  %i.bf = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.bg = add i64 %i.bf, %.0.i.i.i.i.i.i.i.i.i    ; 2 uses
  %i.bh = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_IS8_EENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i
  %i.bi = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.as, ptr align 8 %.sroa.0126.1181, i64 %i.bi, i1 false), !tbaa !68
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_IS8_EENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_IS8_EENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i
  %i.bj = icmp sgt i64 %i.bd, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_IS8_EENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.bk = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i, 3    ; 2 uses
  %scevgep192 = getelementptr i8, ptr %i.as, i64 %i.bk
  %scevgep193 = getelementptr i8, ptr %.sroa.0126.1181, i64 %i.bk
  %i.bl = add i64 %.0.i.i.i.i.i.i.i.i.i, 2
  %smax194 = tail call i64 @llvm.smax.i64(i64 %i.bg, i64 %i.bl)
  %i.bm = xor i64 %.0.i.i.i.i.i.i.i.i.i, -1
  %i.bn = add i64 %smax194, %i.bm
  %i.bo = shl i64 %i.bn, 3
  %i.bp = and i64 %i.bo, -16
  %i.bq = add i64 %i.bp, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep192, ptr align 1 %scevgep193, i64 %i.bq, i1 false), !tbaa !70
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_IS8_EENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.br = icmp slt i64 %i.bg, %i.ax
  br i1 %i.br, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSIS2_EERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bs = shl i64 %i.be, 4
  %i.bt = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i, 3
  %i.bu = add i64 %i.bs, %i.bt                    ; 2 uses
  %scevgep195 = getelementptr i8, ptr %i.as, i64 %i.bu
  %scevgep196 = getelementptr i8, ptr %.sroa.0126.1181, i64 %i.bu
  %i.bv = sub i64 %i.bd, %i.bf
  %i.bw = shl nuw i64 %i.bv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep195, ptr align 8 %scevgep196, i64 %i.bw, i1 false), !tbaa !68
  br label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSIS2_EERS5_RKNS_9DenseBaseIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i40: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i40.lr.ph, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSIS2_EERS5_RKNS_9DenseBaseIT_EE.exit60
  %i.by = phi ptr [ %i.b, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i40.lr.ph ], [ %i.hc, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSIS2_EERS5_RKNS_9DenseBaseIT_EE.exit60 ]
  %i.bz = phi i64 [ 1, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i40.lr.ph ], [ %i.ha, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSIS2_EERS5_RKNS_9DenseBaseIT_EE.exit60 ] ; 2 uses
  %.0188 = phi i32 [ 1, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i40.lr.ph ], [ %i.gz, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEaSIS2_EERS5_RKNS_9DenseBaseIT_EE.exit60 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !66 ; 2 uses
  %i.cc = load double, ptr %i.p, align 8, !tbaa !68, !noalias !205
  %.sroa.078.0.vec.insert = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cd = load double, ptr %i.r, align 8, !tbaa !68, !noalias !205
  %.sroa.078.8.vec.insert = insertelement <2 x double> %.sroa.078.0.vec.insert, double %i.cd, i64 1 ; 2 uses
  %i.ce = load double, ptr %i.t, align 8, !tbaa !68, !noalias !205 ; 2 uses
  %i.cf = load double, ptr %i.v, align 8, !tbaa !68, !noalias !205
  %.sroa.11.32.vec.insert = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cg = load double, ptr %i.x, align 8, !tbaa !68, !noalias !205
  %.sroa.11.40.vec.insert = insertelement <2 x double> %.sroa.11.32.vec.insert, double %i.cg, i64 1 ; 2 uses
  %i.ch = load double, ptr %i.z, align 8, !tbaa !68, !noalias !205 ; 2 uses
  %i.ci = load double, ptr %i.ab, align 8, !tbaa !68, !noalias !205
  %.sroa.19.64.vec.insert = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cj = load double, ptr %i.ad, align 8, !tbaa !68, !noalias !205
  %.sroa.19.72.vec.insert = insertelement <2 x double> %.sroa.19.64.vec.insert, double %i.cj, i64 1 ; 2 uses
  %i.ck = load double, ptr %i.af, align 8, !tbaa !68, !noalias !205 ; 2 uses
  %i.cl = fneg <2 x double> %.sroa.078.8.vec.insert
  %i.cm = load double, ptr %i.ah, align 8, !tbaa !68, !noalias !205 ; 2 uses
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.co, %i.cl
  %i.cq = load double, ptr %i.ai, align 8, !tbaa !68, !noalias !205 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %.sroa.11.40.vec.insert, %i.cs
  %i.cu = fsub <2 x double> %i.cp, %i.ct
  %i.cv = load double, ptr %i.aj, align 8, !tbaa !68, !noalias !205 ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %.sroa.19.72.vec.insert, %i.cx
  %i.cz = fsub <2 x double> %i.cu, %i.cy
  %i.da = fneg double %i.ck
  %i.db = fmul double %i.cv, %i.da
  %i.dc = fmul double %i.ch, %i.cq
  %i.dd = fsub double %i.db, %i.dc
  %i.de = fmul double %i.ce, %i.cm
  %i.df = fsub double %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cb, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.dh = load <2 x double>, ptr %i.dg, align 1, !tbaa !70, !noalias !206 ; 3 uses
  store <2 x double> %i.dh, ptr %.sroa.0.i.i, align 16, !tbaa !70, !noalias !206
  %i.di = getelementptr inbounds nuw i8, ptr %i.cb, i64 184
  %i.dj = load double, ptr %i.di, align 8, !tbaa !68, !noalias !206
  %i.dk = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.dj, i64 0
  store <2 x double> %i.dk, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx202, align 16, !tbaa !68, !noalias !206
  %i.dl = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %.sroa.078.8.vec.insert, %i.dl
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !206 ; 2 uses
  %i.dn = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %.sroa.11.40.vec.insert, %i.dn
  %i.dp = fadd <2 x double> %i.dm, %i.do
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !206 ; 4 uses
  %i.dq = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %.sroa.19.72.vec.insert, %i.dq
  %i.ds = fadd <2 x double> %i.dp, %i.dr
  %i.dt = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.du = fmul <2 x double> %i.cz, %i.dt
  %i.dv = fadd <2 x double> %i.du, %i.ds          ; 2 uses
  %i.dw = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.dx = fmul double %i.df, %i.dw
  %i.dy = extractelement <2 x double> %i.dh, i64 0
  %i.dz = fmul double %i.ce, %i.dy
  %i.ea = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.eb = fmul double %i.ch, %i.ea
  %i.ec = fadd double %i.dz, %i.eb
  %i.ed = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.ee = fmul double %i.ck, %i.ed
  %i.ef = fadd double %i.ec, %i.ee
  %.sroa.4.16.vec.extract.i.i = fadd double %i.dx, %i.ef ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.eg = mul i32 %.0188, 3                       ; 3 uses
  %i.eh = add i32 %i.eg, -3
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.1181, i64 %i.ei ; 7 uses
  store <2 x double> <double -1.000000e+00, double -0.000000e+00>, ptr %i.ej, align 8, !tbaa !68
  %i.ek = getelementptr i8, ptr %i.ej, i64 16
  store double -0.000000e+00, ptr %i.ek, align 8, !tbaa !68
  %i.el = getelementptr [8 x i8], ptr %i.ej, i64 %i.l ; 2 uses
  store <2 x double> <double -0.000000e+00, double -1.000000e+00>, ptr %i.el, align 8, !tbaa !68
  %i.em = getelementptr i8, ptr %i.el, i64 16
  store double -0.000000e+00, ptr %i.em, align 8, !tbaa !68
  %i.en = getelementptr i8, ptr %i.ej, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store <2 x double> splat (double -0.000000e+00), ptr %i.en, align 8, !tbaa !68
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  store double -1.000000e+00, ptr %i.eo, align 8, !tbaa !68
  %i.ep = getelementptr [8 x i8], ptr %i.ej, i64 %i.al
  store double -0.000000e+00, ptr %i.ep, align 8, !tbaa !68
  %i.eq = getelementptr [8 x i8], ptr %i.ej, i64 %i.am
  %i.er = fmul double %.sroa.4.16.vec.extract.i.i, -2.000000e+00
  store double %i.er, ptr %i.eq, align 8, !tbaa !68
  %.sroa.098.8.vec.extract = extractelement <2 x double> %i.dv, i64 1 ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ej, i64 %i.an
  %i.et = fmul double %.sroa.098.8.vec.extract, 2.000000e+00
  store double %i.et, ptr %i.es, align 8, !tbaa !68
  %i.eu = add i32 %i.eg, -2
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr [8 x i8], ptr %.sroa.0126.1181, i64 %i.ev ; 3 uses
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %i.al
  %i.ey = fmul double %.sroa.4.16.vec.extract.i.i, 2.000000e+00
  store double %i.ey, ptr %i.ex, align 8, !tbaa !68
  %i.ez = getelementptr [8 x i8], ptr %i.ew, i64 %i.am
  store double -0.000000e+00, ptr %i.ez, align 8, !tbaa !68
  %.sroa.098.0.vec.extract = extractelement <2 x double> %i.dv, i64 0 ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %i.ew, i64 %i.an
  %i.fb = fmul double %.sroa.098.0.vec.extract, -2.000000e+00
  store double %i.fb, ptr %i.fa, align 8, !tbaa !68
  %i.fc = add i32 %i.eg, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %.sroa.0126.1181, i64 %i.fd ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %i.fe, i64 %i.al
  %i.fg = fmul double %.sroa.098.8.vec.extract, -2.000000e+00
  store double %i.fg, ptr %i.ff, align 8, !tbaa !68
  %i.fh = getelementptr [8 x i8], ptr %i.fe, i64 %i.am
  %i.fi = fmul double %.sroa.098.0.vec.extract, 2.000000e+00
  store double %i.fi, ptr %i.fh, align 8, !tbaa !68
  %i.fj = getelementptr [8 x i8], ptr %i.fe, i64 %i.an
end_hunk_0
