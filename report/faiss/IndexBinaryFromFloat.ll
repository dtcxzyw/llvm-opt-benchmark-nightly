Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexBinaryFromFloat?download=true
inline.NumInlined: 137
inline.NumDeleted: 73
begin_hunk_0_@_ZN5faiss11IndexBinary15add_with_ids_exElPKvNS_11NumericTypeEPKl:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !29
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn13, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn12

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss20IndexBinaryFromFloat6searchElPKhlPiPlPKNS_16SearchParametersE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, ptr nofree noundef readnone captures(address_is_null) %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !33
  store i8 0, ptr %i.a, align 8, !tbaa !29
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.f)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %7, align 8, !tbaa !28
  %i.h = load i64, ptr %i.b, align 8, !tbaa !33
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.g, i64 noundef %i.h, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.k = call ptr @__cxa_allocate_exception(i64 40) #15 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss20IndexBinaryFromFloat6searchElPKhlPiPlPKNS_16SearchParametersE, ptr noundef nonnull @.str.2, i32 noundef 58)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.x unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn48 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.l, %bb.h ]
  %i.m = load ptr, ptr %7, align 8, !tbaa !28     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !29
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.q = icmp sgt i64 %3, 0
  br i1 %i.q, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !33
  store i8 0, ptr %i.r, align 8, !tbaa !29
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #15 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.w)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %8, align 8, !tbaa !28
  %i.y = load i64, ptr %i.s, align 8, !tbaa !33
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #15 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.v)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.ab = call ptr @__cxa_allocate_exception(i64 40) #15 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss20IndexBinaryFromFloat6searchElPKhlPiPlPKNS_16SearchParametersE, ptr noundef nonnull @.str.2, i32 noundef 59)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.x unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ab) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.ac, %bb.q ]
  %i.ad = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.r
  %i.af = load i64, ptr %i.r, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.w

bb.s:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i32 %i.ai, 0
  %i.al = shl nsw i64 %i.aj, 17
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #17 ; 4 uses
  %i.ao = and i64 %3, 422212465065984
  %.not45 = icmp eq i64 %i.ao, 0
  %i.ap = shl i64 %3, 17
  %i.aq = select i1 %.not45, i64 %i.ap, i64 -1
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #17
          to label %.preheader73 unwind label %bb.t ; 5 uses

.preheader73:                                     ; preds = %bb.s
  %i.as = icmp sgt i64 %1, 0
  br i1 %i.as, label %.lr.ph76, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56

.lr.ph76:                                         ; preds = %.preheader73
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.u

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56: ; preds = %._crit_edge, %.preheader73
  tail call void @_ZdaPv(ptr noundef nonnull %i.ar) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #16
  ret void

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit62

bb.u:                                             ; preds = %.lr.ph76, %._crit_edge
  %indvars.iv78 = phi i64 [ %1, %.lr.ph76 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.03375 = phi i64 [ 0, %.lr.ph76 ], [ %i.bt, %._crit_edge ] ; 4 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv78, i64 32768)
  %i.aw = mul i64 %3, %smin                       ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 1) ; 3 uses
  %i.ax = sub nuw nsw i64 %1, %.03375
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ax, i64 32768) ; 2 uses
  %i.ay = load i32, ptr %i.ah, align 8, !tbaa !13
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %.sroa.speculated, %i.az
  %i.bb = load i32, ptr %i.at, align 4, !tbaa !30
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %.03375, %i.bc
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.bd
  invoke void @_ZN5faiss14binary_to_realEmPKhPf(i64 noundef %i.ba, ptr noundef %i.be, ptr noundef nonnull %i.an)
          to label %bb.v unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit59

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.bg = mul nuw nsw i64 %.03375, %3             ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bg
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(36) %i.bf, i64 noundef %.sroa.speculated, ptr noundef nonnull %i.an, i64 noundef %3, ptr noundef nonnull %i.ar, ptr noundef %i.bh, ptr noundef null)
          to label %.lr.ph unwind label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit59

.lr.ph:                                           ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bg ; 2 uses
  %min.iters.check = icmp slt i64 %i.aw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %smax, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index
  %wide.load = load <4 x float>, ptr %i.bm, align 4, !tbaa !42
  %i.bn = fpext <4 x float> %wide.load to <4 x double>
  %i.bo = fmul <4 x double> %i.bn, splat (double 2.500000e-01)
  %i.bp = tail call <4 x double> @llvm.round.v4f64(<4 x double> %i.bo)
  %i.bq = fptosi <4 x double> %i.bp to <4 x i32>
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index
  store <4 x i32> %i.bq, ptr %i.br, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bt = add nuw nsw i64 %.03375, 32768          ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %1
  %indvars.iv.next79 = add i64 %indvars.iv78, -32768
  br i1 %i.bu, label %bb.u, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit56, !llvm.loop !40

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit59: ; preds = %bb.v, %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ar) #16
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit62

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !42
  %i.by = fpext float %i.bx to double
  %i.bz = fmul double %i.by, 2.500000e-01
  %i.ca = tail call double @llvm.round.f64(double %i.bz)
  %i.cb = fptosi double %i.ca to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %smax
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !41

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit62: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit59, %bb.t
  %.pn46 = phi { ptr, i32 } [ %i.bv, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit59 ], [ %i.av, %bb.t ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #16
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn46, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit62 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  resume { ptr, i32 } %.pn48.pn

bb.x:                                             ; preds = %bb.p, %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss11IndexBinary9search_exElPKvNS_11NumericTypeElPiPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = icmp eq i32 %3, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss11IndexBinary9search_exElPKvNS_11NumericTypeElPiPlPKNS_16SearchParametersE, ptr noundef nonnull @.str.8, i32 noundef 130)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %8, align 8, !tbaa !28     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !29
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn15 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn16, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZNK5faiss11IndexBinary12range_searchElPKhiPNS_17RangeSearchResultEPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20IndexBinaryFromFloat5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) initializes((16, 24)) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(36) %i.b)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.i, align 8, !tbaa !24
  ret void
}

declare noundef i64 @_ZN5faiss11IndexBinary10remove_idsERKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1) unnamed_addr #2

declare void @_ZNK5faiss11IndexBinary11reconstructElPh(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss11IndexBinary13reconstruct_nEllPh(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss11IndexBinary22search_and_reconstructElPKhlPiPlPhPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN5faiss11IndexBinary10merge_fromERS0_l(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) unnamed_addr #2

declare void @_ZNK5faiss11IndexBinary26check_compatible_for_mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare noundef i64 @_ZNK5faiss11IndexBinary12sa_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN5faiss11IndexBinary12add_sa_codesElPKhPKl(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20IndexBinaryFromFloatC2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5faiss11IndexBinaryC2ElNS_10MetricTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i32 noundef 1)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN5faiss20IndexBinaryFromFloatE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.b, align 8, !tbaa !34
  ret void
}

declare void @_ZN5faiss11IndexBinaryC2ElNS_10MetricTypeE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20IndexBinaryFromFloatC2EPNS_5IndexE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  %i.c = sext i32 %i.b to i64
  tail call void @_ZN5faiss11IndexBinaryC2ElNS_10MetricTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i32 noundef 1)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN5faiss20IndexBinaryFromFloatE, i64 16), ptr %0, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47, !range !35, !noundef !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.g, ptr %i.h, align 1, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.k, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss20IndexBinaryFromFloatD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN5faiss20IndexBinaryFromFloatE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(36) %i.e) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  tail call void @_ZN5faiss11IndexBinaryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5faiss11IndexBinaryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !37

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #17 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29
  store i8 %i.u, ptr %i.s, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !29
  store i8 %i.y, ptr %i.x, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !28    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !28
  store i64 %.0, ptr %i.h, align 8, !tbaa !29
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #18
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !37

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !28
  store i64 %i.c, ptr %i.a, align 8, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.j, ptr %i.i, align 1, !tbaa !29
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !29
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.round.v4f64(<4 x double>) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!"_ZTSN5faiss10MetricTypeE", !5, i64 0}
!12 = !{!"_ZTSN5faiss11IndexBinaryE", !6, i64 8, !6, i64 12, !9, i64 16, !10, i64 24, !10, i64 25, !11, i64 28}
!13 = !{!12, !6, i64 8}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTSN5faiss5IndexE", !14, i64 0}
!16 = !{!"_ZTSN5faiss20IndexBinaryFromFloatE", !12, i64 0, !15, i64 32, !10, i64 40}
!17 = !{!16, !15, i64 32}
!18 = !{!"vtable pointer", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!12, !10, i64 25}
!21 = !{!"float", !5, i64 0}
!22 = !{!"_ZTSN5faiss5IndexE", !6, i64 8, !9, i64 16, !10, i64 24, !10, i64 25, !11, i64 28, !21, i64 32}
!23 = !{!22, !9, i64 16}
!24 = !{!12, !9, i64 16}
!25 = !{!"p1 omnipotent char", !14, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !9, i64 8, !5, i64 16}
!28 = !{!27, !25, i64 0}
!29 = !{!5, !5, i64 0}
!30 = !{!12, !6, i64 12}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!26, !25, i64 0}
!33 = !{!27, !9, i64 8}
!34 = !{!16, !10, i64 40}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !31, !44, !45}
!40 = distinct !{!40, !31}
!41 = distinct !{!41, !31, !45, !44}
!42 = !{!21, !21, i64 0}
!43 = !{!6, !6, i64 0}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!22, !6, i64 8}
!47 = !{!22, !10, i64 25}
end_hunk_1
