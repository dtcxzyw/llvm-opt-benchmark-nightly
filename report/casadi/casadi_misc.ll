Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/casadi_misc?download=true
inline.NumInlined: 1005
inline.NumDeleted: 431
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6casadi10complementERKSt6vectorIxSaIxEEx:bb.a
_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread77: ; preds = %bb.a, %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit
  %i.bs = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.bs, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread77
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread77
  %.not.i.i.i.i59 = icmp eq i64 %2, 0             ; 2 uses
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit, label %.noexc60

.noexc60:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bt = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #23 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bu, i8 0, i64 %i.bt, i1 false), !tbaa !38
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %2
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !30
  %.pre113 = load ptr, ptr %1, align 8, !tbaa !31
  %i.bw = ptrtoint ptr %i.bv to i64
  br label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit:            ; preds = %.noexc60, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bx = phi ptr [ %i.a, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.pre113, %.noexc60 ] ; 7 uses
  %i.by = phi ptr [ %i.c, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.pre, %.noexc60 ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bw, %.noexc60 ] ; 2 uses
  %.sroa.071.0 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bu, %.noexc60 ] ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %i.by, %i.bx
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 3 uses
  %xtraiter = and i64 %i.cc, 3                    ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 4
  br i1 %i.cd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cc, -4
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.098.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cz, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.098.epil = phi i64 [ %i.ch, %.lr.ph.epil ], [ %.098.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.098.epil
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.071.0, i64 %i.cf
  store i64 1, ptr %i.cg, align 8, !tbaa !38
  %i.ch = add nuw nsw i64 %.098.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !129

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  br i1 %.not.i.i.i.i59, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.098 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cz, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.098
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.071.0, i64 %i.cl
  store i64 1, ptr %i.cm, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.098
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.071.0, i64 %i.cp
  store i64 1, ptr %i.cq, align 8, !tbaa !38
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.098
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.071.0, i64 %i.ct
  store i64 1, ptr %i.cu, align 8, !tbaa !38
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.098
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.071.0, i64 %i.cx
  store i64 1, ptr %i.cy, align 8, !tbaa !38
  %i.cz = add nuw nsw i64 %.098, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.preheader
  store ptr null, ptr %0, align 8
  %.not.i.i.i = icmp eq ptr %.sroa.071.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.da = ptrtoint ptr %.sroa.071.0 to i64
  %i.db = sub i64 %.sroa.11.0, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0, i64 noundef %i.db) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %._crit_edge, %bb.r
  ret void

bb.s:                                             ; preds = %.lr.ph103, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %i.dc = phi ptr [ null, %.lr.ph103 ], [ %i.ea, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 4 uses
  %i.dd = phi ptr [ null, %.lr.ph103 ], [ %i.eb, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 4 uses
  %storemerge102 = phi i64 [ 0, %.lr.ph103 ], [ %i.ed, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 4 uses
  %i.de = phi ptr [ null, %.lr.ph103 ], [ %i.ec, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 10 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.071.0, i64 %storemerge102
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !38
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.t, label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.t:                                             ; preds = %bb.s
  %.not.i = icmp eq ptr %i.dd, %i.dc
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %storemerge102, ptr %i.dd, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.ci, align 8, !tbaa !30
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.v:                                             ; preds = %bb.t
  %i.dj = ptrtoint ptr %i.dc to i64
  %i.dk = ptrtoint ptr %i.de to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 7 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.w, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  store ptr %i.de, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.dn = ashr exact i64 %i.dl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = tail call i64 @llvm.umin.i64(i64 %i.do, i64 1152921504606846975)
  %i.dr = select i1 %i.dp, i64 1152921504606846975, i64 %i.dq ; 3 uses
  %.not.i.i.i61 = icmp ne i64 %i.dr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i61)
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #23
          to label %.noexc63 unwind label %.loopexit ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.dl ; 2 uses
  store i64 %storemerge102, ptr %i.du, align 8, !tbaa !38
  %i.dv = icmp sgt i64 %i.dl, 0
  br i1 %i.dv, label %bb.x, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc63
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr align 8 %i.de, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc63
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dl) #22
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  store ptr %i.dw, ptr %i.ci, align 8, !tbaa !30
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr ; 2 uses
  store ptr %i.dx, ptr %i.cj, align 8, !tbaa !49
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.de, ptr %0, align 8
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i64 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIxSaIxEED2Ev.exit67, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dl) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit67

_ZNSt6vectorIxSaIxEED2Ev.exit67:                  ; preds = %bb.z, %bb.aa
  %i.dy = ptrtoint ptr %.sroa.071.0 to i64
  %i.dz = sub i64 %.sroa.11.0, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0, i64 noundef %i.dz) #22
  br label %bb.ab

_ZNSt6vectorIxSaIxEE9push_backERKx.exit:          ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, %bb.u, %bb.s
  %i.ea = phi ptr [ %i.dx, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.dc, %bb.u ], [ %i.dc, %bb.s ]
  %i.eb = phi ptr [ %i.dw, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.di, %bb.u ], [ %i.dd, %bb.s ]
  %i.ec = phi ptr [ %i.dt, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.de, %bb.u ], [ %i.de, %bb.s ] ; 2 uses
  %i.ed = add nuw nsw i64 %storemerge102, 1       ; 2 uses
  %exitcond112.not = icmp eq i64 %i.ed, %2
  br i1 %exitcond112.not, label %._crit_edge.thread, label %bb.s, !llvm.loop !131

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  store ptr %i.ec, ptr %0, align 8
  br label %bb.r

bb.ab:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.q
  %.pn38.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn.pn.pn.pn.pn.pn81, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %lpad.phi, %_ZNSt6vectorIxSaIxEED2Ev.exit67 ]
  resume { ptr, i32 } %.pn38.pn

bb.ac:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi12lookupvectorERKSt6vectorIxSaIxEEx(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.8") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread59, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.e, %i.c
  %i.f = load i64, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  br i1 %.not9.i.i.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.g = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.sroa.02.010.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.a, %bb.b ]
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = icmp slt i64 %i.g, %i.i
  %spec.select.i.i.i.i = select i1 %i.j, ptr %i.h, ptr %.sroa.02.010.i.i.i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.c
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.i)
  br i1 %.not.i.i.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i: ; preds = %bb.b
  %.not.i.i = icmp slt i64 %i.f, %2
  br i1 %.not.i.i, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !38
  %.not23.i.i = icmp slt i64 %i.m, %2
  br i1 %.not23.i.i, label %.lr.ph.i.i16.i.i, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread

.lr.ph.i.i16.i.i:                                 ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i, %.lr.ph.i.i16.i.i
  %i.n = phi i64 [ %i.s, %.lr.ph.i.i16.i.i ], [ %i.f, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i ] ; 2 uses
  %i.o = phi ptr [ %i.r, %.lr.ph.i.i16.i.i ], [ %i.e, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i ] ; 3 uses
  %.sroa.02.010.i.i17.i.i = phi ptr [ %spec.select.i.i18.i.i, %.lr.ph.i.i16.i.i ], [ %i.a, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i ]
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.n
  %spec.select.i.i18.i.i = select i1 %i.q, ptr %i.o, ptr %.sroa.02.010.i.i17.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.not.i.i19.i.i = icmp eq ptr %i.r, %i.c
  %i.s = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.n)
  br i1 %.not.i.i19.i.i, label %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.loopexit.i.i, label %.lr.ph.i.i16.i.i, !llvm.loop !2

_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i16.i.i
  %.pre.i.i = load i64, ptr %spec.select.i.i18.i.i, align 8, !tbaa !38
  br label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit

_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.loopexit.i.i
  %i.t = phi i64 [ %i.f, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i ], [ %.pre.i.i, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.loopexit.i.i ]
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread59, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread

_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i, %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit
  %i.v = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread

bb.c:                                             ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !alias.scope !137
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #21
          to label %bb.u unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread: ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.l:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.m:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.n:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.o:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.012 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.p ] ; 2 uses
  %.1 = phi i1 [ true, %bb.o ], [ %.012, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.012, %bb.p ] ; 2 uses
  %i.ai = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #22
end_hunk_0
begin_hunk_1_@_ZN6casadi22tensor_permute_mappingERKSt6vectorIxSaIxEES4_:bb.a
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !38
  %i.gb = load i64, ptr %i.fw, align 8, !tbaa !38
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !38
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.064203.epil.init
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !38
  br label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107.unr-lcssa, %.epil.preheader
  %i.gf = shl nuw nsw i64 %i.dt, 3
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #23
          to label %.noexc114 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ; 5 uses

.noexc114:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.dt
  store i64 0, ptr %i.gg, align 8, !tbaa !38
  %i.gi = add nsw i64 %i.br, -2                   ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109: ; preds = %.noexc114
  %i.gk = getelementptr i8, ptr %i.gg, i64 8
  %.idx.i.i.i.i.i.i.i110 = shl nuw nsw i64 %i.gi, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gk, i8 0, i64 %.idx.i.i.i.i.i.i.i110, i1 false), !tbaa !38
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115

_ZNSt6vectorIxSaIxEED2Ev.exit129.thread:          ; preds = %bb.k, %bb.l
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNSt6vectorIxSaIxEED2Ev.exit127.thread:          ; preds = %bb.n
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %bb.o, %.lr.ph204.new
  %.064203 = phi i64 [ 0, %.lr.ph204.new ], [ %i.gx, %bb.o ] ; 4 uses
  %niter405 = phi i64 [ 0, %.lr.ph204.new ], [ %niter405.next.1, %bb.o ]
  %i.gn = or disjoint i64 %.064203, 1             ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !38
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !38
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.064203
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !38
  %i.gt = load i64, ptr %i.go, align 8, !tbaa !38
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !38
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.064203
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !38
  %i.gx = add nuw nsw i64 %.064203, 2             ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gx ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !38
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !38
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.gn
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !38
  %i.hd = load i64, ptr %i.gy, align 8, !tbaa !38
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !38
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.gn
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !38
  %niter405.next.1 = add nuw i64 %niter405, 2     ; 2 uses
  %niter405.ncmp.1 = icmp eq i64 %niter405.next.1, %unroll_iter404
  br i1 %niter405.ncmp.1, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107.unr-lcssa, label %bb.o, !llvm.loop !164

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115:            ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i109, %.noexc114
  %i.hh = icmp sgt i64 %i.ds, 0
  br i1 %i.hh, label %.preheader198.lr.ph, label %_ZNSt6vectorIxSaIxEED2Ev.exit.thread312

_ZNSt6vectorIxSaIxEED2Ev.exit.thread312:          ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115
  %.idx = shl nuw nsw i64 %i.dt, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %.idx) #22
  br label %bb.p

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread:     ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i88
  %i.hi = icmp sgt i64 %i.ds, 0
  br i1 %i.hi, label %.preheader198.lr.ph, label %_ZNSt6vectorIxSaIxEED2Ev.exit119.thread

.preheader198.lr.ph:                              ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115
  %.sroa.14.0294 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.gh, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 2 uses
  %.sroa.0134.0291 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.gg, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 12 uses
  %.sroa.11.0255260290 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.fr, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 2 uses
  %.sroa.0143.0254263283 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.fb, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 6 uses
  %.sroa.0149.0181253264279 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.dw, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 7 uses
  %.sroa.11154.0184252266278 = phi ptr [ null, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread ], [ %i.dx, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115 ] ; 4 uses
  %i.hj = icmp sgt i64 %i.dr, 0
  %i.hk = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.hl = ptrtoint ptr %i.bt to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 3                 ; 2 uses
  %i.ho = icmp samesign ugt i64 %i.br, 2
  %min.iters.check367 = icmp ult i64 %i.br, 5
  %n.vec369 = and i64 %i.dt, 1152921504606846972  ; 3 uses
  %cmp.n378 = icmp eq i64 %i.dt, %n.vec369
  %i.hp = add nsw i64 %i.dr, -1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = shl <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %i.hr = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> %i.hq, %i.hq
  %i.hs = icmp eq i64 %.in, 24
  %i.ht = and i64 %i.br, 2305843009213693950
  %i.hu = add nsw i64 %i.ht, -4
  %i.hv = and i64 %.in, 8
  %lcmp.mod408.not = icmp eq i64 %i.hv, 0
  %lcmp.mod409 = trunc i64 %i.br to i1
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.lr.ph, %._crit_edge218
  %.061220 = phi i64 [ 0, %.preheader198.lr.ph ], [ %i.kc, %._crit_edge218 ]
  %.062219 = phi i64 [ 0, %.preheader198.lr.ph ], [ %.163.lcssa, %._crit_edge218 ] ; 5 uses
  br i1 %.not.i.i.i.i89, label %.preheader, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %.preheader198
  br i1 %min.iters.check367, label %.lr.ph207.preheader381, label %vector.body370

vector.body370:                                   ; preds = %.lr.ph207.preheader, %vector.body370
  %index371 = phi i64 [ %index.next376, %vector.body370 ], [ 0, %.lr.ph207.preheader ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ic, %vector.body370 ], [ zeroinitializer, %.lr.ph207.preheader ]
  %vec.phi372 = phi <2 x i64> [ %i.id, %vector.body370 ], [ zeroinitializer, %.lr.ph207.preheader ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0291, i64 %index371 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load = load <2 x i64>, ptr %i.hw, align 8, !tbaa !38
  %wide.load373 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !38
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0143.0254263283, i64 %index371 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %wide.load374 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !38
  %wide.load375 = load <2 x i64>, ptr %i.hz, align 8, !tbaa !38
  %i.ia = mul nsw <2 x i64> %wide.load374, %wide.load
  %i.ib = mul nsw <2 x i64> %wide.load375, %wide.load373
  %i.ic = add <2 x i64> %i.ia, %vec.phi           ; 2 uses
  %i.id = add <2 x i64> %i.ib, %vec.phi372        ; 2 uses
  %index.next376 = add nuw i64 %index371, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next376, %n.vec369
  br i1 %i.ie, label %middle.block377, label %vector.body370, !llvm.loop !165

middle.block377:                                  ; preds = %vector.body370
  %bin.rdx = add <2 x i64> %i.id, %i.ic
  %i.if = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n378, label %.preheader, label %.lr.ph207.preheader381

.lr.ph207.preheader381:                           ; preds = %.lr.ph207.preheader, %middle.block377
  %.059206.ph = phi i64 [ 0, %.lr.ph207.preheader ], [ %n.vec369, %middle.block377 ]
  %.060205.ph = phi i64 [ 0, %.lr.ph207.preheader ], [ %i.if, %middle.block377 ]
  br label %.lr.ph207

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %._crit_edge218
  %i.ig = ptrtoint ptr %.sroa.14.0294 to i64
  %i.ih = ptrtoint ptr %.sroa.0134.0291 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0134.0291, i64 noundef %i.ii) #22
  %.not.i.i.i116 = icmp eq ptr %.sroa.0143.0254263283, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIxSaIxEED2Ev.exit117, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.thread312, %_ZNSt6vectorIxSaIxEED2Ev.exit
  %.sroa.11154.0184252266275323 = phi ptr [ %i.dx, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread312 ], [ %.sroa.11154.0184252266278, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %.sroa.0149.0181253264281322 = phi ptr [ %i.dw, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread312 ], [ %.sroa.0149.0181253264279, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %.sroa.0143.0254263285321 = phi ptr [ %i.fb, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread312 ], [ %.sroa.0143.0254263283, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 2 uses
  %.sroa.11.0255260287320 = phi i64 [ %i.fr, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread312 ], [ %.sroa.11.0255260290, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %i.ij = ptrtoint ptr %.sroa.0143.0254263285321 to i64
  %i.ik = sub i64 %.sroa.11.0255260287320, %i.ij
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0254263285321, i64 noundef %i.ik) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit117

_ZNSt6vectorIxSaIxEED2Ev.exit117:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.p
  %.sroa.11154.0184252266276311 = phi ptr [ %.sroa.11154.0184252266275323, %bb.p ], [ %.sroa.11154.0184252266278, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %.sroa.0149.0181253264280310 = phi ptr [ %.sroa.0149.0181253264281322, %bb.p ], [ %.sroa.0149.0181253264279, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 3 uses
  %.not.i.i.i118 = icmp eq ptr %.sroa.0149.0181253264280310, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIxSaIxEED2Ev.exit119, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit117
  %i.il = ptrtoint ptr %.sroa.11154.0184252266276311 to i64
  %i.im = ptrtoint ptr %.sroa.0149.0181253264280310 to i64
  %i.in = sub i64 %i.il, %i.im
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0181253264280310, i64 noundef %i.in) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit119

_ZNSt6vectorIxSaIxEED2Ev.exit119:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit117, %bb.q
  %.not.i.i.i120 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i.i120, label %_ZN6casadi5rangeEx.exit, label %_ZNSt6vectorIxSaIxEED2Ev.exit119.thread

_ZNSt6vectorIxSaIxEED2Ev.exit119.thread:          ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit115.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit119
  %i.io = ptrtoint ptr %.sroa.0158.0 to i64
  %i.ip = sub i64 %.sroa.13164.0, %i.io
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.ip) #22
  br label %_ZN6casadi5rangeEx.exit

_ZNSt6vectorIxSaIxEED2Ev.exit125.thread:          ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i107
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.preheader:                                       ; preds = %.lr.ph207, %middle.block377, %.preheader198
  %.060.lcssa = phi i64 [ 0, %.preheader198 ], [ %i.if, %middle.block377 ], [ %i.ji, %.lr.ph207 ] ; 3 uses
  br i1 %i.hj, label %.lr.ph212.preheader, label %._crit_edge213

.lr.ph212.preheader:                              ; preds = %.preheader
  %i.ir = tail call i64 @llvm.usub.sat.i64(i64 %i.hn, i64 %.062219) ; 2 uses
  %i.is = tail call i64 @llvm.umin.i64(i64 %i.ir, i64 %i.hp)
  %3 = add i64 %i.is, 1                           ; 3 uses
  %min.iters.check351 = icmp ult i64 %3, 5
  br i1 %min.iters.check351, label %.lr.ph212.preheader380, label %vector.ph352

.lr.ph212.preheader380:                           ; preds = %vector.body356, %.lr.ph212.preheader
  %.058211.ph = phi i64 [ 0, %.lr.ph212.preheader ], [ %n.vec353, %vector.body356 ]
  %.1210.ph = phi i64 [ %.060.lcssa, %.lr.ph212.preheader ], [ %i.ix, %vector.body356 ]
  %.163209.ph = phi i64 [ %.062219, %.lr.ph212.preheader ], [ %i.iy, %vector.body356 ]
  br label %.lr.ph212

vector.ph352:                                     ; preds = %.lr.ph212.preheader
  %i.it = and i64 %3, 3                           ; 2 uses
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = select i1 %i.iu, i64 4, i64 %i.it
  %n.vec353 = sub i64 %3, %i.iv                   ; 4 uses
  %i.iw = mul i64 %n.vec353, %i.dp
  %i.ix = add i64 %.060.lcssa, %i.iw
  %i.iy = add i64 %.062219, %n.vec353
  %broadcast.splatinsert354 = insertelement <2 x i64> poison, i64 %.060.lcssa, i64 0
  %broadcast.splat355 = shufflevector <2 x i64> %broadcast.splatinsert354, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat355, %i.hr
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.062219
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph352
  %index357 = phi i64 [ 0, %vector.ph352 ], [ %index.next360, %vector.body356 ] ; 2 uses
  %vec.ind358 = phi <2 x i64> [ %induction, %vector.ph352 ], [ %vec.ind.next361.reass, %vector.body356 ] ; 3 uses
  %step.add359 = add nsw <2 x i64> %vec.ind358, %i.hq
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %index357 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <2 x i64> %vec.ind358, ptr %i.ja, align 8, !tbaa !38
  store <2 x i64> %step.add359, ptr %i.jb, align 8, !tbaa !38
  %index.next360 = add nuw i64 %index357, 4       ; 2 uses
  %vec.ind.next361.reass = add <2 x i64> %vec.ind358, %invariant.op
  %i.jc = icmp eq i64 %index.next360, %n.vec353
  br i1 %i.jc, label %.lr.ph212.preheader380, label %vector.body356, !llvm.loop !166

.lr.ph207:                                        ; preds = %.lr.ph207.preheader381, %.lr.ph207
  %.059206 = phi i64 [ %i.jj, %.lr.ph207 ], [ %.059206.ph, %.lr.ph207.preheader381 ] ; 3 uses
  %.060205 = phi i64 [ %i.ji, %.lr.ph207 ], [ %.060205.ph, %.lr.ph207.preheader381 ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0291, i64 %.059206
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !38
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0143.0254263283, i64 %.059206
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !38
  %i.jh = mul nsw i64 %i.jg, %i.je
  %i.ji = add nsw i64 %i.jh, %.060205             ; 2 uses
  %i.jj = add nuw nsw i64 %.059206, 1             ; 2 uses
  %exitcond227.not = icmp eq i64 %i.jj, %i.dt
  br i1 %exitcond227.not, label %.preheader, label %.lr.ph207, !llvm.loop !167

._crit_edge213:                                   ; preds = %bb.s, %.preheader
  %.163.lcssa = phi i64 [ %.062219, %.preheader ], [ %i.jn, %bb.s ]
  %i.jk = load i64, ptr %.sroa.0134.0291, align 8, !tbaa !38
  %i.jl = add nsw i64 %i.jk, 1
  store i64 %i.jl, ptr %.sroa.0134.0291, align 8, !tbaa !38
  br i1 %i.ho, label %.lr.ph217.preheader, label %._crit_edge218

.lr.ph217.preheader:                              ; preds = %._crit_edge213
  br i1 %i.hs, label %.lr.ph217.epil.preheader, label %.lr.ph217

.lr.ph212:                                        ; preds = %.lr.ph212.preheader380, %bb.s
  %.058211 = phi i64 [ %i.jp, %bb.s ], [ %.058211.ph, %.lr.ph212.preheader380 ] ; 2 uses
  %.1210 = phi i64 [ %i.jo, %bb.s ], [ %.1210.ph, %.lr.ph212.preheader380 ] ; 2 uses
  %.163209 = phi i64 [ %i.jn, %bb.s ], [ %.163209.ph, %.lr.ph212.preheader380 ] ; 3 uses
  %exitcond228.not = icmp eq i64 %.058211, %i.ir
  br i1 %exitcond228.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph212
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, i64 noundef %.163209, i64 noundef %i.hn) #21
          to label %.noexc123 unwind label %bb.t

.noexc123:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.lr.ph212
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.163209
  %i.jn = add nuw nsw i64 %.163209, 1             ; 2 uses
  store i64 %.1210, ptr %i.jm, align 8, !tbaa !38
  %i.jo = add nsw i64 %.1210, %i.dp
  %i.jp = add nuw nsw i64 %.058211, 1             ; 2 uses
  %exitcond229.not = icmp eq i64 %i.jp, %i.dr
  br i1 %exitcond229.not, label %._crit_edge213, label %.lr.ph212, !llvm.loop !168

bb.t:                                             ; preds = %bb.r
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %.sroa.0134.0291, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIxSaIxEED2Ev.exit125, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jr = ptrtoint ptr %.sroa.14.0294 to i64
  %i.js = ptrtoint ptr %.sroa.0134.0291 to i64
  %i.jt = sub i64 %i.jr, %i.js
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0134.0291, i64 noundef %i.jt) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit125

._crit_edge218.loopexit.unr-lcssa:                ; preds = %bb.y
  br i1 %lcmp.mod408.not, label %._crit_edge218, label %.lr.ph217.epil.preheader

.lr.ph217.epil.preheader:                         ; preds = %._crit_edge218.loopexit.unr-lcssa, %.lr.ph217.preheader
  %.0215.epil.init = phi i64 [ 0, %.lr.ph217.preheader ], [ %i.ku, %._crit_edge218.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod409)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0291, i64 %.0215.epil.init ; 3 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !38
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0181253264279, i64 %.0215.epil.init
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !38
  %i.jy = icmp eq i64 %i.jv, %i.jx
  br i1 %i.jy, label %bb.v, label %._crit_edge218

bb.v:                                             ; preds = %.lr.ph217.epil.preheader
  store i64 0, ptr %i.ju, align 8, !tbaa !38
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !38
  %i.kb = add nsw i64 %i.ka, 1
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !38
  br label %._crit_edge218

._crit_edge218:                                   ; preds = %._crit_edge218.loopexit.unr-lcssa, %bb.v, %.lr.ph217.epil.preheader, %._crit_edge213
  %i.kc = add nuw nsw i64 %.061220, 1             ; 2 uses
  %exitcond231.not = icmp eq i64 %i.kc, %i.ds
  br i1 %exitcond231.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.preheader198, !llvm.loop !169

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %bb.y
  %.0215 = phi i64 [ %i.ku, %bb.y ], [ 0, %.lr.ph217.preheader ] ; 4 uses
  %niter411 = phi i64 [ %niter411.next.1, %bb.y ], [ 0, %.lr.ph217.preheader ] ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0291, i64 %.0215 ; 3 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !38
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0181253264279, i64 %.0215
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !38
  %i.kh = icmp eq i64 %i.ke, %i.kg
  br i1 %i.kh, label %bb.w, label %.lr.ph217.1

bb.w:                                             ; preds = %.lr.ph217
  store i64 0, ptr %i.kd, align 8, !tbaa !38
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !38
  %i.kk = add nsw i64 %i.kj, 1
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !38
  br label %.lr.ph217.1

.lr.ph217.1:                                      ; preds = %.lr.ph217, %bb.w
  %i.kl = or disjoint i64 %.0215, 1               ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0134.0291, i64 %i.kl ; 3 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !38
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0149.0181253264279, i64 %i.kl
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !38
  %i.kq = icmp eq i64 %i.kn, %i.kp
  br i1 %i.kq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph217.1
  store i64 0, ptr %i.km, align 8, !tbaa !38
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !38
  %i.kt = add nsw i64 %i.ks, 1
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !38
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph217.1
  %i.ku = add nuw nsw i64 %.0215, 2               ; 2 uses
  %niter411.next.1 = add i64 %niter411, 2
  %niter411.ncmp.1 = icmp eq i64 %niter411, %i.hu
  br i1 %niter411.ncmp.1, label %._crit_edge218.loopexit.unr-lcssa, label %.lr.ph217, !llvm.loop !170

_ZNSt6vectorIxSaIxEED2Ev.exit125:                 ; preds = %bb.u, %bb.t
  %.not.i.i.i126 = icmp eq ptr %.sroa.0143.0254263283, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIxSaIxEED2Ev.exit127, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit125
  %.pn340 = phi { ptr, i32 } [ %i.iq, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %i.jq, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %.sroa.11.0255261339 = phi i64 [ %i.fr, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %.sroa.11.0255260290, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %.sroa.0143.0254262338 = phi ptr [ %i.fb, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %.sroa.0143.0254263283, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ] ; 2 uses
  %.sroa.0149.0181253265336 = phi ptr [ %i.dw, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %.sroa.0149.0181253264279, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %.sroa.11154.0184252267334 = phi ptr [ %i.dx, %_ZNSt6vectorIxSaIxEED2Ev.exit125.thread ], [ %.sroa.11154.0184252266278, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %i.kv = ptrtoint ptr %.sroa.0143.0254262338 to i64
  %i.kw = sub i64 %.sroa.11.0255261339, %i.kv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0254262338, i64 noundef %i.kw) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit127

_ZNSt6vectorIxSaIxEED2Ev.exit127:                 ; preds = %bb.z, %_ZNSt6vectorIxSaIxEED2Ev.exit125
  %.pn341 = phi { ptr, i32 } [ %.pn340, %bb.z ], [ %i.jq, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ] ; 2 uses
  %.sroa.0149.0181253265337 = phi ptr [ %.sroa.0149.0181253265336, %bb.z ], [ %.sroa.0149.0181253264279, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ] ; 2 uses
  %.sroa.11154.0184252267335 = phi ptr [ %.sroa.11154.0184252267334, %bb.z ], [ %.sroa.11154.0184252266278, %_ZNSt6vectorIxSaIxEED2Ev.exit125 ]
  %.not.i.i.i128 = icmp eq ptr %.sroa.0149.0181253265337, null
  br i1 %.not.i.i.i128, label %_ZNSt6vectorIxSaIxEED2Ev.exit129, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit127
  %.pn.pn192 = phi { ptr, i32 } [ %i.gm, %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread ], [ %.pn341, %_ZNSt6vectorIxSaIxEED2Ev.exit127 ]
  %.sroa.0149.0180191 = phi ptr [ %i.dw, %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread ], [ %.sroa.0149.0181253265337, %_ZNSt6vectorIxSaIxEED2Ev.exit127 ] ; 2 uses
  %.sroa.11154.0183190 = phi ptr [ %i.dx, %_ZNSt6vectorIxSaIxEED2Ev.exit127.thread ], [ %.sroa.11154.0184252267335, %_ZNSt6vectorIxSaIxEED2Ev.exit127 ]
  %i.kx = ptrtoint ptr %.sroa.11154.0183190 to i64
  %i.ky = ptrtoint ptr %.sroa.0149.0180191 to i64
  %i.kz = sub i64 %i.kx, %i.ky
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0180191, i64 noundef %i.kz) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit129

_ZNSt6vectorIxSaIxEED2Ev.exit129:                 ; preds = %bb.aa, %_ZNSt6vectorIxSaIxEED2Ev.exit127
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn192, %bb.aa ], [ %.pn341, %_ZNSt6vectorIxSaIxEED2Ev.exit127 ] ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIxSaIxEED2Ev.exit131, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit129.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit129
  %.pn.pn.pn196 = phi { ptr, i32 } [ %i.gl, %_ZNSt6vectorIxSaIxEED2Ev.exit129.thread ], [ %.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit129 ]
  %i.la = ptrtoint ptr %.sroa.0158.0 to i64
  %i.lb = sub i64 %.sroa.13164.0, %i.la
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.lb) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit131

_ZNSt6vectorIxSaIxEED2Ev.exit131:                 ; preds = %bb.ab, %_ZNSt6vectorIxSaIxEED2Ev.exit129, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.m ], [ %.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit129 ], [ %.pn.pn.pn196, %bb.ab ]
  %i.lc = load ptr, ptr %0, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIxSaIxEED2Ev.exit133, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit131
  %i.ld = load ptr, ptr %i.bv, align 8, !tbaa !49
end_hunk_1
begin_hunk_2_@_ZN6casadi10boolvec_orERKSt6vectorIbSaIbEES4_:bb.a
_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %bb.s, %bb.r
  %i.ck = phi ptr [ %i.cb, %bb.s ], [ null, %bb.r ]
  %i.cl = phi ptr [ %.pre97, %bb.s ], [ %i.p, %bb.r ]
  %i.cm = phi i32 [ %.pre96, %bb.s ], [ %i.d, %bb.r ] ; 2 uses
  %i.cn = phi ptr [ %.pre95, %bb.s ], [ %i.b, %bb.r ] ; 2 uses
  %i.co = phi ptr [ %.pre, %bb.s ], [ %i.e, %bb.r ] ; 2 uses
  %i.cp = icmp ne ptr %i.co, %i.cn
  %i.cq = icmp ne i32 %i.cm, 0
  %.not3.i13.i = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %.not3.i13.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, %_ZNSt14_Bit_referenceaSEb.exit.i
  %.0.allc.019.i = phi ptr [ %.0.allc.1.i, %_ZNSt14_Bit_referenceaSEb.exit.i ], [ %i.ck, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 4 uses
  %.8.allc.018.i = phi i32 [ %.8.allc.1.i, %_ZNSt14_Bit_referenceaSEb.exit.i ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 3 uses
  %.sroa.02.017.i = phi ptr [ %.sroa.02.1.i, %_ZNSt14_Bit_referenceaSEb.exit.i ], [ %i.cl, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 2 uses
  %.sroa.4.016.i = phi i32 [ %.sroa.4.1.i, %_ZNSt14_Bit_referenceaSEb.exit.i ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 3 uses
  %.sroa.59.015.i = phi i32 [ %spec.select12.i, %_ZNSt14_Bit_referenceaSEb.exit.i ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 3 uses
  %.sroa.06.014.i = phi ptr [ %spec.select.i, %_ZNSt14_Bit_referenceaSEb.exit.i ], [ %i.co, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 2 uses
  %i.cr = zext nneg i32 %.sroa.59.015.i to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = load i64, ptr %.sroa.06.014.i, align 8, !tbaa !20
  %i.cu = and i64 %i.ct, %i.cs
  %i.cv = zext nneg i32 %.sroa.4.016.i to i64
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = load i64, ptr %.sroa.02.017.i, align 8, !tbaa !20
  %i.cy = and i64 %i.cx, %i.cw
  %i.cz = or i64 %i.cy, %i.cu
  %.not.i = icmp eq i64 %i.cz, 0
  %i.da = zext nneg i32 %.8.allc.018.i to i64
  %i.db = shl nuw i64 1, %i.da                    ; 2 uses
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.dc = load i64, ptr %.0.allc.019.i, align 8, !tbaa !20
  %i.dd = or i64 %i.dc, %i.db
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.de = xor i64 %i.db, -1
  %i.df = load i64, ptr %.0.allc.019.i, align 8, !tbaa !20
  %i.dg = and i64 %i.df, %i.de
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i:                 ; preds = %bb.u, %bb.t
  %storemerge.i = phi i64 [ %i.dg, %bb.u ], [ %i.dd, %bb.t ]
  store i64 %storemerge.i, ptr %.0.allc.019.i, align 8, !tbaa !20
  %i.dh = add i32 %.sroa.59.015.i, 1
  %i.di = icmp eq i32 %.sroa.59.015.i, 63         ; 2 uses
  %spec.select.idx.i = select i1 %i.di, i64 8, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i, i64 %spec.select.idx.i ; 2 uses
  %spec.select12.i = select i1 %i.di, i32 0, i32 %i.dh ; 2 uses
  %i.dj = add i32 %.sroa.4.016.i, 1
  %i.dk = icmp eq i32 %.sroa.4.016.i, 63          ; 2 uses
  %.sroa.4.1.i = select i1 %i.dk, i32 0, i32 %i.dj
  %.sroa.02.1.idx.i = select i1 %i.dk, i64 8, i64 0
  %.sroa.02.1.i = getelementptr inbounds nuw i8, ptr %.sroa.02.017.i, i64 %.sroa.02.1.idx.i
  %i.dl = add i32 %.8.allc.018.i, 1
  %i.dm = icmp eq i32 %.8.allc.018.i, 63          ; 2 uses
  %.8.allc.1.i = select i1 %i.dm, i32 0, i32 %i.dl
  %.0.allc.1.idx.i = select i1 %i.dm, i64 8, i64 0
  %.0.allc.1.i = getelementptr inbounds nuw i8, ptr %.0.allc.019.i, i64 %.0.allc.1.idx.i
  %i.dn = icmp ne ptr %spec.select.i, %i.cn
  %i.do = icmp ne i32 %spec.select12.i, %i.cm
  %.not3.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %.not3.i.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !207

.loopexit:                                        ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  ret void

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.q
  %.pn51 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %.pn.pn.pn.pn.pn.pn.pn83, %bb.q ]
  resume { ptr, i32 } %.pn51

bb.v:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi16boolvec_to_indexERKSt6vectorIbSaIbEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.8") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = sub nsw i64 0, %i.j
  %.not18 = icmp eq i64 %i.i, %i.k
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit, %bb.a
  %.lcssa14 = phi ptr [ null, %bb.a ], [ %i.au, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ]
  store ptr %.lcssa14, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %i.n = phi ptr [ %i.e, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 3 uses
  %i.o = phi i32 [ %i.d, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 2 uses
  %i.p = phi ptr [ %i.c, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 2 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.as, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 4 uses
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.at, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 4 uses
  %storemerge17 = phi i64 [ 0, %.lr.ph ], [ %i.av, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 5 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 10 uses
  %i.t = lshr i64 %storemerge17, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.t
  %i.v = and i64 %storemerge17, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = load i64, ptr %i.u, align 8, !tbaa !20
  %i.y = and i64 %i.x, %i.w
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %storemerge17, ptr %i.r, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.l, align 8, !tbaa !30
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 7 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #23
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store i64 %storemerge17, ptr %i.al, align 8, !tbaa !38
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.s, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ac) #22
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  store ptr %i.an, ptr %i.l, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai ; 2 uses
  store ptr %i.ao, ptr %i.m, align 8, !tbaa !49
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !47
  %.pre26 = load i32, ptr %i.b, align 8, !tbaa !48
  %.pre27 = load ptr, ptr %1, align 8, !tbaa !47
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ac) #22
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIxSaIxEE9push_backERKx.exit:          ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ap = phi ptr [ %.pre27, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.n, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.aq = phi i32 [ %.pre26, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.o, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.ar = phi ptr [ %.pre, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.p, %bb.d ], [ %i.p, %bb.b ] ; 2 uses
  %i.as = phi ptr [ %i.ao, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.q, %bb.d ], [ %i.q, %bb.b ]
  %i.at = phi ptr [ %i.an, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.z, %bb.d ], [ %i.r, %bb.b ]
  %i.au = phi ptr [ %i.ak, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.s, %bb.d ], [ %i.s, %bb.b ] ; 2 uses
  %i.av = add nuw nsw i64 %storemerge17, 1        ; 2 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.ap to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = zext i32 %i.aq to i64
  %i.bb = add nsw i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.av, %i.bb
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !209
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi16normalized_setupERSi(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::locale", align 8       ; 2 uses
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt6localeC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.25)
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %1, ptr noundef nonnull align 8 dereferenceable(264) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #20
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.e
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare void @_ZNSt6localeC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi16normalized_setupERSo(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::locale", align 8       ; 2 uses
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt6localeC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.25)
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %1, ptr noundef nonnull align 8 dereferenceable(264) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #20
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.e = load ptr, ptr %0, align 8, !tbaa !23
  %i.f = getelementptr i8, ptr %i.e, i64 -24      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !78
  %i.k = and i32 %i.j, -261
  %i.l = or disjoint i32 %i.k, 256
  store i32 %i.l, ptr %i.i, align 8, !tbaa !210
  %i.m = load i64, ptr %i.f, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 16, ptr %i.o, align 8, !tbaa !79
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi16StreamStateGuardC2ERSo(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 12), (16, 32)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !211
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 4 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78
  store i32 %i.g, ptr %i.a, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.c, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !79
  store i64 %i.l, ptr %i.h, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.c, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !84
  store i64 %i.q, ptr %i.m, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.c, align 8
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  tail call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.u) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi16StreamStateGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::locale", align 8       ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !212, !nonnull !213, !align !214 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 4 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.g, ptr %i.h, align 8, !tbaa !78
  %i.i = load i64, ptr %i.c, align 8
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !79
  %i.n = load i64, ptr %i.c, align 8
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !84
  %i.s = load i64, ptr %i.c, align 8
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %1, ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #20
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #25
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi8str_bvecB5cxx11Ey(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !19, !alias.scope !222
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !18, !alias.scope !222
  store i8 0, ptr %i.b, align 8, !tbaa !17, !alias.scope !222
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65, !noalias !222 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !222 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66, !noalias !222 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !222 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !17, !alias.scope !222
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.f:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.079 = phi i64 [ 0, %bb.a ], [ %i.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  %i.u = shl nuw i64 1, %.079
  %i.v = and i64 %i.u, %1
  %.not = icmp eq i64 %i.v, 0
  %.str.26..str.27 = select i1 %.not, ptr @.str.27, ptr @.str.26
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %.str.26..str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.x = add nuw nsw i64 %.079, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, 64
  br i1 %exitcond.not, label %bb.b, label %bb.f, !llvm.loop !219

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !23
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !23
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !17
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #20
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !23
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.g:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6casadi7bvec_orEPKyx(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i64 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi14 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <2 x i64>, ptr %i.c, align 8, !tbaa !38
  %wide.load15 = load <2 x i64>, ptr %i.d, align 8, !tbaa !38
  %i.e = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.f = or <2 x i64> %wide.load15, %vec.phi14    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.f, %i.e
  %i.h = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %.013.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0912.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %.013 = phi i64 [ %i.l, %.lr.ph ], [ %.013.ph, %.lr.ph.preheader16 ] ; 2 uses
  %.0912 = phi i64 [ %i.k, %.lr.ph ], [ %.0912.ph, %.lr.ph.preheader16 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  %i.k = or i64 %i.j, %.0912                      ; 2 uses
  %i.l = add nuw nsw i64 %.013, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !224

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.a
  %.010 = phi i64 [ -1, %bb.a ], [ 0, %.preheader ], [ %i.h, %middle.block ], [ %i.k, %.lr.ph ]
  ret i64 %.010
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi15CasadiExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6casadi15CasadiExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6casadi15CasadiExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22, !inline_history !225
  br label %_ZN6casadi15CasadiExceptionD2Ev.exit

_ZN6casadi15CasadiExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !225
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6casadi15CasadiException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227
  tail call void @_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !228  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !43
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
end_hunk_2
