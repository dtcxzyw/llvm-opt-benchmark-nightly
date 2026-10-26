Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3SplitVar?download=true
inline.NumInlined: 4984
inline.NumDeleted: 1817
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN21SplitPackedVarVisitor10createVarsEP6AstVarPK13AstBasicDTypeRSt6vectorI11SplitNewVarSaIS6_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

bb.cs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit431, %bb.cf
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ct:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit433
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

bb.cu:                                            ; preds = %bb.cg
  %i.ur = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.us = load ptr, ptr %22, align 8, !tbaa !61   ; 2 uses
  %i.ut = icmp eq ptr %i.us, %i.ay
  br i1 %i.ut, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451: ; preds = %bb.cu
  %i.uu = load i64, ptr %i.ay, align 8, !tbaa !63
  %i.uv = add i64 %i.uu, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451, %bb.ct
  %.pn186 = phi { ptr, i32 } [ %i.uq, %bb.ct ], [ %i.ur, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451 ], [ %i.ur, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, %bb.cs
  %.pn186.pn = phi { ptr, i32 } [ %.pn186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453 ], [ %i.up, %bb.cs ] ; 2 uses
  %i.uw = load ptr, ptr %21, align 8, !tbaa !61   ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.az
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %bb.cv
  %i.uy = load i64, ptr %i.az, align 8, !tbaa !63
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454, %bb.cr
  %.pn186.pn.pn = phi { ptr, i32 } [ %i.uo, %bb.cr ], [ %.pn186.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454 ], [ %.pn186.pn, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %bb.cq
  %.pn186.pn.pn.pn = phi { ptr, i32 } [ %.pn186.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ], [ %i.un, %bb.cq ] ; 2 uses
  %i.va = load ptr, ptr %20, align 8, !tbaa !61   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.ba
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %bb.cw
  %i.vc = load i64, ptr %i.ba, align 8, !tbaa !63
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457, %bb.cp
  %.pn186.pn.pn.pn.pn = phi { ptr, i32 } [ %i.um, %bb.cp ], [ %.pn186.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457 ], [ %.pn186.pn.pn.pn, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.dd

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

bb.cy:                                            ; preds = %bb.ch
  %i.vf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.vg = load ptr, ptr %23, align 8, !tbaa !61   ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.bd
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %bb.cy
  %i.vi = load i64, ptr %i.bd, align 8, !tbaa !63
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %bb.cx
  %.pn192 = phi { ptr, i32 } [ %i.ve, %bb.cx ], [ %i.vf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.vf, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.dd

bb.cz:                                            ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.vk = load ptr, ptr %25, align 8, !tbaa !61
  %i.vl = load i64, ptr %i.be, align 8, !tbaa !62
  %i.vm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.vk, i64 noundef %i.vl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit464 unwind label %bb.dc ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit464: ; preds = %bb.da
  %i.vn = load ptr, ptr %25, align 8, !tbaa !61   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.bf
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit464
  %i.vp = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit464, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.df

bb.db:                                            ; preds = %bb.cz
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470

bb.dc:                                            ; preds = %bb.da
  %i.vs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vt = load ptr, ptr %25, align 8, !tbaa !61   ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.bf
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468: ; preds = %bb.dc
  %i.vv = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468, %bb.db
  %.pn195 = phi { ptr, i32 } [ %i.vr, %bb.db ], [ %i.vs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468 ], [ %i.vs, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %bb.co
  %.pn195.pn = phi { ptr, i32 } [ %.pn195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470 ], [ %i.ul, %bb.co ], [ %.pn192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ], [ %.pn186.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #23
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.cn
  %.pn195.pn.pn = phi { ptr, i32 } [ %.pn195.pn, %bb.dd ], [ %i.uk, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.loopexit.split-lp553

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467, %bb.cb
  %i.vx = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.ac
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471: ; preds = %bb.df
  %i.vz = load i64, ptr %i.ac, align 8, !tbaa !63
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.0490.0712, i64 16 ; 2 uses
  %.not513 = icmp eq ptr %i.wb, %i.e
  br i1 %.not513, label %._crit_edge, label %bb.b

.loopexit.split-lp553:                            ; preds = %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ck, %bb.cl, %bb.de, %bb.cm, %bb.bg, %bb.bd
  %.pn199 = phi { ptr, i32 } [ %i.qg, %bb.bg ], [ %.pn195.pn.pn, %bb.de ], [ %i.uj, %bb.cm ], [ %lpad.thr_comm, %bb.cl ], [ %lpad.thr_comm.split-lp, %bb.ck ], [ %i.pv, %bb.bd ], [ %lpad.loopexit.split-lp1048, %.loopexit.split-lp553.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.wc = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.ac
  br i1 %i.wd, label %.critedge234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474: ; preds = %.loopexit.split-lp553
  %i.we = load i64, ptr %i.ac, align 8, !tbaa !63
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #24
  br label %.critedge234

.critedge234:                                     ; preds = %.loopexit.split-lp553, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474, %.critedge230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397
  %.pn199.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.critedge230 ], [ %.pn181.pn.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397 ], [ %.pn199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474 ], [ %.pn199, %.loopexit.split-lp553 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn199.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN21SplitPackedVarVisitor16updateReferencesEP6AstVarR12PackedVarRefRKSt6vectorI11SplitNewVarSaIS5_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.VAccess, align 1             ; 5 uses
  %4 = alloca %class.VAccess, align 1             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 260
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge212
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge212
  %.not = phi i1 [ false, %bb.a ], [ true, %._crit_edge212 ]
  %.083.idx213.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.a ], [ 1, %._crit_edge212 ] ; 3 uses
  %5 = trunc nuw i8 %.083.idx213.sroa.phi.sroa.speculated to i1
  %i.f = load i8, ptr %i.a, align 8, !tbaa !410, !range !137, !noundef !138
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  br i1 %5, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %_ZN12PackedVarRef3lhsEv.exit, label %bb.e, !prof !139

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 907) ; 0 uses
  %i.i = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.596)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.j) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  br i1 %i.g, label %_ZN12PackedVarRef3lhsEv.exit, label %bb.g, !prof !139

bb.g:                                             ; preds = %bb.f
  %i.k = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 911) ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.596)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.m) #27
  unreachable

_ZN12PackedVarRef3lhsEv.exit:                     ; preds = %bb.f, %bb.d
  %i.n = phi ptr [ %1, %bb.d ], [ %i.b, %bb.f ]   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !435  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !435  ; 2 uses
  %.not164208 = icmp eq ptr %i.o, %i.q
  br i1 %.not164208, label %._crit_edge212, label %.lr.ph211

._crit_edge212:                                   ; preds = %bb.ap, %_ZN12PackedVarRef3lhsEv.exit
  br i1 %.not, label %bb.b, label %bb.c

.lr.ph211:                                        ; preds = %_ZN12PackedVarRef3lhsEv.exit, %bb.ap
  %.sroa.0142.0209 = phi ptr [ %i.gn, %bb.ap ], [ %i.o, %_ZN12PackedVarRef3lhsEv.exit ] ; 13 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !414    ; 3 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !414  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0142.0209, i64 8 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !426  ; 3 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %.lr.ph211, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.y, %.lr.ph211 ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.r, %.lr.ph211 ] ; 2 uses
  %i.aa = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !439
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !416
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = icmp slt i32 %i.u, %i.af                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = xor i64 %i.aa, -1
  %i.aj = add nsw i64 %.016.i.i, %i.ai
  %.sroa.011.1.i.i = select i1 %i.ag, ptr %.sroa.011.015.i.i, ptr %i.ah ; 2 uses
  %.1.i.i = select i1 %i.ag, i64 %i.aa, i64 %i.aj ; 2 uses
  %i.ak = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ak, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit, !llvm.loop !981

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %.lr.ph211
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.r, %.lr.ph211 ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 10 uses
  %.not165 = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.s
  br i1 %.not165, label %bb.h, label %bb.i, !prof !56

bb.h:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit
  %i.al = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425
  %i.am = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 1149) ; 0 uses
  %i.an = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.606)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.al, ptr noundef nonnull align 8 dereferenceable(112) %i.ao) #27
  unreachable

bb.i:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit
  %i.ap = load i32, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !439 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !416
  %i.as = add i32 %i.ap, -1
  %i.at = add i32 %i.as, %i.ar
  %i.au = icmp slt i32 %i.at, %i.u
  br i1 %i.au, label %.critedge, label %bb.j, !prof !56

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0142.0209, i64 12 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !427
  %i.ax = add i32 %i.u, -1
  %i.ay = add i32 %i.ax, %i.aw
  %i.az = icmp slt i32 %i.ay, %i.ap
  br i1 %i.az, label %.critedge, label %bb.k, !prof !56

.critedge:                                        ; preds = %bb.i, %bb.j
  %i.ba = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 1151) ; 0 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.607)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bc) #27
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.be, align 8, !tbaa !51
  %i.bf = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 369
  br i1 %i.bf, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i, label %bb.q

_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i:    ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 6 uses
  %.not.i10.i = icmp eq ptr %i.bh, null
  br i1 %.not.i10.i, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97, label %bb.m

bb.m:                                             ; preds = %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %.sroa.0.0.copyload.i.i.i11.i = load i16, ptr %i.bi, align 8, !tbaa !51
  %i.bj = add i16 %.sroa.0.0.copyload.i.i.i11.i, -466
  %spec.select.i.i.i = icmp ult i16 %i.bj, 6
  br i1 %spec.select.i.i.i, label %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97

_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i: ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !213 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.bl, null
  br i1 %.not.i13.i, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97, label %_ZN7AstNode2isI9AstCReset11AstNodeExprEEbPKT0_.exit.i

_ZN7AstNode2isI9AstCReset11AstNodeExprEEbPKT0_.exit.i: ; preds = %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %.sroa.0.0.copyload.i.i.i14.i = load i16, ptr %i.bm, align 8, !tbaa !51
  %.sroa.0.0.copyload.i.i.i14.fr.i = freeze i16 %.sroa.0.0.copyload.i.i.i14.i
  %i.bn = icmp eq i16 %.sroa.0.0.copyload.i.i.i14.fr.i, 108
  br i1 %i.bn, label %_ZNK17PackedVarRefEntry11backCResetpEv.exit, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97

_ZNK17PackedVarRefEntry11backCResetpEv.exit:      ; preds = %_ZN7AstNode2isI9AstCReset11AstNodeExprEEbPKT0_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !419
  %i.bq = call noundef ptr @_ZN21SplitPackedVarVisitor15newAssignCResetEP13AstNodeAssignP6AstVar(ptr noundef nonnull %i.bh, ptr noundef %i.bp)
  call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.bh, ptr noundef %i.bq)
  br label %bb.r

_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97:  ; preds = %bb.m, %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i, %_ZN7AstNode2isI9AstCReset11AstNodeExprEEbPKT0_.exit.i, %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50 ; 5 uses
  %.not.i5.i = icmp eq ptr %i.bs, null
  br i1 %.not.i5.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.sroa.0.0.copyload.i.i.i6.i = load i16, ptr %i.bt, align 8, !tbaa !51
  %i.bu = icmp eq i16 %.sroa.0.0.copyload.i.i.i6.i, 55
  br i1 %i.bu, label %_ZNK17PackedVarRefEntry12backSenItempEv.exit, label %bb.q

_ZNK17PackedVarRefEntry12backSenItempEv.exit:     ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !213 ; 2 uses
  %i.bx = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !286
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 1, !tbaa !341
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.bx, ptr noundef %i.bz, ptr noundef %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNK17PackedVarRefEntry12backSenItempEv.exit
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.bw, ptr noundef nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bw)
  br label %bb.r

bb.p:                                             ; preds = %_ZNK17PackedVarRefEntry12backSenItempEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 232) #24
  br label %bb.aq

bb.q:                                             ; preds = %bb.l, %bb.n, %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97, %bb.k
  %i.cd = call noundef ptr @_ZN21SplitPackedVarVisitor11extractBitsERK17PackedVarRefEntryRK11SplitNewVar7VAccess(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0142.0209, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.0.lcssa.i.i, i8 %.083.idx213.sroa.phi.sroa.speculated)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %_ZNK17PackedVarRefEntry11backCResetpEv.exit
  %i.ce = phi i1 [ true, %_ZNK17PackedVarRefEntry11backCResetpEv.exit ], [ false, %bb.q ], [ false, %bb.o ] ; 2 uses
  %.1.i148 = phi ptr [ %i.bh, %_ZNK17PackedVarRefEntry11backCResetpEv.exit ], [ null, %bb.q ], [ null, %bb.o ] ; 3 uses
  %.181 = phi ptr [ null, %_ZNK17PackedVarRefEntry11backCResetpEv.exit ], [ %i.cd, %bb.q ], [ %i.bs, %bb.o ] ; 3 uses
  %.179 = phi i1 [ true, %_ZNK17PackedVarRefEntry11backCResetpEv.exit ], [ false, %bb.q ], [ true, %bb.o ]
  %i.cf = load i32, ptr %i.t, align 8, !tbaa !426
  %i.cg = load i32, ptr %i.av, align 4, !tbaa !427
  %i.ch = load i32, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !439
  %i.ci = load i32, ptr %i.aq, align 4, !tbaa !416
  %i.cj = add i32 %i.cg, %i.cf
  %i.ck = add i32 %i.ch, %i.ci
  %i.cl = sub i32 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph, label %._crit_edge
end_hunk_0
