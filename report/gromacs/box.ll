Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/box?download=true
inline.NumInlined: 162
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0

; Function Attrs: mustprogress uwtable
define void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3, ptr %4, ptr %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  br i1 %1, label %bb.b, label %.thread25

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val = load i32, ptr %i.a, align 4, !tbaa !128
  %i.b = icmp eq i32 %.val, 0
  br i1 %i.b, label %bb.c, label %.thread20

.thread25:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !224
  %.fr = freeze i32 %i.d
  %i.e = icmp sgt i32 %.fr, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1020
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  %i.j = sext i32 %i.i to i64
  %.pre = ptrtoint ptr %4 to i64
  %.not.i = icmp eq ptr %4, null
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.j
  %spec.select.i = select i1 %.not.i, ptr null, ptr %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load i32, ptr %i.l, align 8, !tbaa !226
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.o = load i32, ptr %i.n, align 4, !tbaa !227
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.q = ptrtoint ptr %spec.select.i to i64
  %i.r = sub i64 %i.q, %.pre
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.e, ptr %i.t, ptr null
  tail call fastcc void @_ZL13low_set_ddboxiiPKN3gmx11BasicVectorIiEEPA3_KfbNS_8ArrayRefIKNS0_IfEEEEPKNS_7MpiCommEP11gmx_ddbox_t(i32 noundef %i.m, i32 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %2, i1 noundef zeroext %3, ptr %4, ptr %i.s, ptr noundef %spec.select, ptr noundef %6)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %5 to i64
  %i.v = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %.not.i22 = icmp eq ptr %4, null
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %i.w
  %spec.select.i23 = select i1 %.not.i22, ptr null, ptr %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = load i32, ptr %i.y, align 8, !tbaa !226
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !227
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ad = ptrtoint ptr %spec.select.i23 to i64
  %i.ae = sub i64 %i.ad, %i.v
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.ae
  tail call fastcc void @_ZL13low_set_ddboxiiPKN3gmx11BasicVectorIiEEPA3_KfbNS_8ArrayRefIKNS0_IfEEEEPKNS_7MpiCommEP11gmx_ddbox_t(i32 noundef %i.z, i32 noundef %i.ab, ptr noundef nonnull %i.ac, ptr noundef %2, i1 noundef zeroext %3, ptr %4, ptr %i.af, ptr noundef null, ptr noundef %6)
  br label %.thread20

.thread20:                                        ; preds = %bb.c, %bb.b
  tail call void @_Z8dd_bcastPK12gmx_domdec_tiPv(ptr noundef nonnull %0, i32 noundef 200, ptr noundef %6)
  br label %bb.d

bb.d:                                             ; preds = %.thread25, %.thread20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL13low_set_ddboxiiPKN3gmx11BasicVectorIiEEPA3_KfbNS_8ArrayRefIKNS0_IfEEEEPKNS_7MpiCommEP11gmx_ddbox_t(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, ptr %.0.val, ptr %.8.val, ptr noundef %5, ptr nofree noundef captures(none) initializes((0, 8)) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %8 = alloca %"struct.std::array.180", align 16  ; 9 uses
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = alloca [3 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %0, ptr %6, align 4, !tbaa !243
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !244
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 6 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 4 uses
  %i.g = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.prol
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !245
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.prol
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.k = load float, ptr %i.j, align 4, !tbaa !245
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.prol
  store float %i.k, ptr %i.l, align 4, !tbaa !245
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !228

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.m = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.n = icmp ugt i64 %i.m, -4
  br i1 %i.n, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.o = shl nuw nsw i64 %wide.trip.count, 2
  %i.p = getelementptr i8, ptr %6, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 20
  %i.r = shl nuw nsw i64 %wide.trip.count, 4
  %i.s = getelementptr i8, ptr %3, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -12
  %bound0 = icmp ult ptr %i.e, %i.t
  %bound1 = icmp ult ptr %3, %i.q
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.u = add nsw i64 %wide.trip.count, -1
  %n.vec = and i64 %i.u, -2                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <2 x float> zeroinitializer, ptr %i.v, align 4, !tbaa !245, !alias.scope !247, !noalias !248
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %index
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %wide.vec = load <8 x float>, ptr %i.x, align 4, !tbaa !245, !alias.scope !248
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  store <2 x float> %strided.vec, ptr %i.y, align 4, !tbaa !245, !alias.scope !247, !noalias !248
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader, label %vector.body, !llvm.loop !232

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %i.aa = icmp slt i32 %1, 3
  %or.cond = and i1 %i.aa, %4
  br i1 %or.cond, label %bb.b, label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !245
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !245
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float %i.ae, ptr %i.af, align 4, !tbaa !245
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !245
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !245
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  store float %i.aj, ptr %i.ak, align 4, !tbaa !245
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !245
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next.1
  %i.ao = load float, ptr %i.an, align 4, !tbaa !245
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.1
  store float %i.ao, ptr %i.ap, align 4, !tbaa !245
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !245
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.2
  %i.at = load float, ptr %i.as, align 4, !tbaa !245
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.2
  store float %i.at, ptr %i.au, align 4, !tbaa !245
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !233

bb.b:                                             ; preds = %._crit_edge
  %i.av = ptrtoint ptr %.0.val to i64
  %.not5153.i = icmp eq ptr %.0.val, %.8.val
  br i1 %.not5153.i, label %._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.sroa.048.054.i = phi ptr [ %i.bf, %.preheader.i ], [ %.0.val, %bb.b ] ; 3 uses
  %i.aw = phi <2 x double> [ %i.ba, %.preheader.i ], [ zeroinitializer, %bb.b ]
  %i.ax = phi <4 x double> [ %i.be, %.preheader.i ], [ zeroinitializer, %bb.b ]
  %i.ay = load <2 x float>, ptr %.sroa.048.054.i, align 4, !tbaa !245 ; 4 uses
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fadd <2 x double> %i.aw, %i.az          ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.048.054.i, i64 8
  %foldExtExtBinop = fmul <2 x float> %i.ay, %i.ay
  %9 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !245 ; 2 uses
  %10 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x float> %10, float %i.bc, i64 1 ; 2 uses
  %12 = fmul <2 x float> %11, %11
  %13 = insertelement <4 x float> poison, float %i.bc, i64 0
  %14 = shufflevector <4 x float> %13, <4 x float> %9, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %15 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %14, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bd = fpext <4 x float> %16 to <4 x double>
  %i.be = fadd <4 x double> %i.ax, %i.bd          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.048.054.i, i64 12 ; 2 uses
  %.not51.i = icmp eq ptr %i.bf, %.8.val
  br i1 %.not51.i, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %.preheader.i, %bb.b
  %i.bg = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.ba, %.preheader.i ] ; 3 uses
  %i.bh = phi <4 x double> [ zeroinitializer, %bb.b ], [ %i.be, %.preheader.i ] ; 4 uses
  %i.bi = ptrtoint ptr %.8.val to i64
  %i.bj = sub i64 %i.bi, %i.av
  %i.bk = sdiv exact i64 %i.bj, 12
  %i.bl = trunc i64 %i.bk to i32                  ; 3 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !252
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.d, label %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %.sroa.1581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bp = shufflevector <2 x double> %i.bg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x double> %i.bp, <4 x double> %i.bh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.bq, ptr %8, align 16, !tbaa !253
  %.sroa.10.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.br = shufflevector <4 x double> %i.bh, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.br, ptr %.sroa.10.0.scevgep.sroa_idx.i, align 16, !tbaa !253
  %i.bs = sitofp i32 %i.bl to double
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store double %i.bs, ptr %i.bt, align 16, !tbaa !253
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @_ZNK3gmx7MpiComm9sumReduceENS_8ArrayRefIdEE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %8, ptr nonnull %i.bu)
  %i.bv = load <2 x double>, ptr %8, align 16, !tbaa !253
  %i.bw = load <4 x double>, ptr %.sroa.1581.0..sroa_idx.i, align 16, !tbaa !253
  %i.bx = load double, ptr %i.bt, align 16, !tbaa !253
  %i.by = call double @llvm.rint.f64(double %i.bx)
  %i.bz = fptosi double %i.by to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.pre = load i32, ptr %i.c, align 4, !tbaa !244
  br label %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit

_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit: ; preds = %._crit_edge.i, %bb.c, %bb.d
  %i.ca = phi i32 [ %1, %._crit_edge.i ], [ %.pre, %bb.d ], [ %1, %bb.c ] ; 5 uses
  %.043.i = phi i32 [ %i.bl, %._crit_edge.i ], [ %i.bz, %bb.d ], [ %i.bl, %bb.c ]
  %i.cb = phi <2 x double> [ %i.bg, %._crit_edge.i ], [ %i.bv, %bb.d ], [ %i.bg, %bb.c ]
  %i.cc = phi <4 x double> [ %i.bh, %._crit_edge.i ], [ %i.bw, %bb.d ], [ %i.bh, %bb.c ] ; 3 uses
  %i.cd = sitofp i32 %.043.i to double
  %i.ce = fdiv double 1.000000e+00, %i.cd         ; 3 uses
  %i.cf = extractelement <4 x double> %i.cc, i64 0
  %i.cg = fmul double %i.cf, %i.ce                ; 3 uses
  %i.ch = extractelement <4 x double> %i.cc, i64 3
  %i.ci = fmul double %i.ch, %i.ce
  %i.cj = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = fmul <2 x double> %i.cb, %i.ck          ; 3 uses
  %i.cm = fptrunc <2 x double> %i.cl to <2 x float>
  %i.cn = shufflevector <4 x double> %i.cc, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.co = fmul <2 x double> %i.cn, %i.ck
  %i.cp = fneg <2 x double> %i.cl
  %i.cq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cl, <2 x double> %i.co) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = call double @sqrt(double noundef %i.cr) #13
  store <2 x float> %i.cm, ptr %i.a, align 8, !tbaa !245
  %i.ct = extractelement <2 x double> %i.cq, i64 1
  %i.cu = call double @sqrt(double noundef %i.ct) #13
  %i.cv = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cu, i64 1
  %i.cx = fptrunc <2 x double> %i.cw to <2 x float>
  store <2 x float> %i.cx, ptr %i.b, align 8, !tbaa !245
  %i.cy = fptrunc double %i.cg to float
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.cy, ptr %i.cz, align 8, !tbaa !245
  %i.da = fneg double %i.cg
  %i.db = call double @llvm.fmuladd.f64(double %i.da, double %i.cg, double %i.ci)
  %i.dc = call double @sqrt(double noundef %i.db) #13
  %i.dd = fptrunc double %i.dc to float
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.dd, ptr %i.de, align 8, !tbaa !245
  %i.df = icmp slt i32 %i.ca, 3
  br i1 %i.df, label %.lr.ph12, label %.loopexit

.lr.ph12:                                         ; preds = %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.di = load ptr, ptr @debug, align 8, !tbaa !255 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  %i.dk = sext i32 %i.ca to i64                   ; 5 uses
  br i1 %i.dj, label %.lr.ph12.split.us.preheader, label %.lr.ph12.split

.lr.ph12.split.us.preheader:                      ; preds = %.lr.ph12
  %i.dl = add i32 %i.ca, 1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = sub nsw i64 4, %i.dm                    ; 3 uses
  %min.iters.check70 = icmp ult i64 %i.dn, 6
  br i1 %min.iters.check70, label %.lr.ph12.split.us.preheader85, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph12.split.us.preheader
  %i.do = add i32 %i.ca, 1
  %i.dp = zext i32 %i.do to i64
  %i.dq = sub nsw i64 3, %i.dp                    ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = sub i32 -2, %i.ca
  %i.dt = icmp ult i32 %i.ds, %i.dr
  %i.du = icmp ugt i64 %i.dq, 4294967295
  %i.dv = or i1 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph12.split.us.preheader85, label %vector.ph71

vector.ph71:                                      ; preds = %vector.scevcheck
  %n.vec72 = and i64 %i.dn, -2                    ; 3 uses
  %i.dw = add nsw i64 %n.vec72, %i.dk
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next76, %vector.body73 ] ; 2 uses
  %i.dx = add i64 %index74, %i.dk                 ; 4 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dx
  %wide.load = load <2 x float>, ptr %i.dy, align 4, !tbaa !245 ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dx
  %wide.load75 = load <2 x float>, ptr %i.dz, align 4, !tbaa !245 ; 2 uses
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %wide.load75, <2 x float> splat (float f0xBFDDB3D7), <2 x float> %wide.load) ; 2 uses
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %wide.load75, <2 x float> splat (float f0x3FDDB3D7), <2 x float> %wide.load)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dx
  store <2 x float> %i.ea, ptr %i.ec, align 4, !tbaa !245
  %i.ed = fsub <2 x float> %i.eb, %i.ea
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dx
  store <2 x float> %i.ed, ptr %i.ee, align 4, !tbaa !245
  %index.next76 = add nuw i64 %index74, 2         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec72
  br i1 %i.ef, label %middle.block77, label %vector.body73, !llvm.loop !234

middle.block77:                                   ; preds = %vector.body73
  %cmp.n = icmp eq i64 %i.dn, %n.vec72
  br i1 %cmp.n, label %.loopexit, label %.lr.ph12.split.us.preheader85

.lr.ph12.split.us.preheader85:                    ; preds = %vector.scevcheck, %.lr.ph12.split.us.preheader, %middle.block77
  %indvars.iv30.ph = phi i64 [ %i.dk, %vector.scevcheck ], [ %i.dk, %.lr.ph12.split.us.preheader ], [ %i.dw, %middle.block77 ]
  br label %.lr.ph12.split.us

.lr.ph12.split.us:                                ; preds = %.lr.ph12.split.us.preheader85, %.lr.ph12.split.us
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph12.split.us ], [ %indvars.iv30.ph, %.lr.ph12.split.us.preheader85 ] ; 5 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv30
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !245 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv30
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !245 ; 2 uses
  %i.ek = call float @llvm.fmuladd.f32(float %i.ej, float f0xBFDDB3D7, float %i.eh) ; 2 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ej, float f0x3FDDB3D7, float %i.eh)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv30
  store float %i.ek, ptr %i.em, align 4, !tbaa !245
  %i.en = fsub float %i.el, %i.ek
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv30
  store float %i.en, ptr %i.eo, align 4, !tbaa !245
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.ep = and i64 %indvars.iv.next31, 4294967295
  %exitcond34.not = icmp eq i64 %i.ep, 3
  br i1 %exitcond34.not, label %.loopexit, label %.lr.ph12.split.us, !llvm.loop !235

.lr.ph12.split:                                   ; preds = %.lr.ph12, %bb.f
  %i.eq = phi ptr [ %i.fa, %bb.f ], [ %i.di, %.lr.ph12 ] ; 2 uses
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %bb.f ], [ %i.dk, %.lr.ph12 ] ; 5 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv26
  %i.es = load float, ptr %i.er, align 4, !tbaa !245 ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv26
  %i.eu = load float, ptr %i.et, align 4, !tbaa !245 ; 2 uses
  %i.ev = call float @llvm.fmuladd.f32(float %i.eu, float f0xBFDDB3D7, float %i.es) ; 3 uses
  %i.ew = call float @llvm.fmuladd.f32(float %i.eu, float f0x3FDDB3D7, float %i.es) ; 2 uses
  %.not = icmp eq ptr %i.eq, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph12.split
  %i.ex = fpext float %i.ev to double
  %i.ey = fpext float %i.ew to double
  %i.ez = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.eq, ptr noundef nonnull @.str, double noundef %i.ex, double noundef %i.ey) #13 ; 0 uses
  %.pre35 = load ptr, ptr @debug, align 8, !tbaa !255
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph12.split
  %i.fa = phi ptr [ %.pre35, %bb.e ], [ null, %.lr.ph12.split ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv26
  store float %i.ev, ptr %i.fb, align 4, !tbaa !245
  %i.fc = fsub float %i.ew, %i.ev
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv26
  store float %i.fc, ptr %i.fd, align 4, !tbaa !245
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %i.fe = and i64 %indvars.iv.next27, 4294967295
  %exitcond29.not = icmp eq i64 %i.fe, 3
  br i1 %exitcond29.not, label %.loopexit, label %.lr.ph12.split, !llvm.loop !236

.loopexit:                                        ; preds = %bb.f, %.lr.ph12.split.us, %middle.block77, %_ZL18calc_pos_av_stddevN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPfS5_PKNS_7MpiCommE.exit, %._crit_edge
  %i.ff = load i32, ptr %6, align 4, !tbaa !243   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 164 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.not164.i = icmp eq ptr %2, null
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
end_hunk_0
