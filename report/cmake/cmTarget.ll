Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmTarget?download=true
inline.NumInlined: 6724
inline.NumDeleted: 1943
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK8cmTarget19ImportedGetFullPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN12cmStateEnums12ArtifactTypeENS_23ImportArtifactMissingOkE:bb.a
  %i.hs = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ht = load <2 x i64>, ptr %i.hs, align 8, !tbaa !47
  store <2 x i64> %i.ht, ptr %i.x, align 8, !tbaa !47
  br label %bb.ck

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hu = load i64, ptr %i.w, align 8, !tbaa !47
  store ptr %i.hi, ptr %9, align 8, !tbaa !48
  %i.hv = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.hw = load <2 x i64>, ptr %i.hv, align 8, !tbaa !47
  store <2 x i64> %i.hw, ptr %i.x, align 8, !tbaa !47
  %.not.i141 = icmp eq ptr %i.hg, null
  br i1 %.not.i141, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hg, ptr %29, align 8, !tbaa !48
  store i64 %i.hu, ptr %i.hj, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hj, ptr %29, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.cj, %bb.ck
  %i.hx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.hg, %bb.cj ], [ %i.hj, %bb.ck ]
  %i.hy = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.hy, align 8, !tbaa !46
  store i8 0, ptr %i.hx, align 1, !tbaa !47
  %i.hz = load ptr, ptr %29, align 8, !tbaa !48   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !47
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ce
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.cp

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit106
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.if, ptr %0, align 8, !tbaa !43
  %i.ig = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.w
  br i1 %i.ih, label %bb.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i145

bb.cn:                                            ; preds = %bb.cm
  %i.ii = load i64, ptr %i.x, align 8, !tbaa !46  ; 3 uses
  %i.ij = icmp ult i64 %i.ii, 16
  call void @llvm.assume(i1 %i.ij)
  %i.ik = add nuw nsw i64 %i.ii, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.if, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ik, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i145: ; preds = %bb.cm
  store ptr %i.ig, ptr %0, align 8, !tbaa !48
  %i.il = load i64, ptr %i.w, align 8, !tbaa !47
  store i64 %i.il, ptr %i.if, align 8, !tbaa !47
  %.pre185 = load i64, ptr %i.x, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i145
  %i.im = phi i64 [ %i.ii, %bb.cn ], [ %.pre185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i145 ]
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.im, ptr %i.in, align 8, !tbaa !46
  store ptr %i.w, ptr %9, align 8, !tbaa !48
  store i64 0, ptr %i.x, align 8, !tbaa !46
  store i8 0, ptr %i.w, align 8, !tbaa !47
  br label %bb.co

bb.co:                                            ; preds = %bb.ay, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.io = load ptr, ptr %12, align 8, !tbaa !48   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.y
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.co
  %i.iq = load i64, ptr %i.y, align 8, !tbaa !47
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.is = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.w
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.iu = load i64, ptr %i.w, align 8, !tbaa !47
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.iw = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.e
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.iy = load i64, ptr %i.e, align 8, !tbaa !47
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void

bb.cp:                                            ; preds = %bb.cl, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.i
  %.pn65 = phi { ptr, i32 } [ %i.ie, %bb.cl ], [ %.pn62.pn, %bb.cd ], [ %.pn55.pn.pn, %bb.ba ], [ %i.ae, %bb.i ], [ %.pn50.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ]
  %i.ja = load ptr, ptr %12, align 8, !tbaa !48   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.y
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.cp
  %i.jc = load i64, ptr %i.y, align 8, !tbaa !47
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.je = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.w
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.jg = load i64, ptr %i.w, align 8, !tbaa !47
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %bb.e
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.v, %bb.e ]
  %i.ji = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.e
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.cq
  %i.jk = load i64, ptr %i.e, align 8, !tbaa !47
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn65.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN24cmTargetPropertyComputer10GetSourcesI8cmTargetEE7cmValuePKT_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 28 uses
  %3 = alloca %class.cmList, align 8              ; 12 uses
  %4 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1016
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZN6cmListD2Ev.exit
  %i.s = load atomic i8, ptr @_ZGVZN24cmTargetPropertyComputer10GetSourcesI8cmTargetEE7cmValuePKT_E4srcsB5cxx11 acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.al, label %bb.an, !prof !39

bb.d:                                             ; preds = %bb.b, %_ZN6cmListD2Ev.exit
  %.0120 = phi ptr [ @.str, %bb.b ], [ %.1.lcssa192, %_ZN6cmListD2Ev.exit ] ; 7 uses
  %.sroa.085.0119 = phi ptr [ %i.f, %bb.b ], [ %i.ek, %_ZN6cmListD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.j, ptr %4, align 8, !tbaa !43
  %i.u = load ptr, ptr %.sroa.085.0119, align 8, !tbaa !48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.085.0119, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.w, ptr %i.c, align 8, !tbaa !51
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.y, ptr %4, align 8, !tbaa !48
  %i.z = load i64, ptr %i.c, align 8, !tbaa !51
  store i64 %i.z, ptr %i.j, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.d
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.w, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %.lr.ph55.i.i.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !47
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !47
  br label %.lr.ph55.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %.lr.ph55.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !46
  %i.ad = load ptr, ptr %4, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %i.m, ptr %1, align 8, !tbaa !43
  %i.af = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !46  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !51
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc78 unwind label %bb.k   ; 2 uses

.noexc78:                                         ; preds = %.noexc.i.i
  store ptr %i.ai, ptr %1, align 8, !tbaa !48
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.aj, ptr %i.m, align 8, !tbaa !47
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78, %.lr.ph55.i.i.i.i.i.i
  %i.ak = phi ptr [ %i.ai, %.noexc78 ], [ %i.m, %.lr.ph55.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.ag, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.al = load i8, ptr %i.af, align 1, !tbaa !47
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  store i64 %i.am, ptr %i.n, align 8, !tbaa !46
  %i.an = load ptr, ptr %1, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ap = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, i32 noundef 0)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aq = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.m
  br i1 %i.ar, label %.noexc.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.as = load i64, ptr %i.m, align 8, !tbaa !47
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #31
  br label %.noexc.i43

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.m
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.j
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !47
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body79

.noexc.i43:                                       ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.az = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.r
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.body79:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.k
  %eh.lpad-body80 = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  %i.bc = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i43
  %i.bf = load i64, ptr %i.r, align 8, !tbaa !47
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bh = load ptr, ptr %3, align 8, !tbaa !156   ; 7 uses
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !156 ; 3 uses
  %.not93116 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not93116, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !46 ; 5 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91.peel, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.peel

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.peel: ; preds = %.lr.ph.preheader
  %.sroa.speculated.i.i.i.i.peel = call i64 @llvm.umin.i64(i64 %i.bl, i64 17)
  %bcmp.i.i.peel = call i32 @bcmp(ptr %i.bj, ptr nonnull @.str.2, i64 %.sroa.speculated.i.i.i.i.peel)
  %i.bn = icmp eq i32 %bcmp.i.i.peel, 0
  %i.bo = icmp ugt i64 %i.bl, 16
  %or.cond.peel = and i1 %i.bo, %i.bn
  br i1 %or.cond.peel, label %bb.l, label %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91.peel

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.peel
  %i.bp = getelementptr i8, ptr %i.bj, i64 %i.bl
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !47
  %i.bs = icmp eq i8 %i.br, 62
  br i1 %i.bs, label %bb.v, label %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91.peel

_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91.peel: ; preds = %bb.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.peel, %.lr.ph.preheader
  %i.bt = invoke noundef i64 @_ZN21cmGeneratorExpression4FindESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.bl, ptr %i.bj)
          to label %bb.m unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91.peel
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %0, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !150
  %i.by = invoke noundef ptr @_ZN10cmMakefile17GetOrCreateSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb24cmSourceFileLocationKind(ptr noundef nonnull align 8 dereferenceable(2952) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.o unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.bz = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK12cmSourceFile11GetLocationEv(ptr noundef nonnull align 8 dereferenceable(376) %i.by)
          to label %bb.p unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.o, ptr %5, align 8, !tbaa !43
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !51
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i53.peel, label %._crit_edge.i.i52.peel

.noexc.i53.peel:                                  ; preds = %bb.p
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc54.peel unwind label %.loopexit.split-lp128.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54.peel:                                    ; preds = %.noexc.i53.peel
  store ptr %i.cf, ptr %5, align 8, !tbaa !48
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !51
  store i64 %i.cg, ptr %i.o, align 8, !tbaa !47
  br label %._crit_edge.i.i52.peel

._crit_edge.i.i52.peel:                           ; preds = %.noexc54.peel, %bb.p
  %i.ch = phi ptr [ %i.cf, %.noexc54.peel ], [ %i.o, %bb.p ] ; 2 uses
  switch i64 %i.cd, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i52.peel
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !47
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !47
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i52.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cb, i64 %i.cd, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i52.peel
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  store i64 %i.cj, ptr %i.p, align 8, !tbaa !46
  %i.ck = load ptr, ptr %5, align 8, !tbaa !48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 0, ptr %i.cl, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.cm = load i64, ptr %i.p, align 8, !tbaa !46
  switch i64 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
    i64 4611686018427387903, label %.loopexit132.invoke
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel: ; preds = %bb.s
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel
  %.pre = load i64, ptr %i.p, align 8, !tbaa !46
  %i.co = sub i64 4611686018427387903, %.pre
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel_crit_edge, %bb.s
  %i.cp = phi i64 [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel_crit_edge ], [ 4611686018427387903, %bb.s ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !46 ; 2 uses
  %i.cs = icmp ult i64 %i.cp, %i.cr
  br i1 %i.cs, label %.loopexit132.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !48
  %i.cv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.cu, i64 noundef %i.cr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %.not.i63.peel = icmp eq ptr %.0120, null
  br i1 %.not.i63.peel, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.cw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0120) #30
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.0120, i64 noundef %i.cw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.cy = load ptr, ptr %2, align 8, !tbaa !159
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %2, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !374
  %i.de = or i32 %i.dd, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.db, i32 noundef %i.de)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.peel: ; preds = %bb.u, %bb.t
  %i.df = load ptr, ptr %5, align 8, !tbaa !48
  %i.dg = load i64, ptr %i.p, align 8, !tbaa !46
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.df, i64 noundef %i.dg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66.peel
  %i.di = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.o
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68.peel
  %i.dk = load i64, ptr %i.o, align 8, !tbaa !47
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68.peel
  %7 = load i64, ptr %i.p, align 8, !tbaa !46
  %8 = icmp ult i64 %7, 16
  call void @llvm.assume(i1 %8)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel

bb.v:                                             ; preds = %bb.m, %bb.l
  %.not.i.peel = icmp eq ptr %.0120, null
  br i1 %.not.i.peel, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0120) #30
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.0120, i64 noundef %i.dm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %2, align 8, !tbaa !159
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %2, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !374
  %i.du = or i32 %i.dt, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dr, i32 noundef %i.du)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel: ; preds = %bb.x, %bb.w
  %i.dv = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.dw = load i64, ptr %i.bk, align 8, !tbaa !46
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.dv, i64 noundef %i.dw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %.not93.peel = icmp eq ptr %i.dy, %i.bi
  br i1 %.not93.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %.pre146 = load ptr, ptr %3, align 8, !tbaa !169 ; 3 uses
  %.pre147 = load ptr, ptr %i.l, align 8, !tbaa !170 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre146, %.pre147
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ee, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %.pre146, %._crit_edge ] ; 3 uses
  %i.dz = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !47
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %.pre147
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !169
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge
  %.1.lcssa192 = phi ptr [ @.str.3, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ @.str.3, %._crit_edge ], [ %.0120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ef = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre146, %._crit_edge ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i.i, label %_ZN6cmListD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !172
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ej) #31
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.085.0119, i64 48 ; 2 uses
  %.not92 = icmp eq ptr %i.ek, %i.h
  br i1 %.not92, label %bb.c, label %bb.d

bb.z:                                             ; preds = %.noexc.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.body79
  %i.em = load i64, ptr %i.bd, align 8, !tbaa !47
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.en) #31
  br label %.loopexit

.loopexit:                                        ; preds = %.body79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.z
  %.pn = phi { ptr, i32 } [ %i.el, %bb.z ], [ %eh.lpad-body80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %eh.lpad-body80, %.body79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ak

.lr.ph:                                           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.sroa.081.0117 = phi ptr [ %i.gn, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %i.dy, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel ] ; 5 uses
  %i.eo = load ptr, ptr %.sroa.081.0117, align 8, !tbaa !48 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.081.0117, i64 8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !46 ; 5 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.eq, i64 17)
  %bcmp.i.i = call i32 @bcmp(ptr %i.eo, ptr nonnull @.str.2, i64 %.sroa.speculated.i.i.i.i)
  %i.es = icmp eq i32 %bcmp.i.i, 0
  %i.et = icmp ugt i64 %i.eq, 16
  %or.cond = and i1 %i.et, %i.es
  br i1 %or.cond, label %bb.aa, label %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91

bb.aa:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.eu = getelementptr i8, ptr %i.eo, i64 %i.eq
  %i.ev = getelementptr i8, ptr %i.eu, i64 -1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !47
  %i.ex = icmp eq i8 %i.ew, 62
  br i1 %i.ex, label %bb.ac, label %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91

_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph, %bb.aa
  %i.ey = invoke noundef i64 @_ZN21cmGeneratorExpression4FindESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.eq, ptr %i.eo)
          to label %bb.ab unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %_Z18cmHasLiteralPrefixILm18EEbSt17basic_string_viewIcSt11char_traitsIcEERAT__Kc.exit.thread91
  %i.ez = icmp eq i64 %i.ey, -1
  br i1 %i.ez, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ac
  %.pre145 = load i64, ptr %i.ep, align 8, !tbaa !46
  %.pre144 = load ptr, ptr %.sroa.081.0117, align 8, !tbaa !48
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.pre144, i64 noundef %.pre145)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %bb.ab
  %i.fc = load ptr, ptr %0, align 8, !tbaa !56
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !150
  %i.ff = invoke noundef ptr @_ZN10cmMakefile17GetOrCreateSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb24cmSourceFileLocationKind(ptr noundef nonnull align 8 dereferenceable(2952) %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.081.0117, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ae unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.fg = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK12cmSourceFile11GetLocationEv(ptr noundef nonnull align 8 dereferenceable(376) %i.ff)
          to label %bb.af unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store ptr %i.o, ptr %5, align 8, !tbaa !43
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !48 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.fk, ptr %i.b, align 8, !tbaa !51
  %i.fl = icmp ugt i64 %i.fk, 15
  br i1 %i.fl, label %.noexc.i53, label %._crit_edge.i.i52

.noexc.i53:                                       ; preds = %bb.af
  %i.fm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc54 unwind label %.loopexit.split-lp128.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54:                                         ; preds = %.noexc.i53
  store ptr %i.fm, ptr %5, align 8, !tbaa !48
  %i.fn = load i64, ptr %i.b, align 8, !tbaa !51
  store i64 %i.fn, ptr %i.o, align 8, !tbaa !47
  br label %._crit_edge.i.i52

._crit_edge.i.i52:                                ; preds = %.noexc54, %bb.af
  %i.fo = phi ptr [ %i.fm, %.noexc54 ], [ %i.o, %bb.af ] ; 2 uses
  switch i64 %i.fk, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i52
  %i.fp = load i8, ptr %i.fi, align 1, !tbaa !47
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !47
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fo, ptr align 1 %i.fi, i64 %i.fk, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i52
  %i.fq = load i64, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  store i64 %i.fq, ptr %i.p, align 8, !tbaa !46
  %i.fr = load ptr, ptr %5, align 8, !tbaa !48
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fq
  store i8 0, ptr %i.fs, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.ft = load i64, ptr %i.p, align 8, !tbaa !46
  switch i64 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
    i64 4611686018427387903, label %.loopexit132.invoke
  ]
end_hunk_0
