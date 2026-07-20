inline.NumInlined: 1466
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp12PbrtExporter21WriteGeometricObjectsEP6aiNode12aiMatrix4x4tIfERSt3mapIiiSt4lessIiESaISt4pairIKiiEEE:bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = load ptr, ptr %i.fa, align 8
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv
  %i.fn = load i32, ptr %i.fm, align 4            ; 2 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.fn, ptr %i.a, align 4
  %i.fr = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp eq i32 %i.fs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.ft, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.fu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.157, i64 noundef 4) ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 240 ; 2 uses
  %i.fw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #24
  %i.fx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull %i.fv, i64 noundef %i.fw) ; 0 uses
  call void @_ZN6Assimp12PbrtExporter9WriteMeshEP6aiMesh(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef %i.fq)
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.fy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.158, i64 noundef 18) ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 236
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.153, i64 noundef 5) ; 0 uses
  %i.gd = load ptr, ptr %i.fa, align 8
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = add i32 %i.gf, 1
  %i.gh = zext i32 %i.gg to i64
  %i.gi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.gh)
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.96, i64 noundef 2) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 240 ; 2 uses
  %i.gl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gk) #24
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull %i.gk, i64 noundef %i.gl) ; 0 uses
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.154, i64 noundef 1) ; 0 uses
  %i.go = load ptr, ptr %i.fa, align 8
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = add i32 %i.gq, 1
  %i.gs = zext i32 %i.gr to i64
  %i.gt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.gs)
  %i.gu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.96, i64 noundef 2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gv = load i32, ptr %i.ej, align 8
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp samesign ult i64 %indvars.iv.next, %i.gw
  br i1 %i.gx, label %bb.f, label %._crit_edge, !llvm.loop !100

bb.k:                                             ; preds = %._crit_edge, %bb.c
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8
  %.not76 = icmp eq i32 %i.gz, 0
  br i1 %.not76, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.k
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.l

._crit_edge74:                                    ; preds = %bb.l, %bb.k
  ret void

bb.l:                                             ; preds = %.lr.ph73, %bb.l
  %indvars.iv78 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next79, %bb.l ] ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv78
  %i.hd = load ptr, ptr %i.hc, align 8
  call void @_ZN6Assimp12PbrtExporter21WriteGeometricObjectsEP6aiNode12aiMatrix4x4tIfERSt3mapIiiSt4lessIiESaISt4pairIKiiEEE(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef %i.hd, ptr noundef nonnull byval(%class.aiMatrix4x4t) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.he = load i32, ptr %i.gy, align 8
  %i.hf = zext i32 %i.he to i64
  %i.hg = icmp samesign ult i64 %indvars.iv.next79, %i.hf
  br i1 %i.hg, label %bb.l, label %._crit_edge74, !llvm.loop !101
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12PbrtExporter12RemoveSuffixENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 46, i64 noundef -1) #24 ; 5 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.167, i64 noundef %i.a, i64 noundef %i.c) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.b
  store i64 %i.a, ptr %i.b, align 8
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  store i8 0, ptr %i.f, align 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  store ptr %i.h, ptr %0, align 8
  %i.o = load i64, ptr %i.i, align 8
  store i64 %i.o, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8
  store ptr %i.i, ptr %1, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp12PbrtExporter19TextureHasAlphaMaskERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = load ptr, ptr %0, align 8
  %i.e = call ptr @assimp_stbi_load(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0) ; 9 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.f, i64 noundef %i.h)
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.68, i64 noundef 115) ; 0 uses
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.c, align 4
  switch i32 %i.k, label %bb.l [
    i32 1, label %.preheader
    i32 2, label %.preheader37
    i32 3, label %.loopexit
    i32 4, label %.preheader40
  ]

.preheader40:                                     ; preds = %bb.c
  %i.l = load i32, ptr %i.b, align 4              ; 5 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader39.lr.ph, label %.loopexit

.preheader39.lr.ph:                               ; preds = %.preheader40
  %i.n = load i32, ptr %i.a, align 4              ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.preheader39.us.preheader, label %.loopexit

.preheader39.us.preheader:                        ; preds = %.preheader39.lr.ph
  %i.p = zext nneg i32 %i.n to i64                ; 6 uses
  %i.q = icmp eq i32 %i.l, 1
  br i1 %i.q, label %.preheader39.us.epil.preheader, label %.preheader39.us.preheader.new

.preheader39.us.preheader.new:                    ; preds = %.preheader39.us.preheader
  %1 = and i32 %i.l, 2147483646
  %unroll_iter = zext nneg i32 %1 to i64
  br label %.preheader39.us

.preheader39.us:                                  ; preds = %._crit_edge.us.1, %.preheader39.us.preheader.new
  %indvars.iv65 = phi i64 [ 0, %.preheader39.us.preheader.new ], [ %indvars.iv.next66.1, %._crit_edge.us.1 ] ; 3 uses
  %.345.us = phi i1 [ false, %.preheader39.us.preheader.new ], [ %.4.us.1, %._crit_edge.us.1 ]
  %niter = phi i64 [ 0, %.preheader39.us.preheader.new ], [ %niter.next.1, %._crit_edge.us.1 ]
  %i.r = mul nuw nsw i64 %indvars.iv65, %i.p
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e, !llvm.loop !102

bb.e:                                             ; preds = %.preheader39.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader39.us ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = add nuw nsw i64 %i.r, %indvars.iv
  %i.t = shl i64 %i.s, 2
  %i.u = and i64 %i.t, 4294967292
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %.not33.us = icmp eq i8 %i.x, -1
  br i1 %.not33.us, label %bb.d, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.e
  %.4.us = phi i1 [ true, %bb.e ], [ %.345.us, %bb.d ]
  %indvars.iv.next66 = or disjoint i64 %indvars.iv65, 1
  %i.y = mul nuw nsw i64 %indvars.iv.next66, %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.us ], [ %indvars.iv.next.1, %bb.g ] ; 2 uses
  %i.z = add nuw nsw i64 %i.y, %indvars.iv.1
  %i.aa = shl i64 %i.z, 2
  %i.ab = and i64 %i.aa, 4294967292
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %.not33.us.1 = icmp eq i8 %i.ae, -1
  br i1 %.not33.us.1, label %bb.g, label %._crit_edge.us.1

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.p
  br i1 %exitcond.not.1, label %._crit_edge.us.1, label %bb.f, !llvm.loop !102

._crit_edge.us.1:                                 ; preds = %bb.g, %bb.f
  %.4.us.1 = phi i1 [ true, %bb.f ], [ %.4.us, %bb.g ] ; 3 uses
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit93.unr-lcssa, label %.preheader39.us, !llvm.loop !103

.preheader37:                                     ; preds = %bb.c
  %i.af = load i32, ptr %i.b, align 4             ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader36.lr.ph, label %.loopexit

.preheader36.lr.ph:                               ; preds = %.preheader37
  %i.ah = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader36.us.preheader, label %.loopexit

.preheader36.us.preheader:                        ; preds = %.preheader36.lr.ph
  %i.aj = zext nneg i32 %i.ah to i64              ; 6 uses
  %i.ak = icmp eq i32 %i.af, 1
  br i1 %i.ak, label %.preheader36.us.epil.preheader, label %.preheader36.us.preheader.new

.preheader36.us.preheader.new:                    ; preds = %.preheader36.us.preheader
  %2 = and i32 %i.af, 2147483646
  %unroll_iter100 = zext nneg i32 %2 to i64
  br label %.preheader36.us

.preheader36.us:                                  ; preds = %._crit_edge.us54.1, %.preheader36.us.preheader.new
  %indvars.iv74 = phi i64 [ 0, %.preheader36.us.preheader.new ], [ %indvars.iv.next75.1, %._crit_edge.us54.1 ] ; 3 uses
  %.151.us = phi i1 [ false, %.preheader36.us.preheader.new ], [ %.2.us.1, %._crit_edge.us54.1 ]
  %niter101 = phi i64 [ 0, %.preheader36.us.preheader.new ], [ %niter101.next.1, %._crit_edge.us54.1 ]
  %i.al = mul nuw nsw i64 %indvars.iv74, %i.aj
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %i.aj
  br i1 %exitcond73.not, label %._crit_edge.us54, label %bb.i, !llvm.loop !104

bb.i:                                             ; preds = %.preheader36.us, %bb.h
  %indvars.iv69 = phi i64 [ 0, %.preheader36.us ], [ %indvars.iv.next70, %bb.h ] ; 2 uses
  %i.am = add nuw nsw i64 %i.al, %indvars.iv69
  %i.an = shl nuw nsw i64 %i.am, 1
  %i.ao = getelementptr i8, ptr %i.e, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1
  %.not34.us = icmp eq i8 %i.aq, -1
  br i1 %.not34.us, label %bb.h, label %._crit_edge.us54

._crit_edge.us54:                                 ; preds = %bb.h, %bb.i
  %.2.us = phi i1 [ true, %bb.i ], [ %.151.us, %bb.h ]
  %indvars.iv.next75 = or disjoint i64 %indvars.iv74, 1
  %i.ar = mul nuw nsw i64 %indvars.iv.next75, %i.aj
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %._crit_edge.us54
  %indvars.iv69.1 = phi i64 [ 0, %._crit_edge.us54 ], [ %indvars.iv.next70.1, %bb.k ] ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, %indvars.iv69.1
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = getelementptr i8, ptr %i.e, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %.not34.us.1 = icmp eq i8 %i.aw, -1
  br i1 %.not34.us.1, label %bb.k, label %._crit_edge.us54.1

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69.1, 1 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %i.aj
  br i1 %exitcond73.not.1, label %._crit_edge.us54.1, label %bb.j, !llvm.loop !104

._crit_edge.us54.1:                               ; preds = %bb.k, %bb.j
  %.2.us.1 = phi i1 [ true, %bb.j ], [ %.2.us, %bb.k ] ; 3 uses
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %niter101.next.1 = add i64 %niter101, 2         ; 2 uses
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %.loopexit.loopexit92.unr-lcssa, label %.preheader36.us, !llvm.loop !105

.preheader:                                       ; preds = %bb.c
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = load i32, ptr %i.b, align 4
  %i.az = mul nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count81 = zext nneg i32 %i.az to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv78 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next79, %.lr.ph ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv78
  %i.bc = load i8, ptr %i.bb, align 1
  %.not35.not = icmp ne i8 %i.bc, -1              ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  %or.cond = select i1 %.not35.not, i1 true, i1 %exitcond82.not
  br i1 %or.cond, label %.loopexit, label %.lr.ph, !llvm.loop !106

bb.l:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.bd, i64 noundef %i.bf) ; 2 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.69, i64 noundef 39) ; 0 uses
  %i.bi = load i32, ptr %i.c, align 4
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i32 noundef %i.bi)
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.70, i64 noundef 2) ; 0 uses
  br label %.loopexit

.loopexit.loopexit92.unr-lcssa:                   ; preds = %._crit_edge.us54.1
  %lcmp.mod97.not = trunc i32 %i.af to i1
  br i1 %lcmp.mod97.not, label %.preheader36.us.epil.preheader, label %.loopexit

.preheader36.us.epil.preheader:                   ; preds = %.loopexit.loopexit92.unr-lcssa, %.preheader36.us.preheader
  %indvars.iv74.epil.init = phi i64 [ 0, %.preheader36.us.preheader ], [ %indvars.iv.next75.1, %.loopexit.loopexit92.unr-lcssa ]
  %.151.us.epil.init = phi i1 [ false, %.preheader36.us.preheader ], [ %.2.us.1, %.loopexit.loopexit92.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.bl = mul nuw nsw i64 %indvars.iv74.epil.init, %i.aj
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.preheader36.us.epil.preheader
  %indvars.iv69.epil = phi i64 [ 0, %.preheader36.us.epil.preheader ], [ %indvars.iv.next70.epil, %bb.n ] ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, %indvars.iv69.epil
  %i.bn = shl nuw nsw i64 %i.bm, 1
  %i.bo = getelementptr i8, ptr %i.e, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1
  %.not34.us.epil = icmp eq i8 %i.bq, -1
  br i1 %.not34.us.epil, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next70.epil = add nuw nsw i64 %indvars.iv69.epil, 1 ; 2 uses
  %exitcond73.not.epil = icmp eq i64 %indvars.iv.next70.epil, %i.aj
  br i1 %exitcond73.not.epil, label %.loopexit, label %bb.m, !llvm.loop !104

.loopexit.loopexit93.unr-lcssa:                   ; preds = %._crit_edge.us.1
  %lcmp.mod.not = trunc i32 %i.l to i1
  br i1 %lcmp.mod.not, label %.preheader39.us.epil.preheader, label %.loopexit

.preheader39.us.epil.preheader:                   ; preds = %.loopexit.loopexit93.unr-lcssa, %.preheader39.us.preheader
  %indvars.iv65.epil.init = phi i64 [ 0, %.preheader39.us.preheader ], [ %indvars.iv.next66.1, %.loopexit.loopexit93.unr-lcssa ]
  %.345.us.epil.init = phi i1 [ false, %.preheader39.us.preheader ], [ %.4.us.1, %.loopexit.loopexit93.unr-lcssa ]
  %lcmp.mod95 = trunc i32 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod95)
  %i.br = mul nuw nsw i64 %indvars.iv65.epil.init, %i.p
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.preheader39.us.epil.preheader
  %indvars.iv.epil = phi i64 [ 0, %.preheader39.us.epil.preheader ], [ %indvars.iv.next.epil, %bb.p ] ; 2 uses
  %i.bs = add nuw nsw i64 %i.br, %indvars.iv.epil
  %i.bt = shl i64 %i.bs, 2
  %i.bu = and i64 %i.bt, 4294967292
  %i.bv = getelementptr i8, ptr %i.e, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 3
  %i.bx = load i8, ptr %i.bw, align 1
  %.not33.us.epil = icmp eq i8 %i.bx, -1
  br i1 %.not33.us.epil, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %exitcond.not.epil = icmp eq i64 %indvars.iv.next.epil, %i.p
  br i1 %exitcond.not.epil, label %.loopexit, label %bb.o, !llvm.loop !102

.loopexit:                                        ; preds = %.loopexit.loopexit93.unr-lcssa, %bb.p, %bb.o, %.loopexit.loopexit92.unr-lcssa, %bb.n, %bb.m, %.lr.ph, %.preheader36.lr.ph, %.preheader39.lr.ph, %.preheader40, %.preheader37, %.preheader, %bb.l, %bb.c
  %.5 = phi i1 [ false, %bb.l ], [ %.not35.not, %.lr.ph ], [ false, %.preheader39.lr.ph ], [ false, %bb.c ], [ %.151.us.epil.init, %bb.n ], [ false, %.preheader ], [ false, %.preheader37 ], [ false, %.preheader36.lr.ph ], [ false, %.preheader40 ], [ %.2.us.1, %.loopexit.loopexit92.unr-lcssa ], [ true, %bb.m ], [ %.4.us.1, %.loopexit.loopexit93.unr-lcssa ], [ true, %bb.o ], [ %.345.us.epil.init, %bb.p ]
  call void @assimp_stbi_image_free(ptr noundef nonnull %i.e)
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.b
  %.029 = phi i1 [ %.5, %.loopexit ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.029
}

declare ptr @assimp_stbi_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @assimp_stbi_image_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12PbrtExporter13WriteMaterialEi(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.aiColor4t, align 4           ; 8 uses
  %3 = alloca %class.aiColor4t, align 4           ; 8 uses
  %4 = alloca %class.aiColor4t, align 4           ; 8 uses
  %5 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %6 = alloca %struct.aiString, align 4           ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %struct.aiString, align 4          ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %struct.aiString, align 4          ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNK10aiMaterial7GetNameEv(ptr dead_on_unwind nonnull writable sret(%struct.aiString) align 4 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 40 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i8, ptr %i.s, align 8
  %.not.i1.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 67
  %i.v = load i8, ptr %i.u, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.r)
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef signext i8 %i.y(ptr noundef nonnull align 8 dereferenceable(570) %i.r, i8 noundef signext 10), !inline_history !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.v, %bb.c ], [ %i.z, %bb.d ]
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i)
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 2 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.74, i64 noundef 13) ; 0 uses
  %i.ad = add nsw i32 %1, 1
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef %i.ad) ; 3 uses
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 8 uses
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #24
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ag, i64 noundef %i.ah) ; 0 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.75, i64 noundef 37) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef %i.an)
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.76, i64 noundef 36) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.j
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.as = call i32 @aiGetMaterialColor(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4)
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %"_ZZN6Assimp12PbrtExporter13WriteMaterialEiENK3$_0clERK9aiColor3D.exit", label %_ZNK10aiMaterial3GetEPKcjjR9aiColor3D.exit

_ZNK10aiMaterial3GetEPKcjjR9aiColor3D.exit:       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.k

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.j
  %.0242 = phi i32 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.bj, %bb.j ] ; 3 uses
  %i.au = call noundef i32 @aiGetMaterialTextureCount(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i32 noundef %.0242) ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aw = call ptr @aiTextureTypeToString(i32 noundef %.0242) ; 3 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.l, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.l, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = or i32 %i.bc, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ba, i32 noundef %i.bd)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.i:                                             ; preds = %bb.g
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.aw, i64 noundef %i.be) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h, %bb.i
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.au)
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f
  %i.bj = add nuw nsw i32 %.0242, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, 19
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !107

"_ZZN6Assimp12PbrtExporter13WriteMaterialEiENK3$_0clERK9aiColor3D.exit": ; preds = %bb.e
  %i.bk = load float, ptr %4, align 4             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bm = load float, ptr %i.bl, align 4          ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load float, ptr %i.bn, align 4          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bp = fcmp une float %i.bk, 1.000000e+00
  %i.bq = fcmp une float %i.bm, 1.000000e+00
  %or.cond.i.not241 = select i1 %i.bp, i1 true, i1 %i.bq
  %i.br = fcmp une float %i.bo, 1.000000e+00
  %spec.select.not = select i1 %or.cond.i.not241, i1 true, i1 %i.br
  %i.bs = fpext float %i.bk to double
  %i.bt = fpext float %i.bm to double
  %i.bu = fpext float %i.bo to double
  br label %bb.k

bb.k:                                             ; preds = %_ZNK10aiMaterial3GetEPKcjjR9aiColor3D.exit, %"_ZZN6Assimp12PbrtExporter13WriteMaterialEiENK3$_0clERK9aiColor3D.exit"
  %.sroa.11.0226 = phi double [ 0.000000e+00, %_ZNK10aiMaterial3GetEPKcjjR9aiColor3D.exit ], [ %i.bu, %"_ZZN6Assimp12PbrtExporter13WriteMaterialEiENK3$_0clERK9aiColor3D.exit" ]
end_hunk_0
begin_hunk_1_@_ZN6Assimp12PbrtExporter13WriteMaterialEi:bb.a
  store ptr %i.om, ptr %19, align 8, !alias.scope !123
  %i.on = load ptr, ptr %20, align 8, !noalias !123 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

bb.bm:                                            ; preds = %bb.bl
  %i.oq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !noalias !123 ; 3 uses
  %i.os = icmp ult i64 %i.or, 16
  call void @llvm.assume(i1 %i.os)
  %i.ot = add nuw nsw i64 %i.or, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.om, ptr noundef nonnull align 8 dereferenceable(1) %i.oo, i64 %i.ot, i1 false)
  br label %bb.bn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.bl
  store ptr %i.on, ptr %19, align 8, !alias.scope !123
  %i.ou = load i64, ptr %i.oo, align 8, !noalias !123
  store i64 %i.ou, ptr %i.om, align 8, !alias.scope !123
  %.phi.trans.insert.i187 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.pre.i188 = load i64, ptr %.phi.trans.insert.i187, align 8, !noalias !123
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.bm
  %i.ov = phi ptr [ %i.om, %bb.bm ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ]
  %i.ow = phi i64 [ %i.or, %bb.bm ], [ %.pre.i188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.ow, ptr %i.oy, align 8, !alias.scope !123
  store ptr %i.oo, ptr %20, align 8, !noalias !123
  store i64 0, ptr %i.ox, align 8, !noalias !123
  store i8 0, ptr %i.oo, align 8, !noalias !123
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.ov, i64 noundef %i.ow)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit193 unwind label %bb.bp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit193: ; preds = %bb.bn
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef nonnull @.str.96, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit193
  %i.pb = load ptr, ptr %19, align 8              ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.om
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.pd = load i64, ptr %i.om, align 8
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  %i.pf = load ptr, ptr %20, align 8              ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.oo
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %i.ph = load i64, ptr %i.oo, align 8
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bk
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.bp:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit193, %bb.bn
  %i.pk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pl = load ptr, ptr %19, align 8              ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.om
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.bp
  %i.pn = load i64, ptr %i.om, align 8
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.po) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.bo
  %.pn55 = phi { ptr, i32 } [ %i.pj, %bb.bo ], [ %i.pk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %i.pk, %bb.bp ]
  %i.pp = load ptr, ptr %20, align 8              ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.ps = load i64, ptr %i.pq, align 8
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.br

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %.pn59 = phi { ptr, i32 } [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %bb.br ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %bb.bs ], [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn59.pn.pn
}

declare void @_ZNK10aiMaterial7GetNameEv(ptr dead_on_unwind writable sret(%struct.aiString) align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @aiTextureTypeToString(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = phi i1 [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12PbrtExporter9WriteMeshEP6aiMesh(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %class.aiColor4t, align 4           ; 8 uses
  %3 = alloca %struct.aiString, align 4           ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %struct.aiString, align 4           ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 33 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.133, i64 noundef 10) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  %spec.select = select i1 %i.h, ptr @.str.135, ptr %i.i ; 4 uses
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #24
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %spec.select, i64 noundef %i.j) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.m = load i32, ptr %1, align 8
  %.not = trunc nuw i32 %i.m to i1
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.136, i64 noundef 44) ; 0 uses
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #24
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %spec.select, i64 noundef %i.o) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.70, i64 noundef 2) ; 0 uses
  br label %bb.cd

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.114, i64 noundef 15) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.x = load i32, ptr %i.w, align 8
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.137, i64 noundef 19) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNK10aiMaterial7GetNameEv(ptr dead_on_unwind nonnull writable sret(%struct.aiString) align 4 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #24
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.ac, i64 noundef %i.ad) ; 0 uses
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.96, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ag = call i32 @aiGetMaterialColor(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.138, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2)
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %_ZNK10aiMaterial3GetEPKcjjR9aiColor3D.exit

_ZNK10aiMaterial3GetEPKcjjR9aiColor3D.exit:       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ai = load float, ptr %2, align 4             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load float, ptr %i.aj, align 4          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load float, ptr %i.al, align 4          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.an = fcmp ogt float %i.ai, 0.000000e+00
  %i.ao = fcmp ogt float %i.ak, 0.000000e+00
  %or.cond = select i1 %i.an, i1 true, i1 %i.ao
  %i.ap = fcmp ogt float %i.am, 0.000000e+00
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ap
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.139, i64 noundef 40) ; 0 uses
  %i.ar = fpext float %i.ai to double
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.ar) ; 2 uses
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.au = fpext float %i.ak to double
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, double noundef %i.au) ; 2 uses
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ax = fpext float %i.am to double
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, double noundef %i.ax)
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.101, i64 noundef 3) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK10aiMaterial3GetEPKcjjR9aiColor3D.exit, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ba, ptr %4, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i64 0, ptr %i.bb, align 8
  store i8 0, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %5, i8 0, i64 1028, i1 false)
  %i.bc = invoke noundef i32 @aiGetMaterialString(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.91, i32 noundef 8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(1028) %5)
          to label %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit unwind label %bb.z

_ZNK10aiMaterial3GetEPKcjjR8aiString.exit:        ; preds = %bb.e
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.i.i126, label %bb.f

bb.f:                                             ; preds = %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit
  %i.be = invoke noundef i32 @aiGetMaterialString(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.91, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(1028) %5)
          to label %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit125 unwind label %bb.z

_ZNK10aiMaterial3GetEPKcjjR8aiString.exit125:     ; preds = %bb.f
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %._crit_edge.i.i126, label %bb.af

._crit_edge.i.i126:                               ; preds = %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit125, %_ZNK10aiMaterial3GetEPKcjjR8aiString.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.bg, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bg, ptr noundef nonnull align 1 dereferenceable(6) @.str.67, i64 6, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 6, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.bi, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNK6Assimp12PbrtExporter20CleanTextureFilenameB5cxx11ERK8aiStringb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 4 dereferenceable(1028) %5, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.aa

bb.g:                                             ; preds = %._crit_edge.i.i126
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.bj = load i64, ptr %i.bh, align 8, !noalias !126 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !126 ; 4 uses
  %i.bm = add i64 %i.bl, %i.bj                    ; 2 uses
  %i.bn = load ptr, ptr %7, align 8, !noalias !126 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bg
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132: ; preds = %bb.g
  %i.bp = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.g
  %i.bq = load i64, ptr %i.bg, align 8, !noalias !126
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132
  %i.br = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132 ]
  %i.bs = icmp ugt i64 %i.bm, %i.br
  br i1 %i.bs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bt = load ptr, ptr %8, align 8, !noalias !126
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.h
  %i.bw = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.h
  %i.bx = load i64, ptr %i.bu, align 8, !noalias !126
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.by = phi i64 [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i131 = icmp ugt i64 %i.bm, %i.by
  br i1 %.not.i131, label %bb.j, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.bn, i64 noundef %i.bj)
          to label %.noexc133 unwind label %bb.ab ; 5 uses

.noexc133:                                        ; preds = %.critedge.i
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ca, ptr %6, align 8, !alias.scope !126
  %i.cb = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.i:                                             ; preds = %.noexc133
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc133
  store ptr %i.cb, ptr %6, align 8, !alias.scope !126
  %i.ci = load i64, ptr %i.cc, align 8
  store i64 %i.ci, ptr %i.ca, align 8, !alias.scope !126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !alias.scope !126
  store ptr %i.cc, ptr %i.bz, align 8
  store i64 0, ptr %i.cj, align 8
  store i8 0, ptr %i.cc, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cm = sub i64 4611686018427387903, %i.bj
  %i.cn = icmp ult i64 %i.cm, %i.bl
  br i1 %i.cn, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #25
          to label %.noexc134 unwind label %bb.ab

.noexc134:                                        ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.j
  %i.co = load ptr, ptr %8, align 8, !noalias !126
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.co, i64 noundef %i.bl)
          to label %.noexc135 unwind label %bb.ab ; 5 uses

end_hunk_1
