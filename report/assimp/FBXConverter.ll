begin_hunk_0
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit: ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ab
  %i.ek = phi i1 [ false, %bb.ad ], [ true, %bb.ag ], [ false, %bb.af ], [ false, %bb.ab ]
  %.2.i = phi float [ 0.000000e+00, %bb.ad ], [ %i.ej, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ab ]
  %i.el = load ptr, ptr %13, align 8              ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dw
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
end_hunk_0
begin_hunk_1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347: ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.ca
  %i.md = phi i1 [ false, %bb.cc ], [ true, %bb.cf ], [ false, %bb.ce ], [ false, %bb.ca ]
  %.2.i344 = phi float [ 0.000000e+00, %bb.cc ], [ %i.mc, %bb.cf ], [ 0.000000e+00, %bb.ce ], [ 0.000000e+00, %bb.ca ]
  %i.me = load ptr, ptr %22, align 8              ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.lm
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
end_hunk_1
begin_hunk_2
define hidden void @_ZN6Assimp3FBX12FBXConverter14GetKeyTimeListERKSt6vectorISt5tupleIJSt10shared_ptrIS2_IlSaIlEEES4_IS2_IfSaIfEEEjEESaISB_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.562") align 8 captures(none) initializes((0, 24)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.311", align 8   ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %2, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3

_ZNSt6vectorIlSaIlEE7reserveEm.exit:              ; preds = %.thread, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, %bb.b
  %i.v = phi ptr [ %i.g, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ %i.g, %bb.b ], [ %i.e, %.thread ] ; 3 uses
  %.promoted88 = phi ptr [ %i.j, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.thread ] ; 4 uses
  %.promoted = phi ptr [ %i.k, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4
  %.not132 = icmp eq ptr %i.d, %i.b
  br i1 %.not132, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.w = ptrtoint ptr %i.d to i64
end_hunk_3
begin_hunk_4
  %.pre109 = sub i64 %.pre106, %.pre107
  %.pre111 = sdiv exact i64 %.pre109, 40
  %i.aa = icmp eq ptr %.pre, %.pre102
  %i.ab = call i64 @llvm.umax.i64(i64 %.pre111, i64 1)
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge101
  %.pre-phi112 = phi i64 [ %i.ab, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge101 ], [ 1, %_ZNSt6vectorIlSaIlEE7reserveEm.exit ] ; 2 uses
  %.not92 = phi i1 [ %i.aa, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge101 ], [ true, %_ZNSt6vectorIlSaIlEE7reserveEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not92, label %._crit_edge79.thread, label %.lr.ph78

.lr.ph78.loopexit:                                ; preds = %.critedge
  br label %.lr.ph78, !llvm.loop !388

.lr.ph78:                                         ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %.lr.ph78.loopexit
  %i.ac = phi ptr [ %i.bs, %.lr.ph78.loopexit ], [ %.promoted, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ] ; 5 uses
  %i.ad = phi ptr [ %i.br, %.lr.ph78.loopexit ], [ %.promoted88, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ] ; 10 uses
  %i.ae = phi ptr [ %i.bq, %.lr.ph78.loopexit ], [ %.promoted88, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ] ; 6 uses
  %i.af = load ptr, ptr %2, align 8
  %i.ag = load ptr, ptr %3, align 8
  br label %bb.e
end_hunk_4
begin_hunk_5
_ZNSt6vectorIlSaIlEE2atEm.exit46:                 ; preds = %bb.f, %bb.e
  %.1 = phi i64 [ %.06875, %bb.e ], [ %spec.select, %bb.f ] ; 6 uses
  %i.az = add nuw i64 %.03276, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %.pre-phi112
  br i1 %exitcond.not, label %._crit_edge79, label %bb.e, !llvm.loop !389

bb.g:                                             ; preds = %._crit_edge79
end_hunk_5
begin_hunk_6
.critedge:                                        ; preds = %.lr.ph82, %.lr.ph82.preheader, %..critedge.loopexit_crit_edge, %.lr.ph85
  %i.df = phi ptr [ %i.bt, %.lr.ph85 ], [ %i.da, %..critedge.loopexit_crit_edge ], [ %i.bt, %.lr.ph82.preheader ], [ %i.da, %.lr.ph82 ]
  %i.dg = add nuw i64 %.084, 1                    ; 2 uses
  %exitcond100.not = icmp eq i64 %i.dg, %.pre-phi112
  br i1 %exitcond100.not, label %.lr.ph78.loopexit, label %.lr.ph85, !llvm.loop !388

.loopexit71:                                      ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
end_hunk_6
begin_hunk_7
          cleanup
  br label %bb.n

._crit_edge79.thread:                             ; preds = %._crit_edge79, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.lcssa152 = phi ptr [ %.promoted88, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.ad, %._crit_edge79 ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.ac, %._crit_edge79 ]
  store ptr %.lcssa, ptr %i.v, align 1
  store ptr %.lcssa152, ptr %0, align 8
  %i.dh = load ptr, ptr %3, align 8               ; 3 uses
end_hunk_7
