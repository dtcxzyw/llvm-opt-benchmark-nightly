Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calc_verletbuf?download=true
inline.NumInlined: 1121
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z27computeEffectiveAtomDensityN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KffP10tmpi_comm_:bb.a
  %i.bx = mul nsw <4 x i64> %i.bt, %i.bt
  %i.by = add <4 x i64> %i.bu, %vec.phi           ; 2 uses
  %i.bz = add <4 x i64> %i.bv, %vec.phi20         ; 2 uses
  %i.ca = add <4 x i64> %i.bw, %vec.phi21         ; 2 uses
  %i.cb = add <4 x i64> %i.bx, %vec.phi22         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.bz, %i.by
  %bin.rdx26 = add <4 x i64> %i.ca, %bin.rdx
  %bin.rdx27 = add <4 x i64> %i.cb, %bin.rdx26
  %i.cd = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx27) ; 3 uses
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph94.i.preheader, label %vec.epilog.ph, !prof !264

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.cd, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.bi, 9223372036854775804   ; 3 uses
  %i.ce = shl i64 %n.vec28, 2
  %i.cf = getelementptr i8, ptr %.sroa.075.0.i, i64 %i.ce
  %i.cg = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi30 = phi <4 x i64> [ %i.cg, %vec.epilog.ph ], [ %i.ck, %vec.epilog.vector.body ]
  %i.ch = shl i64 %index29, 2
  %next.gep31 = getelementptr i8, ptr %.sroa.075.0.i, i64 %i.ch
  %wide.load32 = load <4 x i32>, ptr %next.gep31, align 4, !tbaa !28
  %i.ci = sext <4 x i32> %wide.load32 to <4 x i64> ; 2 uses
  %i.cj = mul nsw <4 x i64> %i.ci, %i.ci
  %i.ck = add <4 x i64> %i.cj, %vec.phi30         ; 2 uses
  %index.next33 = add nuw i64 %index29, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !262

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cm = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ck) ; 2 uses
  %cmp.n34 = icmp eq i64 %i.bi, %n.vec28
  br i1 %cmp.n34, label %._crit_edge.loopexit.i, label %.lr.ph94.i.preheader

.lr.ph94.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03893.i.ph = phi i64 [ 0, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  %.sroa.057.092.i.ph = phi ptr [ %.sroa.075.0.i, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  br label %.lr.ph94.i

bb.m:                                             ; preds = %.noexc5.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %reass.sub.fr.i.i) #27
  br label %.body.i

bb.n:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.061.090.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.dj, %bb.n ] ; 3 uses
  %i.co = load float, ptr %.sroa.061.090.i, align 4, !tbaa !27
  %i.cp = fmul float %i.t, %i.co
  %i.cq = fptosi float %i.cp to i32               ; 2 uses
  %i.cr = icmp eq i32 %i.q, %i.cq
  %spec.select.i = select i1 %i.cr, i32 %i.az, i32 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.061.090.i, i64 4
  %i.ct = load <2 x float>, ptr %i.cs, align 4, !tbaa !27
  %i.cu = fmul <2 x float> %i.bd, %i.ct           ; 2 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  %i.cw = fptosi float %i.cv to i32               ; 2 uses
  %i.cx = icmp eq i32 %i.z, %i.cw
  %.sroa.5.0.i = select i1 %i.cx, i32 %i.ba, i32 %i.cw
  %i.cy = extractelement <2 x float> %i.cu, i64 1
  %i.cz = fptosi float %i.cy to i32               ; 2 uses
  %i.da = icmp eq i32 %i.ai, %i.cz
  %.sroa.8.0.i = select i1 %i.da, i32 %i.bb, i32 %i.cz
  %i.db = mul nsw i32 %spec.select.i, %i.z
  %i.dc = add nsw i32 %i.db, %.sroa.5.0.i
  %i.dd = mul nsw i32 %i.dc, %i.ai
  %i.de = add nsw i32 %i.dd, %.sroa.8.0.i
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.i, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !28
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !28
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.061.090.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.dj, %scevgep.i.i.i
  br i1 %.not.i, label %.preheader.i, label %bb.n

._crit_edge.loopexit.i:                           ; preds = %.lr.ph94.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i64 [ %i.cm, %vec.epilog.middle.block ], [ %i.cd, %middle.block ], [ %i.dq, %.lr.ph94.i ]
  %i.dk = uitofp nneg i64 %.lcssa to double
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit53.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit53.i: ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.038.lcssa.i = phi double [ 0.000000e+00, %.preheader.i ], [ %i.dk, %._crit_edge.loopexit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %reass.sub.fr.i.i) #27
  %.not.i.i.i54.i = icmp eq ptr %.sroa.075.0.i, null
  br i1 %.not.i.i.i54.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit53.i
  %i.dl = ptrtoint ptr %.sroa.075.0.i to i64
  %i.dm = sub i64 %.sroa.12.0.i, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0.i, i64 noundef %i.dm) #27
  br label %bb.q

.lr.ph94.i:                                       ; preds = %.lr.ph94.i.preheader, %.lr.ph94.i
  %.03893.i = phi i64 [ %i.dq, %.lr.ph94.i ], [ %.03893.i.ph, %.lr.ph94.i.preheader ]
  %.sroa.057.092.i = phi ptr [ %i.dr, %.lr.ph94.i ], [ %.sroa.057.092.i.ph, %.lr.ph94.i.preheader ] ; 2 uses
  %i.dn = load i32, ptr %.sroa.057.092.i, align 4, !tbaa !28
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = mul nsw i64 %i.do, %i.do
  %i.dq = add nuw nsw i64 %i.dp, %.03893.i        ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.057.092.i, i64 4 ; 2 uses
  %.not85.i = icmp eq ptr %i.dr, %.0.i.i.i.i.i.i.i.i
  br i1 %.not85.i, label %._crit_edge.loopexit.i, label %.lr.ph94.i, !llvm.loop !263

.body.i:                                          ; preds = %bb.m, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i
  %.pn.i = phi { ptr, i32 } [ %i.be, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i ], [ %i.cn, %bb.m ]
  %.not.i.i.i55.i = icmp eq ptr %.sroa.075.0.i, null
  br i1 %.not.i.i.i55.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit56.i, label %bb.p

bb.p:                                             ; preds = %.body.i
  %i.ds = ptrtoint ptr %.sroa.075.0.i to i64
  %i.dt = sub i64 %.sroa.12.0.i, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0.i, i64 noundef %i.dt) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit56.i

_ZNSt6vectorIiSaIiEED2Ev.exit56.i:                ; preds = %bb.p, %.body.i
  resume { ptr, i32 } %.pn.i

bb.q:                                             ; preds = %bb.o, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit53.i
  %i.du = uitofp nneg i64 %i.as to double
  %i.dv = fdiv double %.038.lcssa.i, %i.du
  %i.dw = fpext float %i.t to double
  %i.dx = fmul double %i.dv, %i.dw
  %i.dy = fpext float %i.ac to double
  %i.dz = fmul double %i.dx, %i.dy
  %i.ea = fpext float %i.al to double
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = fptrunc double %i.eb to float           ; 2 uses
  store float %i.ec, ptr %i.b, align 4, !tbaa !27
  br i1 %.not, label %bb.r, label %.thread8

.thread8:                                         ; preds = %bb.b, %bb.q
  call void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef 4, ptr noundef nonnull %i.b, ptr noundef nonnull %4)
  %.pre = load float, ptr %i.b, align 4, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %.thread8, %bb.q
  %i.ed = phi float [ %.pre, %.thread8 ], [ %i.ec, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret float %i.ed
}

declare noundef i32 @_Z14tMPI_Comm_rankP10tmpi_comm_Pi(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_Z16put_atoms_in_box7PbcTypePA3_KfN3gmx8ArrayRefINS3_11BasicVectorIfEEEE(i32 noundef, ptr noundef, ptr, ptr) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @lroundf(float noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define noundef float @_Z20calcVerletBufferSizeRK10gmx_mtop_tfRK10t_inputrecfiifRK18VerletbufListSetup(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(888) %2, float noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7) local_unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %15 = alloca %"class.std::vector.90", align 8   ; 11 uses
  %16 = alloca %struct.pot_derivatives_t, align 4 ; 9 uses
  %17 = alloca %struct.pot_derivatives_t, align 4 ; 8 uses
  %18 = alloca %"struct.std::pair", align 4       ; 6 uses
  %19 = alloca %struct.pot_derivatives_t, align 16 ; 5 uses
  %20 = alloca %"struct.std::pair", align 4       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128
  switch i32 %i.c, label %bb.b [
    i32 0, label %bb.j
    i32 10, label %bb.j
    i32 11, label %bb.j
    i32 12, label %bb.j
    i32 9, label %bb.j
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1362) #25
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.f, %bb.h ], [ %i.e, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.g = load ptr, ptr %9, align 8, !tbaa !17     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bf

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 348 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !267
  %i.n = fcmp ugt float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1366) #25
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.p:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn116 = phi { ptr, i32 } [ %i.q, %bb.q ], [ %i.p, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.r = load ptr, ptr %12, align 8, !tbaa !17    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.r
  %i.u = load i64, ptr %i.s, align 8, !tbaa !18
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.o
  %.pn116.pn = phi { ptr, i32 } [ %i.o, %bb.o ], [ %.pn116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %.pn116, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bf

bb.s:                                             ; preds = %bb.j
  %i.w = fcmp olt float %6, 0.000000e+00
  br i1 %i.w, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.x = tail call noundef float @_Z23maxReferenceTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %2) ; 2 uses
  %i.y = fcmp ult float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ20calcVerletBufferSizeRK10gmx_mtop_tfRK10t_inputrecfiifRK18VerletbufListSetupENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1377) #25
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  %.097 = phi float [ %6, %bb.s ], [ %i.x, %bb.t ] ; 2 uses
  %i.z = fcmp ogt float %3, 0.000000e+00
  store double 1.000000e-03, ptr %i.a, align 8, !tbaa !268
  %i.aa = tail call ptr @getenv(ptr noundef nonnull @.str.19) #26 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ab = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a) #26 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ac = fpext float %1 to double                ; 2 uses
  %i.ad = fdiv double f0x3FF6A09E667F3BCD, %i.ac
  %i.ae = call double @cbrt(double noundef %i.ad) #30
  %i.af = fptrunc double %i.ae to float           ; 3 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !128
  %i.ah = icmp eq i32 %i.ag, 3
  br i1 %i.ah, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !129
  %i.ak = fcmp ogt float %i.aj, 0.000000e+00
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.al = phi i1 [ false, %bb.x ], [ %i.ak, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 420
  %i.an = load i32, ptr %i.am, align 4, !tbaa !130
  %i.ao = icmp ne i32 %i.an, 0
  call fastcc void @_ZL24getVerletBufferAtomtypesRK10gmx_mtop_tbb(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(768) %0, i1 noundef zeroext %i.al, i1 noundef zeroext %i.ao)
  %i.ap = load ptr, ptr @debug, align 8, !tbaa !132 ; 2 uses
  %.not107 = icmp eq ptr %i.ap, null
  br i1 %.not107, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.21, double noundef %i.ac) #26 ; 0 uses
  %i.ar = load ptr, ptr @debug, align 8, !tbaa !132
  %i.as = fpext float %i.af to double
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.22, double noundef %i.as) #26 ; 0 uses
  %i.au = load ptr, ptr @debug, align 8, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !135
  %i.ax = load ptr, ptr %15, align 8, !tbaa !136
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 5
  %i.bc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.23, i64 noundef %i.bb) #26 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load double, ptr %i.be, align 8, !tbaa !192
  %i.bg = fptrunc double %i.bf to float
  invoke fastcc void @_ZL17getVdwDerivativesRK10t_inputrecf(ptr dead_on_unwind noalias writable align 4 %18, ptr noundef nonnull align 8 dereferenceable(888) %2, float noundef %i.bg)
          to label %bb.ac unwind label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(32) %18, i64 16, i1 false), !tbaa.struct !269
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !269
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 380
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !270 ; 4 uses
  %i.bk = fpext float %i.bj to double
  %i.bl = fdiv double f0x40615DEF44DEAD3D, %i.bk
  %i.bm = fptrunc double %i.bl to float           ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 364
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !271
  switch i32 %i.bo, label %bb.ag [
    i32 0, label %..thread57_crit_edge.i
    i32 1, label %bb.ad
    i32 2, label %bb.ad
    i32 11, label %bb.ad
    i32 16, label %bb.ad
    i32 3, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i
    i32 14, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i
    i32 13, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i
    i32 15, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i
    i32 5, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i
    i32 4, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i
    i32 17, label %bb.aj
  ]

..thread57_crit_edge.i:                           ; preds = %bb.ac
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 376
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 8, !tbaa !193 ; 4 uses
  %.pre65.i = fmul float %.pre.i, %.pre.i         ; 2 uses
  %.pre69.i = fmul float %.pre.i, %.pre65.i
  br label %.thread57.i

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !272
  %i.br = fdiv float %i.bq, %i.bj                 ; 4 uses
  %i.bs = fcmp une float %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.ae, label %.thread62.i

.thread62.i:                                      ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !193 ; 3 uses
  %i.bv = fmul float %i.bu, %i.bu
  %i.bw = fmul float %i.bu, %i.bv                 ; 2 uses
  %i.bx = fdiv float 5.000000e-01, %i.bw
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.by = fsub float %i.br, %i.bj
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !193 ; 4 uses
  %i.cb = fmul float %i.ca, %i.ca                 ; 2 uses
  %i.cc = fmul float %i.ca, %i.cb                 ; 3 uses
  %i.cd = call float @llvm.fmuladd.f32(float %i.br, float 2.000000e+00, float %i.bj)
  %i.ce = fmul float %i.cd, %i.cc
  %i.cf = fdiv float %i.by, %i.ce                 ; 2 uses
  %i.cg = fcmp ogt float %i.br, 0.000000e+00
  br i1 %i.cg, label %.thread57.i, label %bb.af

.thread57.i:                                      ; preds = %bb.ae, %..thread57_crit_edge.i
  %.pre67.pre-phi.i = phi float [ %.pre69.i, %..thread57_crit_edge.i ], [ %i.cc, %bb.ae ]
  %.pre-phi.i = phi float [ %.pre65.i, %..thread57_crit_edge.i ], [ %i.cb, %bb.ae ]
  %i.ch = phi float [ %.pre.i, %..thread57_crit_edge.i ], [ %i.ca, %bb.ae ]
  %.05360.i = phi float [ 0.000000e+00, %..thread57_crit_edge.i ], [ %i.cf, %bb.ae ] ; 2 uses
  %i.ci = fpext float %i.bm to double
  %i.cj = fpext float %.pre-phi.i to double
  %i.ck = fdiv double 1.000000e+00, %i.cj
  %i.cl = fmul float %.05360.i, 2.000000e+00
  %i.cm = fmul float %i.ch, %i.cl
  %i.cn = fpext float %i.cm to double
  %i.co = fsub double %i.ck, %i.cn
  %i.cp = fmul double %i.co, %i.ci
  %i.cq = fptrunc double %i.cp to float
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cq, i64 1
  br label %bb.af

bb.af:                                            ; preds = %.thread57.i, %bb.ae, %.thread62.i
  %.pre-phi68.i = phi float [ %i.bw, %.thread62.i ], [ %.pre67.pre-phi.i, %.thread57.i ], [ %i.cc, %bb.ae ]
  %.05361.i = phi float [ %i.bx, %.thread62.i ], [ %.05360.i, %.thread57.i ], [ %i.cf, %bb.ae ]
  %.sroa.0.0.i = phi <2 x float> [ zeroinitializer, %.thread62.i ], [ %.sroa.0.4.vec.insert.i, %.thread57.i ], [ zeroinitializer, %bb.ae ]
  %i.cr = fpext float %i.bm to double
  %i.cs = fpext float %.pre-phi68.i to double
  %i.ct = fdiv double 2.000000e+00, %i.cs
  %i.cu = fmul float %.05361.i, 2.000000e+00
  %i.cv = fpext float %i.cu to double
  %i.cw = fadd double %i.ct, %i.cv
  %i.cx = fmul double %i.cw, %i.cr
  %i.cy = fptrunc double %i.cx to float
  %.sroa.4.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cy, i64 0
  br label %bb.aj

_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i: ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  %i.da = load float, ptr %i.cz, align 8, !tbaa !193
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.dc = load float, ptr %i.db, align 4, !tbaa !273
  %i.dd = invoke noundef float @_Z17calc_ewaldcoeff_qff(float noundef %i.da, float noundef %i.dc)
          to label %.noexc unwind label %bb.aq    ; 3 uses

.noexc:                                           ; preds = %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i
  %i.de = load float, ptr %i.cz, align 8, !tbaa !193 ; 5 uses
  %i.df = fmul float %i.dd, %i.de                 ; 6 uses
  %i.dg = fpext float %i.bm to double
  %i.dh = fneg float %i.df
  %i.di = fmul float %i.df, %i.dh                 ; 2 uses
  %i.dj = call noundef float @expf(float noundef %i.di) #26
  %i.dk = fmul float %i.dd, %i.dj
  %i.dl = fpext float %i.dk to double
  %i.dm = fmul double %i.dl, f0x3FF20DD750429B6D
  %i.dn = fpext float %i.de to double
  %i.do = fdiv double %i.dm, %i.dn
  %i.dp = call noundef float @erfcf(float noundef %i.df) #26
  %i.dq = fmul float %i.de, %i.de                 ; 2 uses
  %i.dr = fdiv float %i.dp, %i.dq
  %i.ds = fpext float %i.dr to double
  %i.dt = fadd double %i.do, %i.ds
  %i.du = fmul double %i.dt, %i.dg
  %i.dv = fptrunc double %i.du to float
  %.sroa.0.4.vec.insert49.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.dv, i64 1
  %i.dw = fdiv float %i.bm, %i.dq
  %i.dx = fpext float %i.dw to double
  %i.dy = fmul float %i.dd, 2.000000e+00
  %i.dz = call float @llvm.fmuladd.f32(float %i.df, float %i.df, float 1.000000e+00)
  %i.ea = fmul float %i.dy, %i.dz
  %i.eb = call noundef float @expf(float noundef %i.di) #26
  %i.ec = fmul float %i.ea, %i.eb
  %i.ed = fpext float %i.ec to double
  %i.ee = call noundef float @erfcf(float noundef %i.df) #26
  %i.ef = fmul float %i.ee, 2.000000e+00
  %i.eg = fdiv float %i.ef, %i.de
  %i.eh = fpext float %i.eg to double
  %i.ei = call double @llvm.fmuladd.f64(double %i.ed, double f0x3FF20DD750429B6D, double %i.eh)
  %i.ej = fmul double %i.ei, %i.dx
  %i.ek = fptrunc double %i.ej to float
  %.sroa.4.8.vec.insert52.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ek, i64 0
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %.noexc124 unwind label %bb.aq

.noexc124:                                        ; preds = %bb.ag
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1071, ptr noundef nonnull @.str.48) #25
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc124
  unreachable

bb.ai:                                            ; preds = %.noexc124
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body

bb.aj:                                            ; preds = %.noexc, %bb.af, %bb.ac
  %.sroa.0.1.i = phi <2 x float> [ %.sroa.0.0.i, %bb.af ], [ %.sroa.0.4.vec.insert49.i, %.noexc ], [ zeroinitializer, %bb.ac ] ; 2 uses
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.4.8.vec.insert.i, %bb.af ], [ %.sroa.4.8.vec.insert52.i, %.noexc ], [ zeroinitializer, %bb.ac ] ; 2 uses
  %21 = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.4.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %21, ptr %19, align 16
  %i.em = sitofp i32 %5 to double
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !194
  %i.ep = fmul double %i.eo, %i.em
  %i.eq = fptrunc double %i.ep to float           ; 3 uses
  %i.er = load i32, ptr %i.b, align 4, !tbaa !128
  %i.es = icmp eq i32 %i.er, 3
  %i.et = fpext float %.097 to double             ; 2 uses
  %i.eu = extractelement <2 x float> %.sroa.0.1.i, i64 1
  %i.ev = extractelement <2 x float> %.sroa.4.0.i, i64 0
  br i1 %i.es, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ew = fmul double %i.et, f0x3F91072C483AF26D
  %i.ex = fpext float %i.eq to double
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = fptrunc double %i.ey to float           ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !129 ; 2 uses
  %i.fc = fcmp ogt float %i.fb, 0.000000e+00
  br i1 %i.fc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fd = fdiv float %i.ez, %i.fb
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

bb.am:                                            ; preds = %bb.ak
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 744
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 808
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !195 ; 10 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !27 ; 3 uses
  %i.fi = load i32, ptr %i.fe, align 8, !tbaa !196 ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, 1
  br i1 %i.fj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.am
  %wide.trip.count.i = zext nneg i32 %i.fi to i64
  %i.fk = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.fk, 7                    ; 3 uses
  %i.fl = add nsw i32 %i.fi, -2
  %i.fm = icmp ult i32 %i.fl, 7
  br i1 %i.fm, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.fk, -8
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01819.i.epil.init = phi float [ %i.fh, %.lr.ph.preheader.i ], [ %.sroa.speculated.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.01819.i.epil = phi float [ %.01819.i.epil.init, %.lr.ph.i.epil.preheader ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.epil
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !27 ; 2 uses
  %i.fp = fcmp olt float %.01819.i.epil, %i.fo
  %.sroa.speculated.i.epil = select i1 %i.fp, float %i.fo, float %.01819.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !265

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.am
  %.018.lcssa.i = phi float [ %i.fh, %bb.am ], [ %.sroa.speculated.i.7, %._crit_edge.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ]
  %i.fq = fmul float %.018.lcssa.i, %i.ez
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %.01819.i = phi float [ %i.fh, %.lr.ph.preheader.i.new ], [ %.sroa.speculated.i.7, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !27 ; 2 uses
  %i.ft = fcmp olt float %.01819.i, %i.fs
  %.sroa.speculated.i = select i1 %i.ft, float %i.fs, float %.01819.i ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !27 ; 2 uses
  %i.fx = fcmp olt float %.sroa.speculated.i, %i.fw
  %.sroa.speculated.i.1 = select i1 %i.fx, float %i.fw, float %.sroa.speculated.i ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !27 ; 2 uses
  %i.gb = fcmp olt float %.sroa.speculated.i.1, %i.ga
  %.sroa.speculated.i.2 = select i1 %i.gb, float %i.ga, float %.sroa.speculated.i.1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !27 ; 2 uses
  %i.gf = fcmp olt float %.sroa.speculated.i.2, %i.ge
  %.sroa.speculated.i.3 = select i1 %i.gf, float %i.ge, float %.sroa.speculated.i.2 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !27 ; 2 uses
  %i.gj = fcmp olt float %.sroa.speculated.i.3, %i.gi
  %.sroa.speculated.i.4 = select i1 %i.gj, float %i.gi, float %.sroa.speculated.i.3 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !27 ; 2 uses
  %i.gn = fcmp olt float %.sroa.speculated.i.4, %i.gm
  %.sroa.speculated.i.5 = select i1 %i.gn, float %i.gm, float %.sroa.speculated.i.4 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !27 ; 2 uses
  %i.gr = fcmp olt float %.sroa.speculated.i.5, %i.gq
  %.sroa.speculated.i.6 = select i1 %i.gr, float %i.gq, float %.sroa.speculated.i.5 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !27 ; 2 uses
  %i.gv = fcmp olt float %.sroa.speculated.i.6, %i.gu
  %.sroa.speculated.i.7 = select i1 %i.gv, float %i.gu, float %.sroa.speculated.i.6 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

bb.an:                                            ; preds = %bb.aj
  %i.gw = fmul double %i.et, f0x3F81072C483AF26D
  %i.gx = fmul float %i.eq, %i.eq
  %i.gy = fpext float %i.gx to double
  %i.gz = fmul double %i.gw, %i.gy
  %i.ha = fptrunc double %i.gz to float
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

_ZL20displacementVarianceRK10t_inputrecff.exit:   ; preds = %bb.an, %._crit_edge.i, %bb.al
  %.015.i = phi float [ %i.fd, %bb.al ], [ %i.fq, %._crit_edge.i ], [ %i.ha, %bb.an ] ; 3 uses
  %i.hb = load ptr, ptr @debug, align 8, !tbaa !132 ; 2 uses
  %.not108 = icmp eq ptr %i.hb, null
  br i1 %.not108, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %_ZL20displacementVarianceRK10t_inputrecff.exit
  %fwrite = call i64 @fwrite(ptr nonnull @.str.24, i64 53, i64 1, ptr nonnull %i.hb) ; 0 uses
  %i.hc = load ptr, ptr @debug, align 8, !tbaa !132
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.he = load float, ptr %i.hd, align 4, !tbaa !200
  %i.hf = fpext float %i.he to double
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !274
  %i.hi = fpext float %i.hh to double
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !201
  %i.hl = fpext float %i.hk to double
  %i.hm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.25, double noundef %i.hf, double noundef %i.hi, double noundef %i.hl) #26 ; 0 uses
  %i.hn = load ptr, ptr @debug, align 8, !tbaa !132
  %i.ho = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !200
  %i.hq = fpext float %i.hp to double
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hs = load <2 x float>, ptr %i.hr, align 4, !tbaa !27
  %i.ht = fpext <2 x float> %i.hs to <2 x double> ; 2 uses
  %i.hu = extractelement <2 x double> %i.ht, i64 0
  %i.hv = extractelement <2 x double> %i.ht, i64 1
  %i.hw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.26, double noundef %i.hq, double noundef %i.hu, double noundef %i.hv) #26 ; 0 uses
  %i.hx = load ptr, ptr @debug, align 8, !tbaa !132
  %i.hy = fpext float %i.eu to double
  %i.hz = fpext float %i.ev to double
  %i.ia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hx, ptr noundef nonnull @.str.27, double noundef %i.hy, double noundef %i.hz) #26 ; 0 uses
  %i.ib = load ptr, ptr @debug, align 8, !tbaa !132
  %i.ic = call noundef float @sqrtf(float noundef %.015.i) #26
  %i.id = fpext float %i.ic to double
  %i.ie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ib, ptr noundef nonnull @.str.28, double noundef %i.id) #26 ; 0 uses
  br label %bb.as

bb.ap:                                            ; preds = %bb.ab
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bd

bb.aq:                                            ; preds = %bb.ag, %_ZL8usingPmeRK22CoulombInteractionType.exit.thread.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.at
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.as:                                            ; preds = %bb.ao, %_ZL20displacementVarianceRK10t_inputrecff.exit
  %i.ii = load ptr, ptr %15, align 8, !tbaa !136  ; 9 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !135 ; 3 uses
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.in = sub i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !23
  %i.ir = load i16, ptr %i.ii, align 4, !tbaa !202
  %i.is = sitofp i16 %i.ir to float
  %i.it = fmul float %i.iq, %i.is                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL11energyDriftN3gmx8ArrayRefIK17VerletbufAtomtypeEEPK14gmx_ffparams_tfRK17pot_derivatives_tS9_S9_fffif:bb.a
  %i.fb = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = fmul <4 x float> %i.fa, %i.fb
  %i.fd = fmul <4 x float> %i.ez, %i.fc
  %i.fe = shufflevector <4 x float> %i.ey, <4 x float> %i.fd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  store <4 x float> %i.fe, ptr %13, align 16, !tbaa !27
  %i.ff = load i16, ptr %i.p, align 4, !tbaa !25
  %i.fg = icmp sgt i16 %i.ff, 0
  br i1 %i.fg, label %bb.h, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91

bb.h:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90
  %i.fh = load i16, ptr %i.bd, align 2, !tbaa !234
  %i.fi = sitofp i16 %i.fh to float
  %i.fj = fmul nnan float %i.fi, 4.000000e-01
  %i.fk = load i16, ptr %i.o, align 4, !tbaa !202
  %i.fl = sitofp i16 %i.fk to float
  %i.fm = fcmp olt float %i.fj, %i.fl
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90, %bb.h
  %i.fn = phi i1 [ false, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit90 ], [ %i.fm, %bb.h ]
  %i.fo = load i16, ptr %i.bj, align 4, !tbaa !25
  %i.fp = icmp sgt i16 %i.fo, 0
  br i1 %i.fp, label %bb.i, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92

bb.i:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !234
  %i.fs = sitofp i16 %i.fr to float
  %i.ft = fmul nnan float %i.fs, 4.000000e-01
  %i.fu = load i16, ptr %i.bi, align 4, !tbaa !202
  %i.fv = sitofp i16 %i.fu to float
  %i.fw = fcmp olt float %i.ft, %i.fv
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91, %bb.i
  %i.fx = phi i1 [ false, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit91 ], [ %i.fw, %bb.i ]
  %i.fy = call fastcc noundef float @_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t(i1 noundef zeroext %i.fn, i1 noundef zeroext %i.fx, float noundef %i.cw, float noundef %.0107, float noundef %.0108, float noundef %i.j, ptr noundef %13)
  %i.fz = fadd float %i.eh, %i.fy
  %i.ga = icmp eq i64 %.075110, %.076112
  %i.gb = load i32, ptr %i.bg, align 4, !tbaa !256 ; 2 uses
  %i.gc = sitofp i32 %i.gb to double              ; 2 uses
  %i.gd = fpext float %i.fz to double
  br i1 %i.ga, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92
  %i.ge = add nsw i32 %i.gb, -1
  %i.gf = sitofp i32 %i.ge to double
  %i.gg = fmul nnan double %i.gc, %i.gf
  %i.gh = fmul nnan double %i.gg, 5.000000e-01
  br label %bb.l

bb.k:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit92
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !256
  %i.gk = sitofp i32 %i.gj to double
  %i.gl = fmul nnan double %i.gc, %i.gk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi double [ %i.gl, %bb.k ], [ %i.gh, %bb.j ]
  %i.gm = fmul double %.sink, %i.gd
  %.0 = fptrunc double %i.gm to float
  %i.gn = tail call noundef float @sqrtf(float noundef %i.cw) #26
  %i.go = fadd float %9, %i.gn                    ; 2 uses
  %i.gp = fmul float %i.go, %i.go
  %i.gq = fpext float %i.gp to double
  %i.gr = fmul double %i.gq, f0x402921FB54442D18
  %i.gs = fmul double %i.gr, %i.k
  %i.gt = fdiv double %i.gs, %i.l
  %i.gu = fpext float %.0 to double
  %i.gv = fmul double %i.gt, %i.gu
  %i.gw = fptrunc double %i.gv to float
  %i.gx = tail call noundef float @llvm.fabs.f32(float %i.gw)
  %i.gy = fpext float %i.gx to double
  %i.gz = fadd double %.1109, %i.gy               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ha = add nuw nsw i64 %.075110, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ha, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !322

bb.m:                                             ; preds = %._crit_edge114
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL11energyDriftN3gmx8ArrayRefIK17VerletbufAtomtypeEEPK14gmx_ffparams_tfRK17pot_derivatives_tS9_S9_fffifENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 875) #25
  unreachable

bb.n:                                             ; preds = %._crit_edge114
  %i.hb = fptrunc double %.077.lcssa to float
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.078 = phi float [ %i.hb, %bb.n ], [ 0.000000e+00, %bb.a ]
  ret float %.078
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL12surface_fraciff(i32 noundef %0, float noundef %1, float noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = fpext float %2 to double                 ; 2 uses
  %i.b = fpext float %1 to double
  %i.c = fmul double %i.b, 5.000000e-01           ; 2 uses
  %i.d = fcmp ogt double %i.c, %i.a
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fdiv double %i.c, %i.a
  %i.f = fptrunc double %i.e to float             ; 2 uses
  switch i32 %0, label %bb.e [
    i32 1, label %bb.k
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = fadd float %i.f, 1.000000e+00
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.h = fpext float %i.f to double               ; 15 uses
  %i.i = fmul double %i.h, f0x3FFBB67AE8584CAA
  %i.j = fmul double %i.i, %i.h
  %i.k = fmul double %i.h, f0x3FD1C71C71C71C72
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.h, double 1.000000e+00)
  %i.m = fmul double %i.h, f0x3FC3E93E93E93E94
  %i.n = fmul double %i.m, %i.h
  %i.o = fmul double %i.n, %i.h
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.h, double %i.l)
  %i.q = fmul double %i.h, f0x3FBC1B1706C5C1B1
  %i.r = fmul double %i.q, %i.h
  %i.s = fmul double %i.r, %i.h
  %i.t = fmul double %i.s, %i.h
  %i.u = fmul double %i.t, %i.h
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.h, double %i.p)
  %i.w = fmul double %i.j, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.h, double f0x4016ED771E041505, double %i.w)
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double f0x3FD45F306DC9C883, double 1.000000e+00)
  %i.z = fptrunc double %i.y to float
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(69) @.str.10, i8 noundef zeroext 2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 926) #25
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ac = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.027 = phi float [ %i.z, %bb.d ], [ %i.g, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.ah = uitofp nneg i32 %0 to float
  %i.ai = fdiv float %.027, %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.028 = phi float [ %i.ai, %bb.k ], [ 1.000000e+00, %bb.a ]
  ret float %.028
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL13pressureErrorN3gmx8ArrayRefIK17VerletbufAtomtypeEERK14gmx_ffparams_tRK10t_inputrecfRKSt4pairI17pot_derivatives_tSB_EbifRK18VerletbufListSetupif(ptr %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(888) %3, float noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %5, i1 noundef zeroext %6, i32 noundef %7, float noundef %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %9, i32 noundef %10, float noundef %11) unnamed_addr #16 {
bb.a:
  %12 = alloca %struct.pot_derivatives_t, align 16 ; 4 uses
  %13 = alloca %struct.pot_derivatives_t, align 16 ; 4 uses
  %14 = alloca %struct.pot_derivatives_t, align 4 ; 4 uses
  %i.a = fpext float %11 to double
  %i.b = fdiv double f0x3FF6A09E667F3BCD, %i.a
  %i.c = tail call double @cbrt(double noundef %i.b) #30
  %i.d = fptrunc double %i.c to float             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = load <4 x float>, ptr %i.e, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.sroa.3.12.vec.insert.i96 = insertelement <2 x float> %i.g, float 0.000000e+00, i64 1
  %15 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.3.12.vec.insert.i96, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %15, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !201
  %.sroa.3.12.vec.insert.i54 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %16 = shufflevector <2 x float> %i.i, <2 x float> %.sroa.3.12.vec.insert.i54, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %16, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.l = tail call noundef i32 @_ZN3gmx18nonbondedMtsFactorERK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %3)
  %i.m = sdiv i32 %7, %i.l                        ; 5 uses
  %i.n = add nsw i32 %i.m, -1                     ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.p = icmp sgt i32 %i.m, -4
  br i1 %i.p, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sitofp i32 %i.m to float
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.q = zext i1 %6 to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = fpext float %4 to double                 ; 2 uses
  %i.u = fmul double %i.t, f0x3F81072C483AF26D
  %i.v = fmul double %i.t, f0x3F91072C483AF26D
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 544
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 744
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 808
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = ptrtoint ptr %0 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 404
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.af = sitofp i32 %i.m to float                ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi float [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.af, %bb.j ]
  %.045.lcssa = phi float [ 0.000000e+00, %.preheader.._crit_edge_crit_edge ], [ %.2, %bb.j ]
  %i.ag = fdiv float %.045.lcssa, %.pre-phi
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 404
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !257
  %i.aj = fmul float %i.ag, %i.ai
  %i.ak = load i32, ptr %9, align 4, !tbaa !28
  %.sroa.speculated61 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 4)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 356 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !259
  %i.an = tail call fastcc noundef float @_ZL12surface_fraciff(i32 noundef %.sroa.speculated61, float noundef %i.d, float noundef %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 4)
  %i.aq = load float, ptr %i.al, align 4, !tbaa !259
  %i.ar = tail call fastcc noundef float @_ZL12surface_fraciff(i32 noundef %.sroa.speculated, float noundef %i.d, float noundef %i.aq)
  %i.as = fmul float %i.an, %i.ar
  %i.at = fmul float %i.aj, %i.as
  %i.au = sitofp i32 %10 to float
  %i.av = fdiv float %11, %i.au
  %i.aw = fmul float %i.av, %i.at
  %i.ax = fpext float %i.aw to double
  %i.ay = fmul double %i.ax, f0x40309AFAE1F7C60E
  %i.az = fptrunc double %i.ay to float
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.04387 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dl, %bb.j ]
  %.04486 = phi i32 [ 0, %.lr.ph ], [ %.sroa.speculated69, %bb.j ]
  %.04585 = phi float [ 0.000000e+00, %.lr.ph ], [ %.2, %bb.j ] ; 2 uses
  %storemerge84 = phi i32 [ 0, %.lr.ph ], [ %i.ej, %bb.j ] ; 2 uses
  %.sroa.speculated69 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %storemerge84) ; 7 uses
  %i.ba = add nsw i32 %.sroa.speculated69, %i.q
  %i.bb = tail call noundef i32 @_ZN3gmx18nonbondedMtsFactorERK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %3)
  %i.bc = mul nsw i32 %i.bb, %i.ba
  %i.bd = sitofp i32 %i.bc to double
  %i.be = load double, ptr %i.r, align 8, !tbaa !194
  %i.bf = fmul double %i.be, %i.bd
  %i.bg = fptrunc double %i.bf to float           ; 3 uses
  %i.bh = load i32, ptr %i.s, align 4, !tbaa !128
  %i.bi = icmp eq i32 %i.bh, 3
  br i1 %i.bi, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bj = fpext float %i.bg to double
  %i.bk = fmul double %i.v, %i.bj
  %i.bl = fptrunc double %i.bk to float           ; 2 uses
  %i.bm = load float, ptr %i.w, align 8, !tbaa !129 ; 2 uses
  %i.bn = fcmp ogt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = fdiv float %i.bl, %i.bm
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

bb.e:                                             ; preds = %bb.c
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !195 ; 10 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !27 ; 3 uses
  %i.br = load i32, ptr %i.x, align 8, !tbaa !196 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.br to i64
  %i.bt = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.bt, 7                    ; 3 uses
  %i.bu = add nsw i32 %i.br, -2
  %i.bv = icmp ult i32 %i.bu, 7
  br i1 %i.bv, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bt, -8
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01819.i.epil.init = phi float [ %i.bq, %.lr.ph.preheader.i ], [ %.sroa.speculated.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.01819.i.epil = phi float [ %.01819.i.epil.init, %.lr.ph.i.epil.preheader ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.epil
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !27 ; 2 uses
  %i.by = fcmp olt float %.01819.i.epil, %i.bx
  %.sroa.speculated.i.epil = select i1 %i.by, float %i.bx, float %.01819.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !324

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.e
  %.018.lcssa.i = phi float [ %i.bq, %bb.e ], [ %.sroa.speculated.i.7, %._crit_edge.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ]
  %i.bz = fmul float %.018.lcssa.i, %i.bl
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %.01819.i = phi float [ %i.bq, %.lr.ph.preheader.i.new ], [ %.sroa.speculated.i.7, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !27 ; 2 uses
  %i.cc = fcmp olt float %.01819.i, %i.cb
  %.sroa.speculated.i = select i1 %i.cc, float %i.cb, float %.01819.i ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !27 ; 2 uses
  %i.cg = fcmp olt float %.sroa.speculated.i, %i.cf
  %.sroa.speculated.i.1 = select i1 %i.cg, float %i.cf, float %.sroa.speculated.i ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !27 ; 2 uses
  %i.ck = fcmp olt float %.sroa.speculated.i.1, %i.cj
  %.sroa.speculated.i.2 = select i1 %i.ck, float %i.cj, float %.sroa.speculated.i.1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !27 ; 2 uses
  %i.co = fcmp olt float %.sroa.speculated.i.2, %i.cn
  %.sroa.speculated.i.3 = select i1 %i.co, float %i.cn, float %.sroa.speculated.i.2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27 ; 2 uses
  %i.cs = fcmp olt float %.sroa.speculated.i.3, %i.cr
  %.sroa.speculated.i.4 = select i1 %i.cs, float %i.cr, float %.sroa.speculated.i.3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !27 ; 2 uses
  %i.cw = fcmp olt float %.sroa.speculated.i.4, %i.cv
  %.sroa.speculated.i.5 = select i1 %i.cw, float %i.cv, float %.sroa.speculated.i.4 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !27 ; 2 uses
  %i.da = fcmp olt float %.sroa.speculated.i.5, %i.cz
  %.sroa.speculated.i.6 = select i1 %i.da, float %i.cz, float %.sroa.speculated.i.5 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !27 ; 2 uses
  %i.de = fcmp olt float %.sroa.speculated.i.6, %i.dd
  %.sroa.speculated.i.7 = select i1 %i.de, float %i.dd, float %.sroa.speculated.i.6 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

bb.f:                                             ; preds = %bb.b
  %i.df = fmul float %i.bg, %i.bg
  %i.dg = fpext float %i.df to double
  %i.dh = fmul double %i.u, %i.dg
  %i.di = fptrunc double %i.dh to float
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

_ZL20displacementVarianceRK10t_inputrecff.exit:   ; preds = %bb.d, %._crit_edge.i, %bb.f
  %.015.i = phi float [ %i.bo, %bb.d ], [ %i.bz, %._crit_edge.i ], [ %i.di, %bb.f ]
  %i.dj = load float, ptr %i.ad, align 4, !tbaa !257
  %i.dk = load float, ptr %i.ae, align 8, !tbaa !193
  %i.dl = call fastcc noundef float @_ZL11energyDriftN3gmx8ArrayRefIK17VerletbufAtomtypeEEPK14gmx_ffparams_tfRK17pot_derivatives_tS9_S9_fffif(ptr %0, ptr %i.ac, ptr noundef %2, float noundef %.015.i, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14, float noundef %i.dj, float noundef %i.dk, float noundef %8, i32 noundef %10, float noundef %11) ; 4 uses
  %i.dm = icmp eq i32 %.sroa.speculated69, 0
end_hunk_1
