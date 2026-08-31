Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_lotsofxyz?download=true
inline.NumInlined: 6649
inline.NumDeleted: 3240
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZNK3g2o16EdgeSE3LotsOfXYZ5writeERSo:bb.a
  br i1 %i.au, label %.preheader, label %._crit_edge24, !llvm.loop !128

.lr.ph22:                                         ; preds = %.preheader, %.lr.ph22
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %.lr.ph22 ], [ %indvars.iv27, %.preheader ] ; 2 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !109
  %i.ay = mul nsw i64 %i.ax, %indvars.iv29
  %i.az = getelementptr [8 x i8], ptr %i.aw, i64 %indvars.iv27
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !66
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bb) ; 0 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %i.be = mul i32 %i.bd, 3
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp samesign ult i64 %indvars.iv.next30, %i.bf
  br i1 %i.bg, label %.lr.ph22, label %._crit_edge, !llvm.loop !129
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o16EdgeSE3LotsOfXYZ15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(284) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 63                 ; 2 uses
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741816
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #32 ; 3 uses
  %i.k = lshr i64 %i.g, 6                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %.idx.i = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 -1, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.b, %bb.a
  %.sroa.052.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.b ] ; 5 uses
  %.sroa.1658.0 = phi ptr [ null, %bb.a ], [ %i.l, %bb.b ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.n, %i.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !89 ; 2 uses
  %.pre78 = load ptr, ptr %i.a, align 8, !tbaa !63 ; 3 uses
  %.pre81 = ptrtoint ptr %.pre to i64
  %.pre82 = ptrtoint ptr %.pre78 to i64
  %.pre84 = sub i64 %.pre81, %.pre82              ; 2 uses
  br i1 %.not73, label %.preheader, label %.preheader71.lr.ph

.preheader71.lr.ph:                               ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.p = ashr exact i64 %.pre84, 3                ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.preheader71.us, label %.preheader

.preheader71.us:                                  ; preds = %.preheader71.lr.ph, %._crit_edge.us
  %.sroa.048.074.us = phi ptr [ %i.an, %._crit_edge.us ], [ %i.n, %.preheader71.lr.ph ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.048.074.us, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !135
  br label %bb.c

bb.c:                                             ; preds = %.preheader71.us, %bb.e
  %i.v = phi i64 [ 1, %.preheader71.us ], [ %i.al, %bb.e ]
  %.01972.us = phi i32 [ 1, %.preheader71.us ], [ %i.ak, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre78, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !135
  %i.aa = icmp eq i32 %i.z, %i.u
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = add i32 %.01972.us, -1                  ; 2 uses
  %i.ac = lshr i32 %i.ab, 6
  %.zext.us = zext nneg i32 %i.ac to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.052.0, i64 %.zext.us ; 2 uses
  %i.ae = and i32 %i.ab, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = xor i64 %i.ag, -1
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !142
  %i.aj = and i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !142
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = add i32 %.01972.us, 1                   ; 2 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp ugt i64 %i.p, %i.al
  br i1 %i.am, label %bb.c, label %._crit_edge.us, !llvm.loop !143

._crit_edge.us:                                   ; preds = %bb.e
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.048.074.us) #33 ; 2 uses
  %.not.us = icmp eq ptr %i.an, %i.o
  br i1 %.not.us, label %.preheader, label %.preheader71.us, !llvm.loop !144

.preheader:                                       ; preds = %._crit_edge.us, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, %.preheader71.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = icmp ugt i64 %.pre84, 8
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx98 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  br label %bb.f

._crit_edge:                                      ; preds = %.preheader
  %.not.i.i34 = icmp eq ptr %.sroa.052.0, null
  br i1 %.not.i.i34, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit, %._crit_edge
  %i.az = ptrtoint ptr %.sroa.1658.0 to i64
  %i.ba = ptrtoint ptr %.sroa.052.0 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %.sroa.1658.0, i64 %i.bd
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bb) #34
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit
  %i.bf = phi ptr [ %.pre78, %.lr.ph ], [ %i.dq, %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit ] ; 2 uses
  %i.bg = phi ptr [ %.pre, %.lr.ph ], [ %i.dr, %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit ]
  %i.bh = phi i64 [ 1, %.lr.ph ], [ %i.dt, %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit ]
  %.075 = phi i32 [ 1, %.lr.ph ], [ %i.ds, %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit ] ; 2 uses
  %i.bi = add i32 %.075, -1                       ; 3 uses
  %i.bj = lshr i32 %i.bi, 6
  %.zext67 = zext nneg i32 %i.bj to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.052.0, i64 %.zext67
  %i.bl = and i32 %i.bi, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !142
  %i.bp = and i64 %i.bo, %i.bn
  %.not70 = icmp eq i64 %i.bp, 0
  br i1 %.not70, label %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = mul i32 %i.bi, 3                        ; 3 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.aq, align 8, !tbaa !71 ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = add i32 %i.bq, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = add i32 %i.bq, 2
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.by
  %i.ca = load double, ptr %i.bt, align 8, !tbaa !66 ; 2 uses
  %.sroa.041.0.vec.insert = insertelement <2 x double> poison, double %i.ca, i64 0 ; 2 uses
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !66
  %.sroa.041.8.vec.insert = insertelement <2 x double> %.sroa.041.0.vec.insert, double %i.cb, i64 1
  %i.cc = load double, ptr %i.bz, align 8, !tbaa !66
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store <2 x double> %.sroa.041.8.vec.insert, ptr %.sroa.0.i.i, align 16, !tbaa !72, !noalias !145
  %i.cf = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cc, i64 0
  store <2 x double> %i.cf, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx98, align 16, !tbaa !66, !noalias !145
  %i.cg = load <2 x double>, ptr %i.ar, align 16, !tbaa !72, !noalias !145
  %i.ch = shufflevector <2 x double> %.sroa.041.0.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.ch, %i.cg
  %i.cj = load <2 x double>, ptr %i.as, align 16, !tbaa !72, !noalias !145
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !145 ; 2 uses
  %i.ck = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.cj, %i.ck
  %i.cm = fadd <2 x double> %i.ci, %i.cl
  %i.cn = load <2 x double>, ptr %i.at, align 16, !tbaa !72, !noalias !145
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !145 ; 4 uses
  %i.co = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.cn, %i.co
  %i.cq = fadd <2 x double> %i.cm, %i.cp
  %i.cr = load <2 x double>, ptr %i.au, align 16, !tbaa !72, !noalias !145
  %i.cs = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x double> %i.cr, %i.cs
  %i.cu = fadd <2 x double> %i.ct, %i.cq
  %3 = load double, ptr %i.ay, align 16, !tbaa !72, !noalias !145
  %i.cv = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.cw = fmul double %i.cv, %3
  %4 = load double, ptr %i.av, align 16, !tbaa !72, !noalias !145
  %i.cx = fmul double %i.ca, %4
  %5 = load double, ptr %i.aw, align 16, !tbaa !72, !noalias !145
  %i.cy = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.cz = fmul double %i.cy, %5
  %i.da = fadd double %i.cx, %i.cz
  %6 = load double, ptr %i.ax, align 16, !tbaa !72, !noalias !145
  %i.db = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.dc = fmul double %i.db, %6
  %i.dd = fadd double %i.da, %i.dc
  %.sroa.4.16.vec.extract.i.i = fadd double %i.cw, %i.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 168
  store <2 x double> %i.cu, ptr %i.de, align 1, !tbaa !72
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 184
  store double %.sroa.4.16.vec.extract.i.i, ptr %i.df, align 8, !tbaa !66
  %i.dg = load ptr, ptr %i.ce, align 8, !tbaa !39
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 216
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(216) %i.ce)
          to label %._ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit_crit_edge unwind label %.thread, !inline_history !150

._ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit_crit_edge: ; preds = %bb.g
  %.pre79 = load ptr, ptr %i.ao, align 8, !tbaa !89
  %.pre80 = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit

.thread:                                          ; preds = %bb.g
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = ptrtoint ptr %.sroa.1658.0 to i64
  %i.dl = ptrtoint ptr %.sroa.052.0 to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %i.dn = ashr exact i64 %i.dm, 3
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [8 x i8], ptr %.sroa.1658.0, i64 %i.do
  tail call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dm) #34
  resume { ptr, i32 } %i.dj

_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit: ; preds = %._ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit_crit_edge, %bb.f
  %i.dq = phi ptr [ %.pre80, %._ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit_crit_edge ], [ %i.bf, %bb.f ] ; 2 uses
  %i.dr = phi ptr [ %.pre79, %._ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11setEstimateERKS3_.exit_crit_edge ], [ %i.bg, %bb.f ] ; 2 uses
  %i.ds = add i32 %.075, 1                        ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = ptrtoint ptr %i.dq to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3
  %i.dy = icmp ugt i64 %i.dx, %i.dt
  br i1 %i.dy, label %bb.f, label %._crit_edge.thread, !llvm.loop !151
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef double @_ZN3g2o16EdgeSE3LotsOfXYZ23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(284) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.c
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !135
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.05.010 = phi ptr [ %i.b, %.lr.ph ], [ %i.n, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !135
  %i.m = icmp eq i32 %i.h, %i.l
  br i1 %i.m, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.010) #33 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %i.o = phi double [ -1.000000e+00, %bb.a ], [ -1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.b ]
  ret double %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE, i64 264), ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #34
  br label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE13HessianHelperESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #34
  br label %_ZNSt6vectorIN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE13HessianHelperESaIS6_EED2Ev.exit

_ZNSt6vectorIN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE13HessianHelperESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 224) (i8, ptr @_ZTVN3g2o8BaseEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE, i64 16), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o8BaseEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE, i64 256), ptr %i.a, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.q) #30, !inline_history !156
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108
  tail call void @free(ptr noundef %i.s) #30, !inline_history !156
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.u) #30, !inline_history !156
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(232) %0) #30, !inline_history !156
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o16EdgeSE3LotsOfXYZD0Ev(ptr noundef nonnull align 8 dereferenceable(284) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE, i64 264), ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #34, !inline_history !157
  br label %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i

_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #34, !inline_history !157
  br label %_ZN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEED2Ev.exit

_ZN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEED2Ev.exit: ; preds = %_ZNSt6vectorIN5Eigen3MapINS0_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS0_6StrideILi0ELi0EEEEESaIS6_EED2Ev.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 224) (i8, ptr @_ZTVN3g2o8BaseEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE, i64 16), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o8BaseEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE, i64 256), ptr %i.a, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.q) #30, !inline_history !158
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108
  tail call void @free(ptr noundef %i.s) #30, !inline_history !158
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.u) #30, !inline_history !158
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(284) %0) #30, !inline_history !158
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o21BaseVariableSizedEdgeILin1EN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Map.139", align 8    ; 4 uses
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
end_hunk_0
