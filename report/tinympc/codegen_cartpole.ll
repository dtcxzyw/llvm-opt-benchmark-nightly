Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/codegen_cartpole?download=true
inline.NumInlined: 917
inline.NumDeleted: 489
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@main:bb.a
  %invariant.gep.i.4.i.i.i.i.i.i68 = getelementptr i8, ptr %i.bv, i64 32
  store <2 x double> splat (double 1.000000e+17), ptr %invariant.gep.i.4.i.i.i.i.i.i68, align 8, !tbaa !24
  %invariant.gep.i.6.i.i.i.i.i.i70 = getelementptr i8, ptr %i.bv, i64 48
  store <2 x double> splat (double 1.000000e+17), ptr %invariant.gep.i.6.i.i.i.i.i.i70, align 8, !tbaa !24
  %invariant.gep.i.8.i.i.i.i.i.i72 = getelementptr i8, ptr %i.bv, i64 64
  store double 1.000000e+17, ptr %invariant.gep.i.8.i.i.i.i.i.i72, align 8, !tbaa !24
  %i.bz = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.w, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i97

bb.w:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #20
  br label %.invoke

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i97: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.bz, ptr %2, align 8, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.cc, align 8, !tbaa !31
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 4, ptr %i.cd, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bz, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  %i.ce = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #22 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.x, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i110

bb.x:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i97
  %i.cg = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cg, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc102 unwind label %bb.ap

.noexc102:                                        ; preds = %bb.x
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i110: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i97
  store ptr %i.ce, ptr %3, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.ch, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %i.ci, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 2 uses
  %i.cj = icmp eq ptr %calloc, null
  br i1 %i.cj, label %bb.y, label %.sink.split.i108

bb.y:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i110
  %i.ck = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ck, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc112 unwind label %bb.z

.noexc112:                                        ; preds = %bb.y
  unreachable

.sink.split.i108:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i110
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %calloc, ptr %4, align 8, !tbaa !30
  store i64 4, ptr %i.cm, align 8, !tbaa !31
  store i64 1, ptr %i.cl, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %0, ptr %6, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aa unwind label %bb.aq

bb.z:                                             ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %4, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.co) #20
  br label %.body79

bb.aa:                                            ; preds = %.sink.split.i108
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %1, ptr %8, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit81 unwind label %bb.ar

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit81: ; preds = %bb.aa
  %i.cp = invoke i32 @tiny_setup(ptr noundef nonnull %i.b, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %3, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %4, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %7, double noundef 1.000000e+00, i32 noundef 4, i32 noundef 1, i32 noundef 10, i32 noundef 0)
          to label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i114 unwind label %bb.as ; 0 uses

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i114: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit81
  %i.cq = load ptr, ptr %7, align 8, !tbaa !30
  call void @free(ptr noundef %i.cq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.cr = load ptr, ptr %5, align 8, !tbaa !30
  call void @free(ptr noundef %i.cr) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.cs = load ptr, ptr %4, align 8, !tbaa !30
  call void @free(ptr noundef %i.cs) #20
  %i.ct = load ptr, ptr %3, align 8, !tbaa !30
  call void @free(ptr noundef %i.ct) #20
  %i.cu = load ptr, ptr %2, align 8, !tbaa !30
  call void @free(ptr noundef %i.cu) #20
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.cw = call noalias dereferenceable_or_null(320) ptr @malloc(i64 noundef 320) #22 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ab, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i121

bb.ab:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i114
  %i.cy = call ptr @__cxa_allocate_exception(i64 8) #20
  br label %.invoke

.invoke:                                          ; preds = %bb.w, %bb.ab
  %.sink = phi ptr [ %i.cb, %bb.w ], [ %i.cy, %bb.ab ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %.sink, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %.sink, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.ao

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i121: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i114
  store ptr %i.cw, ptr %9, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.cz, align 8, !tbaa !31
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 10, ptr %i.da, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.cw, ptr noundef nonnull align 16 dereferenceable(320) %i.x, i64 320, i1 false)
  %i.db = call noalias dereferenceable_or_null(320) ptr @malloc(i64 noundef 320) #22 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ac, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i128

bb.ac:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i121
  %i.dd = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dd, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc126 unwind label %bb.aw

.noexc126:                                        ; preds = %bb.ac
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i128: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i121
  store ptr %i.db, ptr %10, align 8, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.de, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 10, ptr %i.df, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.db, ptr noundef nonnull align 16 dereferenceable(320) %i.au, i64 320, i1 false)
  %i.dg = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #22 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ad, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i135

bb.ad:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i128
  %i.di = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.di, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc133 unwind label %bb.ax

.noexc133:                                        ; preds = %bb.ad
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i135: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i128
  store ptr %i.dg, ptr %11, align 8, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.dj, align 8, !tbaa !31
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 9, ptr %i.dk, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dg, ptr noundef nonnull align 8 dereferenceable(72) %i.br, i64 72, i1 false)
  %i.dl = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #22 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i135
  %i.dn = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dn, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc140 unwind label %bb.ay

.noexc140:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i135
  store ptr %i.dl, ptr %12, align 8, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.do, align 8, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 9, ptr %i.dp, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dl, ptr noundef nonnull align 8 dereferenceable(72) %i.bv, i64 72, i1 false)
  %i.dq = invoke i32 @tiny_set_bound_constraints(ptr noundef %i.cv, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ag unwind label %bb.az     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.dr = load ptr, ptr %12, align 8, !tbaa !30
  call void @free(ptr noundef %i.dr) #20
  %i.ds = load ptr, ptr %11, align 8, !tbaa !30
  call void @free(ptr noundef %i.ds) #20
  %i.dt = load ptr, ptr %10, align 8, !tbaa !30
  call void @free(ptr noundef %i.dt) #20
  %i.du = load ptr, ptr %9, align 8, !tbaa !30
  call void @free(ptr noundef %i.du) #20
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt10filesystem8absoluteERKNS_7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) @output_dir_relative)
          to label %bb.ah unwind label %bb.bd

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.dw = load ptr, ptr %14, align 8, !tbaa !16, !noalias !52 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !18, !noalias !52 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.dz, ptr %13, align 8, !tbaa !12, !alias.scope !52
  %i.ea = icmp eq ptr %i.dw, null
  %i.eb = icmp ne i64 %i.dy, 0
  %or.cond.i.i.i = and i1 %i.ea, %i.eb
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.ai

.noexc.i:                                         ; preds = %bb.ah
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc unwind label %bb.be

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !52
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !14, !noalias !52
  %i.ec = icmp ugt i64 %i.dy, 15
  br i1 %i.ec, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.ai
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc86 unwind label %bb.be  ; 2 uses

.noexc86:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ed, ptr %13, align 8, !tbaa !16, !alias.scope !52
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !14, !noalias !52
  store i64 %i.ee, ptr %i.dz, align 8, !tbaa !17, !alias.scope !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc86, %bb.ai
  %i.ef = phi ptr [ %i.ed, %.noexc86 ], [ %i.dz, %bb.ai ] ; 2 uses
  switch i64 %i.dy, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.eg = load i8, ptr %i.dw, align 1, !tbaa !17
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !17
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr align 1 %i.dw, i64 %i.dy, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !14, !noalias !52 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !18, !alias.scope !52
  %i.ej = load ptr, ptr %13, align 8, !tbaa !16, !alias.scope !52
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !52
  %i.el = load ptr, ptr %13, align 8, !tbaa !16
  %i.em = invoke i32 @tiny_codegen(ptr noundef %i.dv, ptr noundef %i.el, i32 noundef 0)
          to label %bb.am unwind label %bb.bf     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.en = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dz
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  %i.ep = load i64, ptr %i.dz, align 8, !tbaa !17
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull %i.es) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.et = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !17
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @free(ptr noundef nonnull %i.bv) #20
  call void @free(ptr noundef nonnull %i.br) #20
  call void @free(ptr noundef nonnull %i.au) #20
  call void @free(ptr noundef nonnull %i.x) #20
  %i.ey = load ptr, ptr %1, align 8, !tbaa !27
  call void @free(ptr noundef %i.ey) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ez = load ptr, ptr %0, align 8, !tbaa !27
  call void @free(ptr noundef %i.ez) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  call void @free(ptr noundef nonnull %i.f) #20
  call void @free(ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 0

bb.ao:                                            ; preds = %.invoke
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ap:                                            ; preds = %bb.x
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aq:                                            ; preds = %.sink.split.i108
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ar:                                            ; preds = %bb.aa
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit81
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %7, align 8, !tbaa !30
  call void @free(ptr noundef %i.ff) #20
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.as ], [ %i.fd, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.fg = load ptr, ptr %5, align 8, !tbaa !30
  call void @free(ptr noundef %i.fg) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.fc, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.fh = load ptr, ptr %4, align 8, !tbaa !30
  call void @free(ptr noundef %i.fh) #20
  br label %.body79

.body79:                                          ; preds = %bb.z, %bb.au
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.au ], [ %i.cn, %bb.z ]
  %i.fi = load ptr, ptr %3, align 8, !tbaa !30
  call void @free(ptr noundef %i.fi) #20
  br label %bb.av

bb.av:                                            ; preds = %.body79, %bb.ap
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body79 ], [ %i.fb, %bb.ap ]
  %i.fj = load ptr, ptr %2, align 8, !tbaa !30
  call void @free(ptr noundef %i.fj) #20
  br label %bb.bh

bb.aw:                                            ; preds = %bb.ac
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ax:                                            ; preds = %bb.ad
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ae
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.af
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %12, align 8, !tbaa !30
  call void @free(ptr noundef %i.fo) #20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn29 = phi { ptr, i32 } [ %i.fn, %bb.az ], [ %i.fm, %bb.ay ]
  %i.fp = load ptr, ptr %11, align 8, !tbaa !30
  call void @free(ptr noundef %i.fp) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.ba ], [ %i.fl, %bb.ax ]
  %i.fq = load ptr, ptr %10, align 8, !tbaa !30
  call void @free(ptr noundef %i.fq) #20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.aw
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.bb ], [ %i.fk, %bb.aw ]
  %i.fr = load ptr, ptr %9, align 8, !tbaa !30
  call void @free(ptr noundef %i.fr) #20
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ag
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %.noexc.i.i.i, %.noexc.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.bf:                                            ; preds = %bb.al
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.dz
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.bf
  %i.fx = load i64, ptr %i.dz, align 8, !tbaa !17
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.be
  %.pn33 = phi { ptr, i32 } [ %i.ft, %bb.be ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.fu, %bb.bf ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #20
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.bd
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.fs, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bc, %bb.av, %bb.ao
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %bb.bg ], [ %.pn29.pn.pn, %bb.bc ], [ %i.fa, %bb.ao ], [ %.pn.pn.pn.pn, %bb.av ]
  call void @free(ptr noundef nonnull %i.bv) #20
  br label %.body74

.body74:                                          ; preds = %bb.v, %bb.bh
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn, %bb.bh ], [ %i.by, %bb.v ]
  call void @free(ptr noundef nonnull %i.br) #20
  br label %.body63

.body63:                                          ; preds = %bb.s, %.body74
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn, %.body74 ], [ %i.bu, %bb.s ]
  call void @free(ptr noundef nonnull %i.au) #20
  br label %.body59

.body59:                                          ; preds = %bb.p, %.body63
  %.pn33.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn, %.body63 ], [ %i.ax, %bb.p ]
  call void @free(ptr noundef nonnull %i.x) #20
end_hunk_0
begin_hunk_1_@_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #22 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !31
  store i64 %3, ptr %i.c, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 7 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %i.c
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.g = mul nsw i64 %i.c, %i.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.c, i64 noundef %i.c)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.e

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 7 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.l = sdiv i64 9223372036854775807, %i.j
  %i.m = icmp sgt i64 %i.j, %i.l
  br i1 %i.m, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i

.invoke:                                          ; preds = %bb.c, %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.c, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.o = mul nsw i64 %i.j, %i.j
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.j, i64 noundef %i.j)
          to label %.noexc6 unwind label %bb.e

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %.invoke, %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !30
  call void @free(ptr noundef %i.q) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  %.not = icmp eq i64 %i.e, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not11 = icmp eq i64 %i.g, %i.c
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sdiv i64 9223372036854775807, %i.c
  %i.j = icmp sgt i64 %i.c, %i.i
  br i1 %i.j, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  %i.l = mul nsw i64 %i.c, %i.c
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.c, i64 noundef %i.c)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !31
  %.pre13 = load i64, ptr %i.f, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = phi i64 [ %i.c, %bb.a ], [ %.pre13, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 2 uses
  %i.n = phi i64 [ %i.c, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 7 uses
  %i.o = mul nsw i64 %i.m, %i.n                   ; 2 uses
  %i.p = icmp slt i64 %i.o, 1
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !30  ; 6 uses
  br i1 %i.p, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.e
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.pre14, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !24
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit: ; preds = %bb.e, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i
  %i.q = load ptr, ptr %1, align 8, !tbaa !35, !nonnull !36, !align !37
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 5 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.m, i64 %i.n) ; 4 uses
  %i.s = icmp sgt i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %xtraiter = and i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.t = icmp ult i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.u = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i, %i.n
  %i.v = getelementptr [8 x i8], ptr %.pre14, i64 %.05.i.i.i.i.i.i.i.i
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !24
  store double %i.y, ptr %i.w, align 8, !tbaa !24
  %i.z = or disjoint i64 %.05.i.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.aa = mul nuw nsw i64 %i.z, %i.n
  %i.ab = getelementptr [8 x i8], ptr %.pre14, i64 %i.z
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.z
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
  store double %i.ae, ptr %i.ac, align 8, !tbaa !24
  %i.af = or disjoint i64 %.05.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.ag = mul nuw nsw i64 %i.af, %i.n
  %i.ah = getelementptr [8 x i8], ptr %.pre14, i64 %i.af
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.af
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !24
  store double %i.ak, ptr %i.ai, align 8, !tbaa !24
  %i.al = or disjoint i64 %.05.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.am = mul nuw nsw i64 %i.al, %i.n
  %i.an = getelementptr [8 x i8], ptr %.pre14, i64 %i.al
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.al
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !24
  store double %i.aq, ptr %i.ao, align 8, !tbaa !24
  %i.ar = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !53

_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ar, %_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.as = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.epil, %i.n
  %i.at = getelementptr [8 x i8], ptr %.pre14, i64 %.05.i.i.i.i.i.i.i.i.epil
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.epil
  %i.aw = load double, ptr %i.av, align 8, !tbaa !24
  store double %i.aw, ptr %i.au, align 8, !tbaa !24
  %i.ax = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !54

_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_codegen_cartpole.cpp() #14 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5Eigen12placeholdersL4lastE) ; 0 uses
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN5Eigen12placeholdersL6lastp1E) ; 0 uses
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5Eigen12placeholdersL3allE) ; 0 uses
  tail call void @_ZNSt10filesystem7__cxx114pathC2IA41_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) @output_dir_relative, ptr noundef nonnull align 1 dereferenceable(41) @.str, i8 noundef zeroext 2)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10filesystem7__cxx114pathD2Ev, ptr nonnull @output_dir_relative, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !5, i64 16}
!16 = !{!15, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !13, i64 8}
!19 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"vtable pointer", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 double", !9, i64 0}
!26 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !25, i64 0, !13, i64 8}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !13, i64 8}
!29 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !25, i64 0, !13, i64 8, !13, i64 16}
!30 = !{!29, !25, i64 0}
!31 = !{!29, !13, i64 8}
!32 = !{!29, !13, i64 16}
!33 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !9, i64 0}
!34 = !{!"_ZTSN5Eigen15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{}
!37 = !{i64 8}
!42 = !{!9, !9, i64 0}
!46 = distinct !{!46, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!47 = distinct !{!47, !46, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!48 = !{!47}
!49 = distinct !{!49, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!50 = distinct !{!50, !49, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!51 = !{!50}
!52 = !{!50, !47}
!53 = distinct !{!53, !55}
!54 = distinct !{!54, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
