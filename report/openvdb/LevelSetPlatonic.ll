Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetPlatonic?download=true
inline.NumInlined: 828
inline.NumDeleted: 210
begin_hunk_0_@_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_:bb.a
  store i32 0, ptr %i.cfq, align 4, !tbaa !48
  %i.cfr = load ptr, ptr %i.cfl, align 8, !tbaa !35
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 16
  %i.cft = load ptr, ptr %i.cfs, align 8
  call void %i.cft(ptr noundef nonnull align 8 dereferenceable(16) %i.cfl) #19, !inline_history !0
  %i.cfu = load ptr, ptr %i.cfl, align 8, !tbaa !35
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfu, i64 24
  %i.cfw = load ptr, ptr %i.cfv, align 8
  call void %i.cfw(ptr noundef nonnull align 8 dereferenceable(16) %i.cfl) #19, !inline_history !0
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.su:                                            ; preds = %bb.ss
  %i.cfx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i1156 = icmp eq i8 %i.cfx, 0
  br i1 %.not.i.i.i1156, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.cfy = add nsw i32 %i.cfp, -1
  store i32 %i.cfy, ptr %i.cfm, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1157

bb.sw:                                            ; preds = %bb.su
  %i.cfz = atomicrmw volatile add ptr %i.cfm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1157

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1157: ; preds = %bb.sw, %bb.sv
  %.0.i.i.i.i1158 = phi i32 [ %i.cfp, %bb.sv ], [ %i.cfz, %bb.sw ]
  %i.cga = icmp eq i32 %.0.i.i.i.i1158, 1
  br i1 %i.cga, label %bb.sx, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.sx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1157
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cfl) #19
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit, %bb.st, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1157, %bb.sx
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

bb.sy:                                            ; preds = %bb.sn, %bb.sl
  %.pn29 = phi { ptr, i32 } [ %i.ceo, %bb.sl ], [ %i.cer, %bb.sn ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  br label %bb.sz

bb.sz:                                            ; preds = %bb.sy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1139, %bb.ry, %bb.rx, %bb.rw, %bb.rv, %bb.ru, %bb.rt, %bb.rs, %bb.rr, %bb.rq, %bb.rp, %bb.ro, %bb.rn, %bb.rm, %bb.rl, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.rg, %bb.rf, %bb.re, %bb.rd, %bb.rc, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.pn31 = phi { ptr, i32 } [ %i.cdk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1139 ], [ %.pn29, %bb.sy ], [ %i.ds, %bb.ab ], [ %i.dr, %bb.aa ], [ %i.dq, %bb.z ], [ %i.dp, %bb.y ], [ %i.cbs, %bb.qv ], [ %i.do, %bb.x ], [ %i.dn, %bb.w ], [ %i.dm, %bb.v ], [ %i.lx, %bb.bw ], [ %i.lw, %bb.bv ], [ %i.lv, %bb.bu ], [ %i.lu, %bb.bt ], [ %i.lt, %bb.bs ], [ %i.ls, %bb.br ], [ %i.lr, %bb.bq ], [ %i.lq, %bb.bp ], [ %i.cby, %bb.rb ], [ %i.lp, %bb.bo ], [ %i.cbt, %bb.qw ], [ %i.lo, %bb.bn ], [ %i.ln, %bb.bm ], [ %i.lm, %bb.bl ], [ %i.ur, %bb.dw ], [ %i.uq, %bb.dv ], [ %i.up, %bb.du ], [ %i.uo, %bb.dt ], [ %i.un, %bb.ds ], [ %i.um, %bb.dr ], [ %i.ul, %bb.dq ], [ %i.uk, %bb.dp ], [ %i.cbw, %bb.qz ], [ %i.uj, %bb.do ], [ %i.cbu, %bb.qx ], [ %i.ui, %bb.dn ], [ %i.uh, %bb.dm ], [ %i.ug, %bb.dl ], [ %i.bee, %bb.md ], [ %i.bed, %bb.mc ], [ %i.bec, %bb.mb ], [ %i.beb, %bb.ma ], [ %i.bea, %bb.lz ], [ %i.bdz, %bb.ly ], [ %i.bdy, %bb.lx ], [ %i.bdx, %bb.lw ], [ %i.bdw, %bb.lv ], [ %i.bdv, %bb.lu ], [ %i.bdu, %bb.lt ], [ %i.bdt, %bb.ls ], [ %i.bds, %bb.lr ], [ %i.bdr, %bb.lq ], [ %i.bdq, %bb.lp ], [ %i.bdp, %bb.lo ], [ %i.bdo, %bb.ln ], [ %i.bdn, %bb.lm ], [ %i.bdm, %bb.ll ], [ %i.bdl, %bb.lk ], [ %i.bdk, %bb.lj ], [ %i.bdj, %bb.li ], [ %i.bdi, %bb.lh ], [ %i.bdh, %bb.lg ], [ %i.bdg, %bb.lf ], [ %i.bdf, %bb.le ], [ %i.bde, %bb.ld ], [ %i.bdd, %bb.lc ], [ %i.bdc, %bb.lb ], [ %i.bdb, %bb.la ], [ %i.bda, %bb.kz ], [ %i.bcz, %bb.ky ], [ %i.bcy, %bb.kx ], [ %i.bcx, %bb.kw ], [ %i.bcw, %bb.kv ], [ %i.bcv, %bb.ku ], [ %i.bcu, %bb.kt ], [ %i.bct, %bb.ks ], [ %i.cbx, %bb.ra ], [ %i.bcs, %bb.kr ], [ %i.cbv, %bb.qy ], [ %i.bcr, %bb.kq ], [ %i.bcq, %bb.kp ], [ %i.bcp, %bb.ko ], [ %i.ccv, %bb.ry ], [ %i.ccu, %bb.rx ], [ %i.cct, %bb.rw ], [ %i.ccs, %bb.rv ], [ %i.ccr, %bb.ru ], [ %i.ccq, %bb.rt ], [ %i.ccp, %bb.rs ], [ %i.cco, %bb.rr ], [ %i.ccn, %bb.rq ], [ %i.ccm, %bb.rp ], [ %i.ccl, %bb.ro ], [ %i.cck, %bb.rn ], [ %i.ccj, %bb.rm ], [ %i.cci, %bb.rl ], [ %i.cch, %bb.rk ], [ %i.ccg, %bb.rj ], [ %i.ccf, %bb.ri ], [ %i.cce, %bb.rh ], [ %i.ccd, %bb.rg ], [ %i.ccc, %bb.rf ], [ %i.ccb, %bb.re ], [ %i.cca, %bb.rd ], [ %i.cbz, %bb.rc ]
  %i.cgb = load ptr, ptr %10, align 8, !tbaa !25  ; 3 uses
  %.not.i.i.i1159 = icmp eq ptr %i.cgb, null
  br i1 %.not.i.i.i1159, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IjEESaIS4_EED2Ev.exit1160, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.cgc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cgd = load ptr, ptr %i.cgc, align 8, !tbaa !24
  %i.cge = ptrtoint ptr %i.cgd to i64
  %i.cgf = ptrtoint ptr %i.cgb to i64
  %i.cgg = sub i64 %i.cge, %i.cgf
  call void @_ZdlPvm(ptr noundef nonnull %i.cgb, i64 noundef %i.cgg) #21
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IjEESaIS4_EED2Ev.exit1160

_ZNSt6vectorIN7openvdb5v13_04math4Vec4IjEESaIS4_EED2Ev.exit1160: ; preds = %bb.sz, %bb.ta
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.cgh = load ptr, ptr %9, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i1161 = icmp eq ptr %i.cgh, null
  br i1 %.not.i.i.i1161, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IjEESaIS4_EED2Ev.exit1162, label %bb.tb

bb.tb:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IjEESaIS4_EED2Ev.exit1160
  %i.cgi = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cgj = load ptr, ptr %i.cgi, align 8, !tbaa !19
  %i.cgk = ptrtoint ptr %i.cgj to i64
  %i.cgl = ptrtoint ptr %i.cgh to i64
  %i.cgm = sub i64 %i.cgk, %i.cgl
  call void @_ZdlPvm(ptr noundef nonnull %i.cgh, i64 noundef %i.cgm) #21
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IjEESaIS4_EED2Ev.exit1162

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IjEESaIS4_EED2Ev.exit1162: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec4IjEESaIS4_EED2Ev.exit1160, %bb.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.cgn = load ptr, ptr %8, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i1163 = icmp eq ptr %i.cgn, null
  br i1 %.not.i.i.i1163, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit1164, label %bb.tc

bb.tc:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IjEESaIS4_EED2Ev.exit1162
  %i.cgo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cgp = load ptr, ptr %i.cgo, align 8, !tbaa !15
  %i.cgq = ptrtoint ptr %i.cgp to i64
  %i.cgr = ptrtoint ptr %i.cgn to i64
  %i.cgs = sub i64 %i.cgq, %i.cgr
  call void @_ZdlPvm(ptr noundef nonnull %i.cgn, i64 noundef %i.cgs) #21
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit1164

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit1164: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IjEESaIS4_EED2Ev.exit1162, %bb.tc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn31

bb.td:                                            ; preds = %bb.sh
  unreachable
}

declare void @_ZN7openvdb5v13_05tools14meshToLevelSetINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrERT0_RKNS0_4math9TransformERKSt6vectorINSL_4Vec3IfEESaISR_EERKSP_INSQ_IjEESaISW_EERKSP_INSL_4Vec4IjEESaIS12_EEf(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools25createLevelSetTetrahedronINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.0") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8 %0, i32 noundef 4, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools25createLevelSetTetrahedronINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.24") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8 %0, i32 noundef 4, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools18createLevelSetCubeINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.0") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8 %0, i32 noundef 6, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools18createLevelSetCubeINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.24") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8 %0, i32 noundef 6, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24createLevelSetOctahedronINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.0") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8 %0, i32 noundef 8, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools24createLevelSetOctahedronINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.24") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8 %0, i32 noundef 8, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools26createLevelSetDodecahedronINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.0") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8 %0, i32 noundef 12, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools26createLevelSetDodecahedronINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.24") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8 %0, i32 noundef 12, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools25createLevelSetIcosahedronINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.0") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8 %0, i32 noundef 20, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools25createLevelSetIcosahedronINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEfRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.24") align 8 %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools22createLevelSetPlatonicINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEENT_3PtrEifRKNS0_4math4Vec3IfEEffPT0_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8 %0, i32 noundef 20, float noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, float noundef %3, float noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.b, align 8, !tbaa !32
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.d)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.g = load ptr, ptr %2, align 8, !tbaa !33, !noalias !58
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31, !noalias !58 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !28, !alias.scope !59
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !31, !alias.scope !59
  store i8 0, ptr %i.j, align 8, !tbaa !32, !alias.scope !59
  %i.l = add i64 %i.i, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.l)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !31, !alias.scope !59
  %i.n = and i64 %i.m, -2
  %i.o = icmp eq i64 %i.n, 4611686018427387902
  br i1 %i.o, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !31, !alias.scope !59
  %i.r = sub i64 4611686018427387903, %i.q
  %i.s = icmp ult i64 %i.r, %i.i
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #22
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !33, !alias.scope !59 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.x = load i64, ptr %i.k, align 8, !tbaa !31   ; 2 uses
  %i.y = load i64, ptr %i.c, align 8, !tbaa !31
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #22
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !33
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.ab, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.j
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.af = load i64, ptr %i.j, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.ah = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.h, %bb.f
  %.sink = phi ptr [ %i.v, %bb.f ], [ %i.ai, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ah, %bb.h ]
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !32
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.al) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ah, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.f, %bb.c ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.am = call ptr @__cxa_begin_catch(ptr %.1) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  ret void

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7openvdb5v13_09Exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  ret ptr %i.b
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21, !inline_history !51
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #19, !inline_history !51
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_012RuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21, !inline_history !51
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #19, !inline_history !51
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04util15NullInterrupterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04util15NullInterrupter5startEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_04util15NullInterrupter3endEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04util15NullInterrupter14wasInterruptedEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN7openvdb5v13_04util15NullInterrupter11interrupterEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !60
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN7openvdb5v13_04math4Vec3IfEE", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN7openvdb5v13_04math4Vec3IfEESaIS4_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!12, !11, i64 16}
!16 = !{!"p1 _ZTSN7openvdb5v13_04math4Vec3IjEE", !10, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN7openvdb5v13_04math4Vec3IjEESaIS4_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 16}
!20 = !{!17, !16, i64 0}
!21 = !{!"p1 _ZTSN7openvdb5v13_04math4Vec4IjEE", !10, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN7openvdb5v13_04math4Vec4IjEESaIS4_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 8}
!24 = !{!22, !21, i64 16}
!25 = !{!22, !21, i64 0}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !29, i64 8, !6, i64 16}
!31 = !{!30, !29, i64 8}
!32 = !{!6, !6, i64 0}
!33 = !{!30, !26, i64 0}
!34 = !{!"vtable pointer", !5, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"float", !6, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"p1 _ZTSN7openvdb5v13_04math9TransformE", !10, i64 0}
!40 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!41 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!42 = !{!"_ZTSSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !41, i64 8}
!43 = !{!42, !39, i64 0}
!44 = !{!10, !10, i64 0}
!45 = !{!41, !40, i64 0}
!46 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!47 = !{!46, !7, i64 8}
!48 = !{!46, !7, i64 12}
!49 = !{!7, !7, i64 0}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = !{ptr @_ZN7openvdb5v13_09ExceptionD2Ev}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!55 = distinct !{!55, !54, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!56 = distinct !{!56, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!57 = distinct !{!57, !56, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!58 = !{!55}
!59 = !{!57, !55}
!60 = distinct !{null}
end_hunk_0
