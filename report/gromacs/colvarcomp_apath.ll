Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_apath?download=true
inline.NumInlined: 1936
inline.NumDeleted: 503
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6colvar6aspath4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 0, ptr %i.bc, align 8, !tbaa !21
  store i8 0, ptr %i.av, align 8, !tbaa !20
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.bf, ptr %6, align 8, !tbaa !15
  store i8 10, ptr %i.bf, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.bg, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.bh, align 1, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !21, !noalias !222 ; 4 uses
  %i.bk = add i64 %i.bj, 1                        ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !19, !noalias !222 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.bo = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !20, !noalias !222
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61
  %i.bq = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61 ]
  %i.br = icmp ule i64 %i.bk, %i.bq
  %.not.i56 = icmp ugt i64 %i.bk, 15
  %or.cond = or i1 %i.br, %.not.i56
  br i1 %or.cond, label %bb.i, label %.critedge.i57

.critedge.i57:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bl, i64 noundef %i.bj)
          to label %.noexc62 unwind label %bb.r   ; 5 uses

.noexc62:                                         ; preds = %.critedge.i57
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bt, ptr %2, align 8, !tbaa !15, !alias.scope !222
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !19 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i58

bb.h:                                             ; preds = %.noexc62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !21 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i58: ; preds = %.noexc62
  store ptr %i.bu, ptr %2, align 8, !tbaa !19, !alias.scope !222
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !20
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !20, !alias.scope !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i58, %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !21, !alias.scope !222
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !19
  store i64 0, ptr %i.cc, align 8, !tbaa !21
  store i8 0, ptr %i.bv, align 8, !tbaa !20
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50
  %i.cf = icmp eq i64 %i.bj, 4611686018427387903
  br i1 %i.cf, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i51

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc63 unwind label %bb.r

.noexc63:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i51: ; preds = %bb.i
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.bf, i64 noundef 1)
          to label %.noexc64 unwind label %bb.r   ; 5 uses

.noexc64:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i51
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ch, ptr %2, align 8, !tbaa !15, !alias.scope !222
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i52

bb.k:                                             ; preds = %.noexc64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !21 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i52: ; preds = %.noexc64
  store ptr %i.ci, ptr %2, align 8, !tbaa !19, !alias.scope !222
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !20
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !20, !alias.scope !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i52, %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !21, !alias.scope !222
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !19
  store i64 0, ptr %i.cq, align 8, !tbaa !21
  store i8 0, ptr %i.cj, align 8, !tbaa !20
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 10)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65
  %i.ct = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.l
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !20
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %i.cy = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bf
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.da = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.dc = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bm
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.de = load i64, ptr %i.bm, align 8, !tbaa !20
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.dg = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !20
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.dl = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.f
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.dn = load i64, ptr %i.f, align 8, !tbaa !20
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store double -1.000000e+00, ptr %i.c, align 8, !tbaa !23
  %i.dp = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRdRKdNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !100
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1144
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !107 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.du = uitofp nneg i64 %i.dt to double
  %i.dv = fdiv double 1.000000e+00, %i.du
  %sqrt = call double @llvm.sqrt.f64(double %i.dv) ; 9 uses
  %i.dw = icmp ugt i64 %i.dt, 1152921504606846975
  br i1 %i.dw, label %bb.m, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21
          to label %.noexc80 unwind label %bb.t

.noexc80:                                         ; preds = %bb.m
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dx = shl nuw nsw i64 %i.dt, 3                ; 3 uses
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #22
          to label %.noexc81 unwind label %bb.t   ; 5 uses

.noexc81:                                         ; preds = %bb.n
  store ptr %i.dy, ptr %7, align 8, !tbaa !108
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dt
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !109
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx ; 3 uses
  %i.ec = add nsw i64 %i.dx, -8                   ; 2 uses
  %i.ed = lshr exact i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1
  %xtraiter = and i64 %i.ee, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc81, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.07.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.dy, %.noexc81 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc81 ]
  store double %sqrt, ptr %.07.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !216

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc81
  %.07.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dy, %.noexc81 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.eg = icmp ult i64 %i.ec, 56
  br i1 %i.eg, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store double %sqrt, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8
  store double %sqrt, ptr %i.eh, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 16
  store double %sqrt, ptr %i.ei, align 8, !tbaa !23
  %i.ej = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 24
  store double %sqrt, ptr %i.ej, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 32
  store double %sqrt, ptr %i.ek, align 8, !tbaa !23
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 40
  store double %sqrt, ptr %i.el, align 8, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 48
  store double %sqrt, ptr %i.em, align 8, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 56
  store double %sqrt, ptr %i.en, align 8, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.eo, %i.eb
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ep, align 8, !tbaa !112
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 5 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !114 ; 3 uses
  %.not179 = icmp eq ptr %i.er, null
  br i1 %.not179, label %bb.u, label %_ZNSt10unique_ptrI18ArithmeticPathImplSt14default_deleteIS0_EE5resetEPS0_.exit

_ZNSt10unique_ptrI18ArithmeticPathImplSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %.loopexit
  store ptr null, ptr %i.eq, align 8, !tbaa !114
  call void @_ZN18ArithmeticPathImplD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.er) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef 176) #20
  br label %bb.u

bb.o:                                             ; preds = %.noexc.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.p:                                             ; preds = %.noexc
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.f, %.critedge.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i51, %bb.j, %.critedge.i57
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.s
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !20
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.r ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ew, %bb.s ] ; 2 uses
  %i.fc = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bf
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.fe = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fg = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.bm
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fi = load i64, ptr %i.bm, align 8, !tbaa !20
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %i.fk = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !20
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.p ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.fp = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.f
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.fr = load i64, ptr %i.f, align 8, !tbaa !20
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.o
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.o ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.as

bb.t:                                             ; preds = %bb.n, %bb.m
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit172

bb.u:                                             ; preds = %_ZNSt10unique_ptrI18ArithmeticPathImplSt14default_deleteIS0_EE5resetEPS0_.exit, %.loopexit
  %i.fu = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #22
          to label %bb.v unwind label %bb.aj      ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.fv = load i64, ptr %i.l, align 8, !tbaa !115
  %i.fw = load double, ptr %i.b, align 8, !tbaa !23
  invoke void @_ZN18ArithmeticPathImplC2EmmdRKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(176) %i.fu, i64 noundef %i.dt, i64 noundef %i.fv, double noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.fx = load ptr, ptr %i.eq, align 8, !tbaa !114 ; 3 uses
  store ptr %i.fu, ptr %i.eq, align 8, !tbaa !114
  %.not.i.i.i.i97 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i97, label %_ZNSt10unique_ptrI18ArithmeticPathImplSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI18ArithmeticPathImplEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI18ArithmeticPathImplEclEPS0_.exit.i.i.i.i: ; preds = %bb.w
  call void @_ZN18ArithmeticPathImplD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.fx) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef 176) #20
end_hunk_0
begin_hunk_1_@_ZN6colvar6azpath4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.bg, ptr %6, align 8, !tbaa !15
  store i8 10, ptr %i.bg, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.bh, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.bi, align 1, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !21, !noalias !242 ; 4 uses
  %i.bl = add i64 %i.bk, 1                        ; 2 uses
  %i.bm = load ptr, ptr %3, align 8, !tbaa !19, !noalias !242 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.bp = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.bq = load i64, ptr %i.bn, align 8, !tbaa !20, !noalias !242
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61
  %i.br = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i61 ]
  %i.bs = icmp ule i64 %i.bl, %i.br
  %.not.i56 = icmp ugt i64 %i.bl, 15
  %or.cond = or i1 %i.bs, %.not.i56
  br i1 %or.cond, label %bb.i, label %.critedge.i57

.critedge.i57:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bk)
          to label %.noexc62 unwind label %bb.r   ; 5 uses

.noexc62:                                         ; preds = %.critedge.i57
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !15, !alias.scope !242
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i58

bb.h:                                             ; preds = %.noexc62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !21 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i58: ; preds = %.noexc62
  store ptr %i.bv, ptr %2, align 8, !tbaa !19, !alias.scope !242
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !20
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !20, !alias.scope !242
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i58, %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !21, !alias.scope !242
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !19
  store i64 0, ptr %i.cd, align 8, !tbaa !21
  store i8 0, ptr %i.bw, align 8, !tbaa !20
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i50
  %i.cg = icmp eq i64 %i.bk, 4611686018427387903
  br i1 %i.cg, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i51

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc63 unwind label %bb.r

.noexc63:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i51: ; preds = %bb.i
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.bg, i64 noundef 1)
          to label %.noexc64 unwind label %bb.r   ; 5 uses

.noexc64:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i51
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ci, ptr %2, align 8, !tbaa !15, !alias.scope !242
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !19 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i52

bb.k:                                             ; preds = %.noexc64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !21 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i52: ; preds = %.noexc64
  store ptr %i.cj, ptr %2, align 8, !tbaa !19, !alias.scope !242
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !20
  store i64 %i.cq, ptr %i.ci, align 8, !tbaa !20, !alias.scope !242
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i52, %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !21, !alias.scope !242
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !19
  store i64 0, ptr %i.cr, align 8, !tbaa !21
  store i8 0, ptr %i.ck, align 8, !tbaa !20
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i59
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 10)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65
  %i.cu = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.l
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !20
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %i.cz = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bg
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.dd = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bn
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.df = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.dh = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !20
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.dm = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.g
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.do = load i64, ptr %i.g, align 8, !tbaa !20
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 1, ptr %i.b, align 4, !tbaa !121
  call void @_ZN11colvarvalue4typeERKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(168) %i.dq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store double -1.000000e+00, ptr %i.d, align 8, !tbaa !23
  %i.dr = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRdRKdNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !100
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1144
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !107 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dw = uitofp nneg i64 %i.dv to double
  %i.dx = fdiv double 1.000000e+00, %i.dw
  %sqrt = call double @llvm.sqrt.f64(double %i.dx) ; 9 uses
  %i.dy = icmp ugt i64 %i.dv, 1152921504606846975
  br i1 %i.dy, label %bb.m, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21
          to label %.noexc80 unwind label %bb.t

.noexc80:                                         ; preds = %bb.m
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dz = shl nuw nsw i64 %i.dv, 3                ; 3 uses
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #22
          to label %.noexc81 unwind label %bb.t   ; 5 uses

.noexc81:                                         ; preds = %bb.n
  store ptr %i.ea, ptr %7, align 8, !tbaa !108
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dv
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !109
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz ; 3 uses
  %i.ee = add nsw i64 %i.dz, -8                   ; 2 uses
  %i.ef = lshr exact i64 %i.ee, 3
  %i.eg = add nuw nsw i64 %i.ef, 1
  %xtraiter = and i64 %i.eg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc81, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.07.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ea, %.noexc81 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc81 ]
  store double %sqrt, ptr %.07.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !236

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc81
  %.07.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ea, %.noexc81 ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ei = icmp ult i64 %i.ee, 56
  br i1 %i.ei, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store double %sqrt, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !23
  %i.ej = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8
  store double %sqrt, ptr %i.ej, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 16
  store double %sqrt, ptr %i.ek, align 8, !tbaa !23
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 24
  store double %sqrt, ptr %i.el, align 8, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 32
  store double %sqrt, ptr %i.em, align 8, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 40
  store double %sqrt, ptr %i.en, align 8, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 48
  store double %sqrt, ptr %i.eo, align 8, !tbaa !23
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 56
  store double %sqrt, ptr %i.ep, align 8, !tbaa !23
  %i.eq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.eq, %i.ed
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.er, align 8, !tbaa !112
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 5 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !114 ; 3 uses
  %.not179 = icmp eq ptr %i.et, null
  br i1 %.not179, label %bb.u, label %_ZNSt10unique_ptrI18ArithmeticPathImplSt14default_deleteIS0_EE5resetEPS0_.exit

_ZNSt10unique_ptrI18ArithmeticPathImplSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %.loopexit
  store ptr null, ptr %i.es, align 8, !tbaa !114
  call void @_ZN18ArithmeticPathImplD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.et) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef 176) #20
  br label %bb.u

bb.o:                                             ; preds = %.noexc.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.p:                                             ; preds = %.noexc
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.f, %.critedge.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i51, %bb.j, %.critedge.i57
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit65
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.s
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !20
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.r ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ey, %bb.s ] ; 2 uses
  %i.fe = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.bg
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.fg = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fi = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.bn
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fk = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  %i.fm = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !20
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.p ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.fr = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.g
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.ft = load i64, ptr %i.g, align 8, !tbaa !20
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.o
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.o ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.as

bb.t:                                             ; preds = %bb.n, %bb.m
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit172

bb.u:                                             ; preds = %_ZNSt10unique_ptrI18ArithmeticPathImplSt14default_deleteIS0_EE5resetEPS0_.exit, %.loopexit
  %i.fw = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #22
          to label %bb.v unwind label %bb.aj      ; 4 uses

bb.v:                                             ; preds = %bb.u
  %i.fx = load i64, ptr %i.m, align 8, !tbaa !115
  %i.fy = load double, ptr %i.c, align 8, !tbaa !23
  invoke void @_ZN18ArithmeticPathImplC2EmmdRKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(176) %i.fw, i64 noundef %i.dv, i64 noundef %i.fx, double noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.fz = load ptr, ptr %i.es, align 8, !tbaa !114 ; 3 uses
  store ptr %i.fw, ptr %i.es, align 8, !tbaa !114
  %.not.i.i.i.i97 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i97, label %_ZNSt10unique_ptrI18ArithmeticPathImplSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI18ArithmeticPathImplEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI18ArithmeticPathImplEclEPS0_.exit.i.i.i.i: ; preds = %bb.w
  call void @_ZN18ArithmeticPathImplD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.fz) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 176) #20
end_hunk_1
