inline.NumInlined: 299
inline.NumDeleted: 117
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp11STLExporter15WritePointCloudERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK7aiScene:bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph26, %.loopexit
  %i.ag = phi i32 [ %i.w, %.lr.ph26 ], [ %i.co, %.loopexit ] ; 2 uses
  %indvars.iv29 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next30, %.loopexit ] ; 2 uses
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv29
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %.not27 = icmp eq i32 %i.am, 0
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %indvars.iv ; 5 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 9) ; 0 uses
  %i.ar = load float, ptr %i.ap, align 4
  %i.as = fpext float %i.ar to double
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.as) ; 2 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.at, double noundef %i.ax) ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fpext float %i.bb to double
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.bc)
  %i.be = load ptr, ptr %i.h, align 8
  %i.bf = load i64, ptr %i.j, align 8
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.be, i64 noundef %i.bf) ; 0 uses
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 9) ; 0 uses
  %i.bi = load float, ptr %i.ap, align 4
  %i.bj = fpext float %i.bi to double
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.bj) ; 2 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bm = load float, ptr %i.av, align 4
  %i.bn = fpext float %i.bm to double
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, double noundef %i.bn) ; 2 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bq = load float, ptr %i.ba, align 4
  %i.br = fpext float %i.bq to double
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, double noundef %i.br)
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = load i64, ptr %i.j, align 8
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef %i.bt, i64 noundef %i.bu) ; 0 uses
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 9) ; 0 uses
  %i.bx = load float, ptr %i.ap, align 4
  %i.by = fpext float %i.bx to double
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.by) ; 2 uses
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cb = load float, ptr %i.av, align 4
  %i.cc = fpext float %i.cb to double
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, double noundef %i.cc) ; 2 uses
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cf = load float, ptr %i.ba, align 4
  %i.cg = fpext float %i.cf to double
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, double noundef %i.cg)
  %i.ci = load ptr, ptr %i.h, align 8
  %i.cj = load i64, ptr %i.j, align 8
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.ci, i64 noundef %i.cj) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = load i32, ptr %i.al, align 4
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %bb.c, label %.loopexit.loopexit, !llvm.loop !27

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.v, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.b
  %i.co = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.ag, %.preheader ], [ %i.ag, %bb.b ] ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp samesign ult i64 %indvars.iv.next30, %i.cp
  br i1 %i.cq, label %bb.b, label %._crit_edge, !llvm.loop !28
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11STLExporter9WriteMeshEPK6aiMesh(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not39 = icmp eq i32 %i.b, 0
  br i1 %.not39, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge38:                                    ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph37, %bb.g
  %i.h = phi i32 [ %i.b, %.lr.ph37 ], [ %i.de, %bb.g ]
  %indvars.iv47 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next48, %bb.g ] ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv47 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp ult i32 %i.k, 3
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %wide.trip.count = zext i32 %i.k to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.e

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.d, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod61 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = load <2 x float>, ptr %i.s, align 4
  %i.u = fadd <2 x float> %i.ay, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load float, ptr %i.v, align 4
  %i.x = fadd float %i.bb, %i.w
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa58 = phi <2 x float> [ %i.ay, %.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 5 uses
  %.lcssa = phi float [ %i.bb, %.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.lcssa58, %.lcssa58
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.z = extractelement <2 x float> %.lcssa58, i64 0 ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.y)
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %.lcssa, float %.lcssa, float %i.aa) ; 2 uses
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ab)
  %i.ad = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %.lcssa58, %i.af
  %i.ah = fmul float %.lcssa, %i.ad
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

bb.e:                                             ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.sroa.14.030 = phi float [ 0.000000e+00, %.preheader ], [ %i.bb, %bb.e ]
  %i.ai = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.ay, %bb.e ]
  %niter = phi i64 [ 0, %.preheader ], [ %niter.next.1, %bb.e ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.al ; 2 uses
  %i.an = load <2 x float>, ptr %i.am, align 4
  %i.ao = fadd <2 x float> %i.ai, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fadd float %.sroa.14.030, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.av ; 2 uses
  %i.ax = load <2 x float>, ptr %i.aw, align 4
  %i.ay = fadd <2 x float> %i.ao, %i.ax           ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fadd float %i.ar, %i.ba                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !29

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.d, %bb.c
  %.sroa.14.1 = phi float [ 0.000000e+00, %bb.c ], [ %i.ah, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.lcssa, %bb.d ]
  %i.bc = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.ag, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.lcssa58, %bb.d ] ; 2 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 14) ; 0 uses
  %2 = extractelement <2 x float> %i.bc, i64 0
  %3 = fpext float %2 to double
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %3) ; 2 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %4 = extractelement <2 x float> %i.bc, i64 1
  %5 = fpext float %4 to double
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, double noundef %5) ; 2 uses
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bi = fpext float %.sroa.14.1 to double
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, double noundef %i.bi)
  %i.bk = load ptr, ptr %i.e, align 8
  %i.bl = load i64, ptr %i.f, align 8
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bk, i64 noundef %i.bl) ; 0 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 12) ; 0 uses
  %i.bo = load ptr, ptr %i.e, align 8
  %i.bp = load i64, ptr %i.f, align 8
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bo, i64 noundef %i.bp) ; 0 uses
  %i.br = load i32, ptr %i.j, align 8
  %.not40 = icmp eq i32 %i.br, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 9) ; 0 uses
  %i.bu = load ptr, ptr %i.e, align 8
  %i.bv = load i64, ptr %i.f, align 8
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bu, i64 noundef %i.bv) ; 0 uses
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 9) ; 0 uses
  %i.by = load ptr, ptr %i.e, align 8
  %i.bz = load i64, ptr %i.f, align 8
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.by, i64 noundef %i.bz)
  %i.cb = load ptr, ptr %i.e, align 8
  %i.cc = load i64, ptr %i.f, align 8
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.cb, i64 noundef %i.cc) ; 0 uses
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv44 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next45, %bb.f ] ; 2 uses
  %i.ce = load ptr, ptr %i.g, align 8
  %i.cf = load ptr, ptr %i.bs, align 8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv44
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.ci ; 3 uses
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 9) ; 0 uses
  %i.cl = load float, ptr %i.cj, align 4
  %i.cm = fpext float %i.cl to double
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.cm) ; 2 uses
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fpext float %i.cq to double
  %i.cs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, double noundef %i.cr) ; 2 uses
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = fpext float %i.cv to double
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, double noundef %i.cw)
  %i.cy = load ptr, ptr %i.e, align 8
  %i.cz = load i64, ptr %i.f, align 8
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef %i.cy, i64 noundef %i.cz) ; 0 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.db = load i32, ptr %i.j, align 8
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp samesign ult i64 %indvars.iv.next45, %i.dc
  br i1 %i.dd, label %bb.f, label %._crit_edge, !llvm.loop !30

bb.g:                                             ; preds = %bb.b, %._crit_edge
  %i.de = phi i32 [ %i.h, %bb.b ], [ %.pre, %._crit_edge ] ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.next48, %i.df
  br i1 %i.dg, label %bb.b, label %._crit_edge38, !llvm.loop !31
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #8 align 2

declare noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #15
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #17
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
end_hunk_0
