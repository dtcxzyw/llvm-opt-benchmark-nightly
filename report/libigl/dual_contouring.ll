Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/dual_contouring?download=true
inline.NumInlined: 14668
inline.NumDeleted: 7831
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 71
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN3igl14DualContouringIdE11single_edgeERKiS3_S3_S3_RKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERKdS8_SA_:bb.a
  %i.fa = fadd double %i.ex, %i.ez
  store double %i.fa, ptr %i.i, align 16, !tbaa !103
  br label %.thread

bb.r:                                             ; preds = %bb.b
  %i.fb = fsub double %i.c, %i.a
  %i.fc = fsub double 0.000000e+00, %i.a
  %i.fd = fdiv double %i.fc, %i.fb                ; 2 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i133 = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fe = load <2 x double>, ptr %5, align 8, !tbaa !105 ; 2 uses
  %i.ff = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i133, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = load <2 x double>, ptr %7, align 8, !tbaa !105
  %i.fh = fsub <2 x double> %i.fg, %i.fe
  %i.fi = fmul <2 x double> %i.ff, %i.fh
  %i.fj = fadd <2 x double> %i.fe, %i.fi
  store <2 x double> %i.fj, ptr %10, align 16, !tbaa !105
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !103
  %i.fo = load double, ptr %i.fl, align 8, !tbaa !103 ; 2 uses
  %i.fp = fsub double %i.fn, %i.fo
  %i.fq = fmul double %i.fd, %i.fp
  %i.fr = fadd double %i.fo, %i.fq
  store double %i.fr, ptr %i.fk, align 16, !tbaa !103
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q, %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  %i.ft = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.fs) #23 ; 2 uses
  %.not.i.i134 = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i134, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.s

bb.s:                                             ; preds = %.thread
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ft) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %.thread
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !91, !range !107, !noundef !108
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.t, label %.thread683

bb.t:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.fx = invoke noundef i64 @_ZN3igl14DualContouringIdE10new_vertexEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
          to label %bb.u unwind label %bb.w       ; 5 uses

bb.u:                                             ; preds = %bb.t
  %.pre = load i8, ptr %i.fu, align 1, !tbaa !91, !range !107
  %i.fy = trunc nuw i8 %.pre to i1
  br i1 %i.fy, label %bb.v, label %.thread683

bb.v:                                             ; preds = %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !144
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.fx ; 2 uses
  %i.gc = load <2 x double>, ptr %10, align 16, !tbaa !105
  store <2 x double> %i.gc, ptr %i.gb, align 1, !tbaa !105
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gf = load double, ptr %i.ge, align 16, !tbaa !103
  store double %i.gf, ptr %i.gd, align 8, !tbaa !103
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !140
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.fx
  store i32 1, ptr %i.gi, align 4, !tbaa !99
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !143
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.gk, i64 %i.fx ; 3 uses
  store i32 -1, ptr %i.gl, align 4
  %.sroa.5413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 -1, ptr %.sroa.5413.0..sroa_idx, align 4
  %.sroa.6414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 -1, ptr %.sroa.6414.0..sroa_idx, align 4, !tbaa !105
  br label %.thread683

bb.w:                                             ; preds = %bb.t
  %i.gm = landingpad { ptr, i32 }
          cleanup
  %i.gn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fs) #23 ; 0 uses
  br label %bb.ca

.thread683:                                       ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.v, %bb.u
  %i.go = phi i64 [ %i.fx, %bb.u ], [ %i.fx, %bb.v ], [ -1, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 5 uses
  %i.gp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fs) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !41, !noalias !545
  %.not.i.i135 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i135, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread683
  call void @_ZSt25__throw_bad_function_callv() #25, !noalias !545
  unreachable

bb.y:                                             ; preds = %.thread683
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !546, !noalias !545
  call void %i.gu(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !511
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0610)
  %i.gv = load <2 x double>, ptr %11, align 16, !tbaa !105, !noalias !547 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gx = load double, ptr %i.gw, align 16, !tbaa !103, !noalias !547 ; 2 uses
  %i.gy = load <2 x double>, ptr %10, align 16, !tbaa !105
  %i.gz = fmul <2 x double> %i.gv, %i.gy          ; 2 uses
  %shift = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.gz, %shift
  %i.ha = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hc = load double, ptr %i.hb, align 16, !tbaa !103
  %i.hd = fmul double %i.gx, %i.hc
  %i.he = fadd double %i.hd, %i.ha
  %i.hf = fneg double %i.he
  store <2 x double> %i.gv, ptr %.sroa.0610, align 16
  %.sroa.0610.16..sroa_idx786 = getelementptr inbounds nuw i8, ptr %.sroa.0610, i64 16
  store double %i.gx, ptr %.sroa.0610.16..sroa_idx786, align 16
  %.sroa.0610.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0610, i64 24
  store double %i.hf, ptr %.sroa.0610.24..sroa_idx, align 8, !tbaa !105
  %i.hg = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = fmul <2 x double> %i.gv, %i.hg
  %.sroa.0610.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0610, i64 16
  %.sroa.0610.16..sroa.0610.16..sroa.0610.16. = load <2 x double>, ptr %.sroa.0610.16..sroa_idx, align 16 ; 5 uses
  %i.hi = fmul <2 x double> %.sroa.0610.16..sroa.0610.16..sroa.0610.16., %i.hg
  %.sroa.0610.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0610, i64 8
  %.sroa.0610.8..sroa.0610.8..sroa.0610.8. = load <2 x double>, ptr %.sroa.0610.8..sroa_idx, align 8 ; 2 uses
  %i.hj = shufflevector <2 x double> %.sroa.0610.8..sroa.0610.8..sroa.0610.8., <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = fmul <2 x double> %i.gv, %i.hj
  %i.hl = fmul <2 x double> %.sroa.0610.16..sroa.0610.16..sroa.0610.16., %i.hj
  %i.hm = shufflevector <2 x double> %.sroa.0610.8..sroa.0610.8..sroa.0610.8., <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hn = fmul <2 x double> %i.gv, %i.hm
  %i.ho = fmul <2 x double> %.sroa.0610.16..sroa.0610.16..sroa.0610.16., %i.hm
  %i.hp = shufflevector <2 x double> %.sroa.0610.16..sroa.0610.16..sroa.0610.16., <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hq = fmul <2 x double> %i.gv, %i.hp
  %i.hr = fmul <2 x double> %.sroa.0610.16..sroa.0610.16..sroa.0610.16., %i.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.y, %bb.ab
  %exitcond609.not = phi i1 [ false, %bb.y ], [ true, %bb.ab ]
  %.048592 = phi i32 [ -1, %bb.y ], [ 0, %bb.ab ]
  %.049591 = phi i32 [ 0, %bb.y ], [ %i.io, %bb.ab ] ; 2 uses
  %i.in = sext i32 %.049591 to i64
  %i.io = add i32 %.049591, 2                     ; 2 uses
  br label %bb.ac

bb.z:                                             ; preds = %bb.ab
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.iq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ip) #23 ; 2 uses
  %.not.i.i136 = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i136, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit137, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_system_errori(i32 noundef %i.iq) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit137:       ; preds = %bb.z
  %i.ir = load i8, ptr %i.fu, align 1, !tbaa !91, !range !107, !noundef !108
  %i.is = trunc nuw i8 %i.ir to i1
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 10 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !119 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 17 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !133 ; 2 uses
  br i1 %i.is, label %bb.br, label %bb.bv

bb.ab:                                            ; preds = %bb.bp
  br i1 %exitcond609.not, label %bb.z, label %.preheader, !llvm.loop !514

bb.ac:                                            ; preds = %.preheader, %bb.bp
  %indvars.iv = phi i64 [ %i.in, %.preheader ], [ %indvars.iv.next, %bb.bp ] ; 2 uses
  %.0590 = phi i32 [ -1, %.preheader ], [ %i.sj, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.iy = load i32, ptr %1, align 4, !tbaa !99
  store i32 %i.iy, ptr %13, align 4, !tbaa !99
  %i.iz = load i32, ptr %2, align 4, !tbaa !99
  store i32 %i.iz, ptr %i.hs, align 4, !tbaa !99
  %i.ja = load i32, ptr %3, align 4, !tbaa !99
  store i32 %i.ja, ptr %i.ht, align 4, !tbaa !99
  %i.jb = load i32, ptr %4, align 4, !tbaa !99    ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !99
  %i.jf = add nsw i32 %i.je, -1
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !99
  %14 = insertelement <2 x i32> poison, i32 %i.jb, i64 0
  %15 = shufflevector <2 x i32> %14, <2 x i32> poison, <2 x i32> zeroinitializer
  %16 = add nsw <2 x i32> %15, <i32 1, i32 2>
  %17 = srem <2 x i32> %16, splat (i32 3)         ; 2 uses
  %18 = extractelement <2 x i32> %17, i64 0
  %i.jg = sext i32 %18 to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !99
  %i.jj = add nsw i32 %i.ji, %.048592
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !99
  %19 = extractelement <2 x i32> %17, i64 1
  %i.jk = sext i32 %19 to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jk ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !99
  %i.jn = add nsw i32 %i.jm, %.0590
  store i32 %i.jn, ptr %i.jl, align 4, !tbaa !99
  %i.jo = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.fs) #23 ; 2 uses
  %.not.i.i138 = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i138, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit139, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_system_errori(i32 noundef %i.jo) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit139:       ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.jp = load i32, ptr %i.ht, align 4, !tbaa !99 ; 5 uses
  store i32 %i.jp, ptr %9, align 4, !tbaa !239
  %i.jq = load i32, ptr %i.hs, align 4, !tbaa !99 ; 5 uses
  store i32 %i.jq, ptr %i.hu, align 4, !tbaa !241
  %i.jr = load i32, ptr %13, align 4, !tbaa !99   ; 5 uses
  store i32 %i.jr, ptr %i.hv, align 4, !tbaa !247
  %i.js = load i64, ptr %i.hx, align 8, !tbaa !248
  %.not.not.i.i.i = icmp eq i64 %i.js, 0
  br i1 %.not.not.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit139
  %.sroa.06.012.i.i.i = load ptr, ptr %i.hz, align 8, !tbaa !146 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %.sroa.06.012.i.i.i, null
  br i1 %.not13.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i
  %.sroa.06.014.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i ], [ %.sroa.06.012.i.i.i, %bb.ae ] ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 16
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !99
  %i.jv = icmp eq i32 %i.jr, %i.ju
  br i1 %i.jv, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 12
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !99
  %i.jz = icmp eq i32 %i.jq, %i.jy
  %i.ka = load i32, ptr %i.jw, align 4
  %i.kb = icmp eq i32 %i.jp, %i.ka
  %i.kc = select i1 %i.jz, i1 %i.kb, i1 false
  br i1 %i.kc, label %_ZNSt13unordered_mapISt5tupleIJiiiEElN3igl4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.014.i.i.i, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !6

bb.af:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit139
  %i.kd = shl i32 %i.jr, 16
  %i.ke = and i32 %i.jq, 65535
  %i.kf = or disjoint i32 %i.kd, %i.ke
  %i.kg = zext i32 %i.kf to i64
  %i.kh = shl nuw nsw i64 %i.kg, 16
  %i.ki = and i32 %i.jp, 65535
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = or disjoint i64 %i.kh, %i.kj            ; 2 uses
  %i.kl = load i64, ptr %i.hy, align 8, !tbaa !94 ; 2 uses
  %i.km = urem i64 %i.kk, %i.kl                   ; 2 uses
  %i.kn = load ptr, ptr %i.hw, align 8, !tbaa !93
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.km
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !249 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !146 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !251
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.kr = phi i64 [ %.pre.i.i.i.i.i, %bb.ag ], [ %i.lg, %bb.aj ]
  %i.ks = phi ptr [ %i.kq, %bb.ag ], [ %i.le, %bb.aj ] ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = icmp eq i64 %i.kk, %i.kr
  br i1 %i.ku, label %bb.ai, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !99
  %i.kx = icmp eq i32 %i.jr, %i.kw
  br i1 %i.kx, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.ai
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !99
  %i.la = icmp eq i32 %i.jq, %i.kz
  %i.lb = load i32, ptr %i.kt, align 4
  %i.lc = icmp eq i32 %i.jp, %i.lb
  %i.ld = select i1 %i.la, i1 %i.lc, i1 false
  br i1 %i.ld, label %_ZNSt13unordered_mapISt5tupleIJiiiEElN3igl4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, %bb.ai, %bb.ah
  %i.le = load ptr, ptr %i.ks, align 8, !tbaa !146 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !251 ; 2 uses
  %i.lh = urem i64 %i.lg, %i.kl
  %.not19.i.i.i.i.i = icmp eq i64 %i.lh, %i.km
  br i1 %.not19.i.i.i.i.i, label %bb.ah, label %.loopexit.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %bb.aj, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i, %bb.af, %bb.ae
  %i.li = load i64, ptr %i.ia, align 8, !tbaa !121 ; 7 uses
  %i.lj = add nsw i64 %i.li, 1                    ; 9 uses
  store i64 %i.lj, ptr %i.ia, align 8, !tbaa !121
  %i.lk = load ptr, ptr %i.ic, align 8, !tbaa !252 ; 4 uses
  %i.ll = load ptr, ptr %i.ib, align 8, !tbaa !140 ; 5 uses
  %i.lm = ptrtoint ptr %i.lk to i64               ; 2 uses
  %i.ln = ptrtoint ptr %i.ll to i64               ; 2 uses
  %i.lo = sub i64 %i.lm, %i.ln                    ; 4 uses
  %i.lp = ashr exact i64 %i.lo, 2                 ; 7 uses
  %i.lq = icmp ugt i64 %i.lj, %i.lp
  br i1 %i.lq, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.loopexit.i
  %i.lr = sub nuw i64 %i.lj, %i.lp                ; 6 uses
  %i.ls = load ptr, ptr %i.id, align 8, !tbaa !141
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = sub i64 %i.lt, %i.lm
  %i.lv = ashr exact i64 %i.lu, 2                 ; 2 uses
  %i.lw = icmp ult i64 %i.lp, 2305843009213693952
  call void @llvm.assume(i1 %i.lw)
  %i.lx = xor i64 %i.lp, 2305843009213693951      ; 2 uses
  %i.ly = icmp ule i64 %i.lv, %i.lx
  call void @llvm.assume(i1 %i.ly)
  %.not28.i264 = icmp ult i64 %i.lv, %i.lr
  br i1 %.not28.i264, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.lk, align 4, !tbaa !99
  %i.lz = getelementptr i8, ptr %i.lk, i64 4      ; 3 uses
  %i.ma = add nsw i64 %i.lr, -1                   ; 2 uses
  %i.mb = icmp eq i64 %i.ma, 0
  br i1 %i.mb, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.al
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ma, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.lz, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !99
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.al
  %.0.i.i.i.i = phi ptr [ %i.mc, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.lz, %bb.al ]
  store ptr %.0.i.i.i.i, ptr %i.ic, align 8, !tbaa !252
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.md = icmp ult i64 %i.lx, %i.lr
  br i1 %i.md, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.am
  %.sroa.speculated.i.i265 = call i64 @llvm.umax.i64(i64 %i.lp, i64 %i.lr)
  %i.me = add nuw nsw i64 %.sroa.speculated.i.i265, %i.lp
  %i.mf = call i64 @llvm.umin.i64(i64 %i.me, i64 2305843009213693951) ; 2 uses
  %i.mg = shl nuw nsw i64 %i.mf, 2
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #26
          to label %.noexc267 unwind label %.loopexit ; 4 uses

.noexc267:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.lo ; 3 uses
  store i32 0, ptr %i.mi, align 4, !tbaa !99
  %i.mj = add nsw i64 %i.lr, -1                   ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc267
  %i.ml = getelementptr i8, ptr %i.mi, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.mj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ml, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !99
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc267
  %i.mm = icmp sgt i64 %i.lo, 0
  br i1 %i.mm, label %bb.an, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.an:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %i.ll, i64 %i.lo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.an, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.ll, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.mn = load ptr, ptr %i.id, align 8, !tbaa !141
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = sub i64 %i.mo, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.mp) #28
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.ao, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.mh, ptr %i.ib, align 8, !tbaa !140
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.lr
end_hunk_0
begin_hunk_1_@_ZN3igl14DualContouringIfE11single_edgeERKiS3_S3_S3_RKN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEERKfS8_SA_:bb.a
  %i.fc = fadd <2 x float> %i.ex, %i.fb
  store <2 x float> %i.fc, ptr %10, align 8, !tbaa !198
  %i.fd = load float, ptr %i.k, align 4, !tbaa !198
  %i.fe = load float, ptr %i.j, align 4, !tbaa !198 ; 2 uses
  %i.ff = fsub float %i.fd, %i.fe
  %i.fg = fmul float %i.ev, %i.ff
  %i.fh = fadd float %i.fe, %i.fg
  store float %i.fh, ptr %i.i, align 8, !tbaa !198
  br label %.thread

bb.r:                                             ; preds = %bb.b
  %i.fi = fsub float %i.c, %i.a
  %i.fj = fsub float 0.000000e+00, %i.a
  %i.fk = fdiv float %i.fj, %i.fi                 ; 2 uses
  %i.fl = load <2 x float>, ptr %7, align 4, !tbaa !198
  %i.fm = load <2 x float>, ptr %5, align 4, !tbaa !198 ; 2 uses
  %i.fn = fsub <2 x float> %i.fl, %i.fm
  %i.fo = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %i.fp, %i.fn
  %i.fr = fadd <2 x float> %i.fm, %i.fq
  store <2 x float> %i.fr, ptr %10, align 8, !tbaa !198
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !198
  %i.fw = load float, ptr %i.ft, align 4, !tbaa !198 ; 2 uses
  %i.fx = fsub float %i.fv, %i.fw
  %i.fy = fmul float %i.fk, %i.fx
  %i.fz = fadd float %i.fw, %i.fy
  store float %i.fz, ptr %i.fs, align 8, !tbaa !198
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q, %bb.r
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.gb = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ga) #23 ; 2 uses
  %.not.i.i133 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i133, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.s

bb.s:                                             ; preds = %.thread
  call void @_ZSt20__throw_system_errori(i32 noundef %i.gb) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !193, !range !107, !noundef !108
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.t, label %.thread668

bb.t:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.gf = invoke noundef i64 @_ZN3igl14DualContouringIfE10new_vertexEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.u unwind label %bb.w       ; 5 uses

bb.u:                                             ; preds = %bb.t
  %.pre = load i8, ptr %i.gc, align 1, !tbaa !193, !range !107
  %i.gg = trunc nuw i8 %.pre to i1
  br i1 %i.gg, label %bb.v, label %.thread668

bb.v:                                             ; preds = %bb.u
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !215
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.gf ; 3 uses
  %i.gk = load float, ptr %10, align 8, !tbaa !198
  store float %i.gk, ptr %i.gj, align 4, !tbaa !198
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !198
  store float %i.gn, ptr %i.gl, align 4, !tbaa !198
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !198
  store float %i.gq, ptr %i.go, align 4, !tbaa !198
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !140
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gf
  store i32 1, ptr %i.gt, align 4, !tbaa !99
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !143
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %i.gv, i64 %i.gf ; 3 uses
  store i32 -1, ptr %i.gw, align 4
  %.sroa.5410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 -1, ptr %.sroa.5410.0..sroa_idx, align 4
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 -1, ptr %.sroa.6411.0..sroa_idx, align 4, !tbaa !105
  br label %.thread668

bb.w:                                             ; preds = %bb.t
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ga) #23 ; 0 uses
  br label %bb.ca

.thread668:                                       ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.v, %bb.u
  %i.gz = phi i64 [ %i.gf, %bb.u ], [ %i.gf, %bb.v ], [ -1, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 5 uses
  %i.ha = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ga) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !41, !noalias !924
  %.not.i.i134 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i134, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread668
  call void @_ZSt25__throw_bad_function_callv() #25, !noalias !924
  unreachable

bb.y:                                             ; preds = %.thread668
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !925, !noalias !924
  call void %i.hf(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.99") align 4 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.hd, ptr noundef nonnull align 4 dereferenceable(12) %10), !inline_history !890
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hh = load float, ptr %i.hg, align 8, !tbaa !198, !noalias !926 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.hj = load <2 x float>, ptr %11, align 8, !tbaa !198, !noalias !926 ; 4 uses
  %i.hk = load <2 x float>, ptr %10, align 8, !tbaa !198
  %i.hl = fmul <2 x float> %i.hj, %i.hk           ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !198
  %i.ho = fmul float %i.hh, %i.hn
  %i.hp = extractelement <2 x float> %i.hl, i64 1
  %i.hq = fadd float %i.hp, %i.ho
  %i.hr = extractelement <2 x float> %i.hl, i64 0
  %i.hs = fadd float %i.hr, %i.hq
  %i.ht = fneg float %i.hs
  %i.hu = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0611.8.vec.insert = insertelement <4 x float> %i.hu, float %i.hh, i64 2 ; 2 uses
  %.sroa.0611.12.vec.insert = insertelement <4 x float> %.sroa.0611.8.vec.insert, float %i.ht, i64 3 ; 5 uses
  %i.hv = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hw = fmul <4 x float> %.sroa.0611.12.vec.insert, %i.hv
  %i.hx = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hy = fmul <4 x float> %.sroa.0611.12.vec.insert, %i.hx
  %i.hz = shufflevector <4 x float> %.sroa.0611.8.vec.insert, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ia = fmul <4 x float> %.sroa.0611.12.vec.insert, %i.hz
  %i.ib = shufflevector <4 x float> %.sroa.0611.12.vec.insert, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ic = fmul <4 x float> %.sroa.0611.12.vec.insert, %i.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.y, %bb.ab
  %exitcond610.not = phi i1 [ false, %bb.y ], [ true, %bb.ab ]
  %.048593 = phi i32 [ -1, %bb.y ], [ 0, %bb.ab ]
  %.049592 = phi i32 [ 0, %bb.y ], [ %i.iz, %bb.ab ] ; 2 uses
  %i.iy = sext i32 %.049592 to i64
  %i.iz = add i32 %.049592, 2                     ; 2 uses
  br label %bb.ac

bb.z:                                             ; preds = %bb.ab
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.jb = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ja) #23 ; 2 uses
  %.not.i.i135 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i135, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit136, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_system_errori(i32 noundef %i.jb) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit136:       ; preds = %bb.z
  %i.jc = load i8, ptr %i.gc, align 1, !tbaa !193, !range !107, !noundef !108
  %i.jd = trunc nuw i8 %i.jc to i1
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 10 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !205 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 17 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !133 ; 2 uses
  br i1 %i.jd, label %bb.br, label %bb.bv

bb.ab:                                            ; preds = %bb.bp
  br i1 %exitcond610.not, label %bb.z, label %.preheader, !llvm.loop !893

bb.ac:                                            ; preds = %.preheader, %bb.bp
  %indvars.iv = phi i64 [ %i.iy, %.preheader ], [ %indvars.iv.next, %bb.bp ] ; 2 uses
  %.0591 = phi i32 [ -1, %.preheader ], [ %i.sm, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.jj = load i32, ptr %1, align 4, !tbaa !99
  store i32 %i.jj, ptr %13, align 4, !tbaa !99
  %i.jk = load i32, ptr %2, align 4, !tbaa !99
  store i32 %i.jk, ptr %i.id, align 4, !tbaa !99
  %i.jl = load i32, ptr %3, align 4, !tbaa !99
  store i32 %i.jl, ptr %i.ie, align 4, !tbaa !99
  %i.jm = load i32, ptr %4, align 4, !tbaa !99    ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !99
  %i.jq = add nsw i32 %i.jp, -1
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !99
  %14 = insertelement <2 x i32> poison, i32 %i.jm, i64 0
  %15 = shufflevector <2 x i32> %14, <2 x i32> poison, <2 x i32> zeroinitializer
  %16 = add nsw <2 x i32> %15, <i32 1, i32 2>
  %17 = srem <2 x i32> %16, splat (i32 3)         ; 2 uses
  %18 = extractelement <2 x i32> %17, i64 0
  %i.jr = sext i32 %18 to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jr ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !99
  %i.ju = add nsw i32 %i.jt, %.048593
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !99
  %19 = extractelement <2 x i32> %17, i64 1
  %i.jv = sext i32 %19 to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !99
  %i.jy = add nsw i32 %i.jx, %.0591
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !99
  %i.jz = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ga) #23 ; 2 uses
  %.not.i.i137 = icmp eq i32 %i.jz, 0
  br i1 %.not.i.i137, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit138, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_system_errori(i32 noundef %i.jz) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit138:       ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ka = load i32, ptr %i.ie, align 4, !tbaa !99 ; 5 uses
  store i32 %i.ka, ptr %9, align 4, !tbaa !239
  %i.kb = load i32, ptr %i.id, align 4, !tbaa !99 ; 5 uses
  store i32 %i.kb, ptr %i.if, align 4, !tbaa !241
  %i.kc = load i32, ptr %13, align 4, !tbaa !99   ; 5 uses
  store i32 %i.kc, ptr %i.ig, align 4, !tbaa !247
  %i.kd = load i64, ptr %i.ii, align 8, !tbaa !248
  %.not.not.i.i.i = icmp eq i64 %i.kd, 0
  br i1 %.not.not.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit138
  %.sroa.06.012.i.i.i = load ptr, ptr %i.ik, align 8, !tbaa !146 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %.sroa.06.012.i.i.i, null
  br i1 %.not13.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i
  %.sroa.06.014.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i ], [ %.sroa.06.012.i.i.i, %bb.ae ] ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 16
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !99
  %i.kg = icmp eq i32 %i.kc, %i.kf
  br i1 %i.kg, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !99
  %i.kk = icmp eq i32 %i.kb, %i.kj
  %i.kl = load i32, ptr %i.kh, align 4
  %i.km = icmp eq i32 %i.ka, %i.kl
  %i.kn = select i1 %i.kk, i1 %i.km, i1 false
  br i1 %i.kn, label %_ZNSt13unordered_mapISt5tupleIJiiiEElN3igl4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.014.i.i.i, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !6

bb.af:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit138
  %i.ko = shl i32 %i.kc, 16
  %i.kp = and i32 %i.kb, 65535
  %i.kq = or disjoint i32 %i.ko, %i.kp
  %i.kr = zext i32 %i.kq to i64
  %i.ks = shl nuw nsw i64 %i.kr, 16
  %i.kt = and i32 %i.ka, 65535
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = or disjoint i64 %i.ks, %i.ku            ; 2 uses
  %i.kw = load i64, ptr %i.ij, align 8, !tbaa !94 ; 2 uses
  %i.kx = urem i64 %i.kv, %i.kw                   ; 2 uses
  %i.ky = load ptr, ptr %i.ih, align 8, !tbaa !93
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kx
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !249 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !146 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !251
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.lc = phi i64 [ %.pre.i.i.i.i.i, %bb.ag ], [ %i.lr, %bb.aj ]
  %i.ld = phi ptr [ %i.lb, %bb.ag ], [ %i.lp, %bb.aj ] ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = icmp eq i64 %i.kv, %i.lc
  br i1 %i.lf, label %bb.ai, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !99
  %i.li = icmp eq i32 %i.kc, %i.lh
  br i1 %i.li, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.ai
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !99
  %i.ll = icmp eq i32 %i.kb, %i.lk
  %i.lm = load i32, ptr %i.le, align 4
  %i.ln = icmp eq i32 %i.ka, %i.lm
  %i.lo = select i1 %i.ll, i1 %i.ln, i1 false
  br i1 %i.lo, label %_ZNSt13unordered_mapISt5tupleIJiiiEElN3igl4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, %bb.ai, %bb.ah
  %i.lp = load ptr, ptr %i.ld, align 8, !tbaa !146 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !251 ; 2 uses
  %i.ls = urem i64 %i.lr, %i.kw
  %.not19.i.i.i.i.i = icmp eq i64 %i.ls, %i.kx
  br i1 %.not19.i.i.i.i.i, label %bb.ah, label %.loopexit.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %bb.aj, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i, %bb.af, %bb.ae
  %i.lt = load i64, ptr %i.il, align 8, !tbaa !206 ; 7 uses
  %i.lu = add nsw i64 %i.lt, 1                    ; 9 uses
  store i64 %i.lu, ptr %i.il, align 8, !tbaa !206
  %i.lv = load ptr, ptr %i.in, align 8, !tbaa !252 ; 4 uses
  %i.lw = load ptr, ptr %i.im, align 8, !tbaa !140 ; 5 uses
  %i.lx = ptrtoint ptr %i.lv to i64               ; 2 uses
  %i.ly = ptrtoint ptr %i.lw to i64               ; 2 uses
  %i.lz = sub i64 %i.lx, %i.ly                    ; 4 uses
  %i.ma = ashr exact i64 %i.lz, 2                 ; 7 uses
  %i.mb = icmp ugt i64 %i.lu, %i.ma
  br i1 %i.mb, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.loopexit.i
  %i.mc = sub nuw i64 %i.lu, %i.ma                ; 6 uses
  %i.md = load ptr, ptr %i.io, align 8, !tbaa !141
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = sub i64 %i.me, %i.lx
  %i.mg = ashr exact i64 %i.mf, 2                 ; 2 uses
  %i.mh = icmp ult i64 %i.ma, 2305843009213693952
  call void @llvm.assume(i1 %i.mh)
  %i.mi = xor i64 %i.ma, 2305843009213693951      ; 2 uses
  %i.mj = icmp ule i64 %i.mg, %i.mi
  call void @llvm.assume(i1 %i.mj)
  %.not28.i263 = icmp ult i64 %i.mg, %i.mc
  br i1 %.not28.i263, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.lv, align 4, !tbaa !99
  %i.mk = getelementptr i8, ptr %i.lv, i64 4      ; 3 uses
  %i.ml = add nsw i64 %i.mc, -1                   ; 2 uses
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.al
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ml, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.mk, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !99
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.al
  %.0.i.i.i.i = phi ptr [ %i.mn, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.mk, %bb.al ]
  store ptr %.0.i.i.i.i, ptr %i.in, align 8, !tbaa !252
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.mo = icmp ult i64 %i.mi, %i.mc
  br i1 %i.mo, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.am
  %.sroa.speculated.i.i264 = call i64 @llvm.umax.i64(i64 %i.ma, i64 %i.mc)
  %i.mp = add nuw nsw i64 %.sroa.speculated.i.i264, %i.ma
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mp, i64 2305843009213693951) ; 2 uses
  %i.mr = shl nuw nsw i64 %i.mq, 2
  %i.ms = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mr) #26
          to label %.noexc266 unwind label %.loopexit ; 4 uses

.noexc266:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.lz ; 3 uses
  store i32 0, ptr %i.mt, align 4, !tbaa !99
  %i.mu = add nsw i64 %i.mc, -1                   ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc266
  %i.mw = getelementptr i8, ptr %i.mt, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.mu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mw, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !99
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc266
  %i.mx = icmp sgt i64 %i.lz, 0
  br i1 %i.mx, label %bb.an, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.an:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ms, ptr align 4 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.an, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.lw, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.my = load ptr, ptr %i.io, align 8, !tbaa !141
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = sub i64 %i.mz, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.na) #28
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.ao, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.ms, ptr %i.im, align 8, !tbaa !140
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mc
end_hunk_1
