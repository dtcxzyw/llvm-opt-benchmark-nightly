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
  %.083.ptr.sroa.idx = phi i8 [ 0, %bb.a ], [ 1, %._crit_edge212 ] ; 3 uses
  %.not = phi i1 [ false, %bb.a ], [ true, %._crit_edge212 ]
  %i.f = trunc nuw i8 %.083.ptr.sroa.idx to i1
  %i.g = load i8, ptr %i.a, align 8, !tbaa !410, !range !137, !noundef !138
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %_ZN12PackedVarRef3lhsEv.exit, label %bb.e, !prof !139

bb.e:                                             ; preds = %bb.d
  %i.i = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 907) ; 0 uses
  %i.j = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.596)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.k) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  br i1 %i.h, label %_ZN12PackedVarRef3lhsEv.exit, label %bb.g, !prof !139

bb.g:                                             ; preds = %bb.f
  %i.l = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 911) ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.596)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.n) #27
  unreachable

_ZN12PackedVarRef3lhsEv.exit:                     ; preds = %bb.f, %bb.d
  %i.o = phi ptr [ %1, %bb.d ], [ %i.b, %bb.f ]   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !435  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !435  ; 2 uses
  %.not164208 = icmp eq ptr %i.p, %i.r
  br i1 %.not164208, label %._crit_edge212, label %.lr.ph211

._crit_edge212:                                   ; preds = %bb.ap, %_ZN12PackedVarRef3lhsEv.exit
  br i1 %.not, label %bb.b, label %bb.c

.lr.ph211:                                        ; preds = %_ZN12PackedVarRef3lhsEv.exit, %bb.ap
  %.sroa.0142.0209 = phi ptr [ %i.go, %bb.ap ], [ %i.p, %_ZN12PackedVarRef3lhsEv.exit ] ; 13 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !414    ; 3 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !414  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0142.0209, i64 8 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !426  ; 3 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %.lr.ph211, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.z, %.lr.ph211 ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.s, %.lr.ph211 ] ; 2 uses
  %i.ab = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !439
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !416
  %i.ag = add nsw i32 %i.af, %i.ad
  %i.ah = icmp slt i32 %i.v, %i.ag                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = xor i64 %i.ab, -1
  %i.ak = add nsw i64 %.016.i.i, %i.aj
  %.sroa.011.1.i.i = select i1 %i.ah, ptr %.sroa.011.015.i.i, ptr %i.ai ; 2 uses
  %.1.i.i = select i1 %i.ah, i64 %i.ab, i64 %i.ak ; 2 uses
  %i.al = icmp sgt i64 %.1.i.i, 0
  br i1 %i.al, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit, !llvm.loop !993

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %.lr.ph211
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.s, %.lr.ph211 ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 10 uses
  %.not165 = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.t
  br i1 %.not165, label %bb.h, label %bb.i, !prof !56

bb.h:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit
  %i.am = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425
  %i.an = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 1149) ; 0 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.606)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.am, ptr noundef nonnull align 8 dereferenceable(112) %i.ap) #27
  unreachable

bb.i:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPK11SplitNewVarSt6vectorIS2_SaIS2_EEEEiNS2_5MatchEET_SA_SA_RKT0_T1_.exit
  %i.aq = load i32, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !439 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !416
  %i.at = add i32 %i.aq, -1
  %i.au = add i32 %i.at, %i.as
  %i.av = icmp slt i32 %i.au, %i.v
  br i1 %i.av, label %.critedge, label %bb.j, !prof !56

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0142.0209, i64 12 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !427
  %i.ay = add i32 %i.v, -1
  %i.az = add i32 %i.ay, %i.ax
  %i.ba = icmp slt i32 %i.az, %i.aq
  br i1 %i.ba, label %.critedge, label %bb.k, !prof !56

.critedge:                                        ; preds = %bb.i, %bb.j
  %i.bb = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 1151) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.607)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bd) #27
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425 ; 4 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.bf, align 8, !tbaa !51
  %i.bg = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 369
  br i1 %i.bg, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i, label %bb.q

_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i:    ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50 ; 6 uses
  %.not.i10.i = icmp eq ptr %i.bi, null
  br i1 %.not.i10.i, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97, label %bb.m

bb.m:                                             ; preds = %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %.sroa.0.0.copyload.i.i.i11.i = load i16, ptr %i.bj, align 8, !tbaa !51
  %i.bk = add i16 %.sroa.0.0.copyload.i.i.i11.i, -466
  %spec.select.i.i.i = icmp ult i16 %i.bk, 6
  br i1 %spec.select.i.i.i, label %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97

_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i: ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !213 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.bm, null
  br i1 %.not.i13.i, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97, label %_ZN7AstNode2isI9AstCReset11AstNodeExprEEbPKT0_.exit.i

_ZN7AstNode2isI9AstCReset11AstNodeExprEEbPKT0_.exit.i: ; preds = %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %.sroa.0.0.copyload.i.i.i14.i = load i16, ptr %i.bn, align 8, !tbaa !51
  %.sroa.0.0.copyload.i.i.i14.fr.i = freeze i16 %.sroa.0.0.copyload.i.i.i14.i
  %i.bo = icmp eq i16 %.sroa.0.0.copyload.i.i.i14.fr.i, 108
  br i1 %i.bo, label %_ZNK17PackedVarRefEntry11backCResetpEv.exit, label %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97

_ZNK17PackedVarRefEntry11backCResetpEv.exit:      ; preds = %_ZN7AstNode2isI9AstCReset11AstNodeExprEEbPKT0_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !419
  %i.br = call noundef ptr @_ZN21SplitPackedVarVisitor15newAssignCResetEP13AstNodeAssignP6AstVar(ptr noundef nonnull %i.bi, ptr noundef %i.bq)
  call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.bi, ptr noundef %i.br)
  br label %bb.r

_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97:  ; preds = %bb.m, %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.i, %_ZN7AstNode2isI9AstCReset11AstNodeExprEEbPKT0_.exit.i, %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50 ; 5 uses
  %.not.i5.i = icmp eq ptr %i.bt, null
  br i1 %.not.i5.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %.sroa.0.0.copyload.i.i.i6.i = load i16, ptr %i.bu, align 8, !tbaa !51
  %i.bv = icmp eq i16 %.sroa.0.0.copyload.i.i.i6.i, 55
  br i1 %i.bv, label %_ZNK17PackedVarRefEntry12backSenItempEv.exit, label %bb.q

_ZNK17PackedVarRefEntry12backSenItempEv.exit:     ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !213 ; 2 uses
  %i.by = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !286
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 1, !tbaa !341
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.by, ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNK17PackedVarRefEntry12backSenItempEv.exit
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.bx, ptr noundef nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bx)
  br label %bb.r

bb.p:                                             ; preds = %_ZNK17PackedVarRefEntry12backSenItempEv.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 232) #24
  br label %bb.aq

bb.q:                                             ; preds = %bb.l, %bb.n, %_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_.exit.i97, %bb.k
  %i.ce = call noundef ptr @_ZN21SplitPackedVarVisitor11extractBitsERK17PackedVarRefEntryRK11SplitNewVar7VAccess(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0142.0209, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.0.lcssa.i.i, i8 %.083.ptr.sroa.idx)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %_ZNK17PackedVarRefEntry11backCResetpEv.exit
  %i.cf = phi i1 [ true, %_ZNK17PackedVarRefEntry11backCResetpEv.exit ], [ false, %bb.q ], [ false, %bb.o ] ; 2 uses
  %.1.i148 = phi ptr [ %i.bi, %_ZNK17PackedVarRefEntry11backCResetpEv.exit ], [ null, %bb.q ], [ null, %bb.o ] ; 3 uses
  %.181 = phi ptr [ null, %_ZNK17PackedVarRefEntry11backCResetpEv.exit ], [ %i.ce, %bb.q ], [ %i.bt, %bb.o ] ; 3 uses
  %.179 = phi i1 [ true, %_ZNK17PackedVarRefEntry11backCResetpEv.exit ], [ false, %bb.q ], [ true, %bb.o ]
  %i.cg = load i32, ptr %i.u, align 8, !tbaa !426
  %i.ch = load i32, ptr %i.aw, align 4, !tbaa !427
  %i.ci = load i32, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !439
  %i.cj = load i32, ptr %i.ar, align 4, !tbaa !416
  %i.ck = add i32 %i.ch, %i.cg
  %i.cl = add i32 %i.ci, %i.cj
  %i.cm = sub i32 %i.ck, %i.cl                    ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r
  br i1 %i.cf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit.us
  %.072204.us = phi i32 [ %i.cv, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit.us ], [ %i.cm, %.lr.ph ]
  %.sroa.0126.0202.us = phi ptr [ %i.co, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit.us ], [ %.sroa.011.0.lcssa.i.i, %.lr.ph ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0126.0202.us, i64 16 ; 3 uses
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !414
  %.not167.us = icmp eq ptr %i.co, %i.cp
  br i1 %.not167.us, label %.split.us, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit.us, !prof !56

_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit.us: ; preds = %.lr.ph.split.us
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0126.0202.us, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !419
  %i.cs = call noundef ptr @_ZN21SplitPackedVarVisitor15newAssignCResetEP13AstNodeAssignP6AstVar(ptr noundef nonnull %.1.i148, ptr noundef %i.cr)
  call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.1.i148, ptr noundef %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0126.0202.us, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !416
  %i.cv = sub nsw i32 %.072204.us, %i.cu          ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !994

._crit_edge:                                      ; preds = %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit.us, %bb.r
  %.sroa.0126.0.lcssa = phi ptr [ %.sroa.011.0.lcssa.i.i, %bb.r ], [ %i.co, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit.us ], [ %i.cy, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit ] ; 3 uses
  %.282.lcssa = phi ptr [ %.181, %bb.r ], [ %.181, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit.us ], [ %.4, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit ]
  %i.cx = load i8, ptr %i.d, align 1, !tbaa !194
  %.not166 = icmp eq i8 %i.cx, 0
  br i1 %.not166, label %bb.aj, label %bb.ah

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit
  %.072204 = phi i32 [ %i.fs, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit ], [ %i.cm, %.lr.ph ]
  %.282203 = phi ptr [ %.4, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit ], [ %.181, %.lr.ph ] ; 10 uses
  %.sroa.0126.0202 = phi ptr [ %i.cy, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit ], [ %.sroa.011.0.lcssa.i.i, %.lr.ph ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0126.0202, i64 16 ; 4 uses
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !414
  %.not167 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not167, label %.split.us, label %bb.s, !prof !56

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.da = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425
  %i.db = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 1172) ; 0 uses
  %i.dc = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.608)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.da, ptr noundef nonnull align 8 dereferenceable(112) %i.dd) #27
  unreachable

bb.s:                                             ; preds = %.lr.ph.split
  %.not.i = icmp eq ptr %.282203, null            ; 2 uses
  br i1 %.not.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.282203, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.de, align 8, !tbaa !51
  %i.df = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 55
  br i1 %i.df, label %_ZN7AstNode4castI10AstSenItemS_EEPT_PT0_.exit, label %bb.z

_ZN7AstNode4castI10AstSenItemS_EEPT_PT0_.exit:    ; preds = %bb.t
  %i.dg = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.282203, i64 88 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !286
  %i.dj = getelementptr inbounds nuw i8, ptr %.282203, i64 152
  %.sroa.0.0.copyload.i = load i8, ptr %i.dj, align 8, !tbaa !996
  %i.dk = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28
          to label %bb.u unwind label %bb.w       ; 3 uses

bb.u:                                             ; preds = %_ZN7AstNode4castI10AstSenItemS_EEPT_PT0_.exit
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !286
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0126.0202, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i8 0, ptr %4, align 1, !tbaa !341
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.dk, ptr noundef %i.dl, ptr noundef %i.dn, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.dg, i16 55, ptr noundef %i.di)
          to label %.noexc unwind label %.thread160

.noexc:                                           ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV10AstSenItem, i64 16), ptr %i.dg, align 8, !tbaa !43
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 152
  store i8 %.sroa.0.0.copyload.i, ptr %i.do, align 8, !tbaa !996
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.dg, ptr noundef nonnull %i.dk)
          to label %_ZN10AstSenItemC2EP8FileLine9VEdgeTypeP11AstNodeExprS4_.exit unwind label %.thread160

_ZN10AstSenItemC2EP8FileLine9VEdgeTypeP11AstNodeExprS4_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.282203, ptr noundef nonnull %i.dg)
  br label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit

bb.w:                                             ; preds = %_ZN7AstNode4castI10AstSenItemS_EEPT_PT0_.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.thread160:                                       ; preds = %.noexc, %bb.v
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 232) #24
  br label %bb.y

bb.y:                                             ; preds = %.thread160, %bb.w, %bb.x
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.x ], [ %lpad.thr_comm, %.thread160 ], [ %i.dp, %bb.w ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 160) #24
  br label %bb.aq

bb.z:                                             ; preds = %bb.s, %bb.t
  %i.dq = call noundef ptr @_ZN21SplitPackedVarVisitor11extractBitsERK17PackedVarRefEntryRK11SplitNewVar7VAccess(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0142.0209, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 %.083.ptr.sroa.idx) ; 2 uses
  %i.dr = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28 ; 16 uses
  %i.ds = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !286
  br i1 %.not.i, label %_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %.282203, i64 64
  %.sroa.0.0.copyload.i.i.i101 = load i16, ptr %i.dv, align 8, !tbaa !51
  %i.dw = add i16 %.sroa.0.0.copyload.i.i.i101, -371
  %spec.select.i.i = icmp ult i16 %i.dw, -269
  br i1 %spec.select.i.i, label %bb.ab, label %_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit, !prof !56

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.282203, i64 64
  %i.dy = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.25, i32 noundef 1063)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc102:                                        ; preds = %bb.ab
  %i.dz = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc103:                                        ; preds = %.noexc102
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.47, i64 noundef 55)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc104:                                        ; preds = %.noexc103
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.dx, align 8, !tbaa !51
  %i.eb = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !250
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %i.ed)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc105:                                        ; preds = %.noexc104
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc106:                                        ; preds = %.noexc105
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.282203, ptr noundef nonnull align 8 dereferenceable(112) %i.ee) #27
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc107:                                        ; preds = %.noexc106
  unreachable

_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit:     ; preds = %bb.aa, %bb.z
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.dr, i16 202, ptr noundef %i.du)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.dr, align 8, !tbaa !43
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 152
  store i64 0, ptr %i.eg, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.dr, ptr noundef %i.dq)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %.noexc109
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.dr, ptr noundef %.282203)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %.noexc110
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV9AstConcat, i64 16), ptr %i.dr, align 8, !tbaa !43
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 72 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !41 ; 3 uses
  %.not.i108 = icmp eq ptr %i.ei, null
  br i1 %.not.i108, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc111
  %i.ej = getelementptr inbounds nuw i8, ptr %.282203, i64 72 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !41
  %.not13.i = icmp eq ptr %i.ek, null
  br i1 %.not13.i, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !43
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 432
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(162) %i.ei)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !12

.noexc112:                                        ; preds = %bb.ad
  br i1 %i.eo, label %.noexc.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc112
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !41 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 432
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef zeroext i1 %i.es(ptr noundef nonnull align 8 dereferenceable(162) %i.ep)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !12

.noexc113:                                        ; preds = %bb.ae
  br i1 %i.et, label %.noexc.i, label %.noexc15.i

.noexc.i:                                         ; preds = %.noexc113, %.noexc112
  %i.eu = load ptr, ptr %i.eh, align 8, !tbaa !41
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 152
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !417
  %i.ex = load ptr, ptr %i.ej, align 8, !tbaa !41
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 152
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !417
  %i.fa = add nsw i32 %i.ez, %i.ew                ; 2 uses
  %i.fb = invoke noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(160) %i.dr, i32 noundef %i.fa, i32 noundef %i.fa, i8 0)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc114:                                        ; preds = %.noexc.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dr, i64 72 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !41
  %.not.i.i.i = icmp eq ptr %i.fd, %i.fb
  br i1 %.not.i.i.i, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.af

bb.af:                                            ; preds = %.noexc114
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !41
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i

.noexc15.i:                                       ; preds = %.noexc113
  %i.fe = load ptr, ptr %i.eh, align 8, !tbaa !41
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 152
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !417
  %i.fh = load ptr, ptr %i.ej, align 8, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 152
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !417
  %i.fk = add nsw i32 %i.fj, %i.fg                ; 2 uses
  %i.fl = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(160) %i.dr, i32 noundef %i.fk, i32 noundef %i.fk, i8 0)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc115:                                        ; preds = %.noexc15.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dr, i64 72 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !41
  %.not.i.i14.i = icmp eq ptr %i.fn, %i.fl
  br i1 %.not.i.i14.i, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.ag

bb.ag:                                            ; preds = %.noexc115
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !41
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i

_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i: ; preds = %bb.ag, %bb.af
  %i.fo = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !88
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !88
  br label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc15.i, %.noexc.i, %bb.ae, %bb.ad, %.noexc110, %.noexc109, %_ZN7AstNode2asI11AstNodeExprS_EEPT_PT0_.exit, %.noexc103, %.noexc105, %.noexc106, %.noexc104, %.noexc102, %bb.ab
  %lpad.loopexit.split-lp343 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 160) #24
  br label %bb.aq

_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit: ; preds = %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i, %.noexc115, %.noexc114, %bb.ac, %.noexc111, %_ZN10AstSenItemC2EP8FileLine9VEdgeTypeP11AstNodeExprS4_.exit
  %.4 = phi ptr [ %i.dr, %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i ], [ %i.dg, %_ZN10AstSenItemC2EP8FileLine9VEdgeTypeP11AstNodeExprS4_.exit ], [ %i.dr, %.noexc111 ], [ %i.dr, %bb.ac ], [ %i.dr, %.noexc114 ], [ %i.dr, %.noexc115 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0126.0202, i64 20
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !416
  %i.fs = sub nsw i32 %.072204, %i.fr             ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.split, label %._crit_edge, !llvm.loop !994

bb.ah:                                            ; preds = %._crit_edge
  %i.fu = load i64, ptr %i.e, align 4
  %i.fv = and i64 %i.fu, 40960
  %or.cond.not = icmp eq i64 %i.fv, 0
  br i1 %or.cond.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fw = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425
  call void @_ZN21SplitPackedVarVisitor17connectPortAndVarERKSt6vectorI11SplitNewVarSaIS1_EEP6AstVarP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %0, ptr noundef %i.fw)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %._crit_edge
  br i1 %.179, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.fx, ptr noundef %.282.lcssa)
  %i.fy = load ptr, ptr %.sroa.0142.0209, align 8, !tbaa !425
  call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.fy)
  store ptr null, ptr %.sroa.0142.0209, align 8, !tbaa !315
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.cf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fz = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %.1.i148, ptr noundef null)
  call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.fz)
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.ga = load i32, ptr %.sroa.0126.0.lcssa, align 8, !tbaa !439
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0126.0.lcssa, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !416
  %i.gd = add i32 %i.ga, -1
  %i.ge = add i32 %i.gd, %i.gc
  %i.gf = load i32, ptr %i.u, align 8, !tbaa !426
  %i.gg = load i32, ptr %i.aw, align 4, !tbaa !427
  %i.gh = add i32 %i.gf, -1
  %i.gi = add i32 %i.gh, %i.gg
  %.not90 = icmp slt i32 %i.ge, %i.gi
  br i1 %.not90, label %bb.ao, label %bb.ap, !prof !56

bb.ao:                                            ; preds = %bb.an
end_hunk_0
