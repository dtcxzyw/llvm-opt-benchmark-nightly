inline.NumInlined: 5197
inline.NumDeleted: 1387
begin_hunk_0_@_ZN6duckdb16TextTreeRenderer12FormatNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.p

bb.p:                                             ; preds = %.noexc42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  %i.bo = phi ptr [ %.pre.i.i41, %.noexc42 ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  store i8 %i.bf, ptr %i.bp, align 1, !tbaa !26
  store i64 %i.bh, ptr %i.ag, align 8, !tbaa !23
  %i.bq = load ptr, ptr %0, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  store i8 0, ptr %i.br, align 1, !tbaa !26
  %i.bs = add nuw i64 %.03062, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %.032.lcssa
  br i1 %exitcond.not, label %.preheader.loopexit, label %.lr.ph64, !llvm.loop !405

.lr.ph66:                                         ; preds = %.preheader, %bb.y
  %.065 = phi i64 [ %i.ct, %bb.y ], [ %.032.lcssa80, %.preheader ] ; 2 uses
  %i.bt = load ptr, ptr %2, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.065
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !26  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 46
  br i1 %i.bw, label %bb.q, label %.lr.ph66._crit_edge

.lr.ph66._crit_edge:                              ; preds = %.lr.ph66
  %.pre68 = load i64, ptr %i.ak, align 8, !tbaa !23
  %.pre70 = load ptr, ptr %0, align 8, !tbaa !32
  br label %bb.v

bb.q:                                             ; preds = %.lr.ph66
  %i.bx = load i8, ptr %i.b, align 2, !tbaa !403  ; 2 uses
  %.not = icmp eq i8 %i.bx, 0
  %.pre69 = load i64, ptr %i.ak, align 8, !tbaa !23 ; 5 uses
  %.pre71 = load ptr, ptr %0, align 8, !tbaa !32  ; 3 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = add i64 %.pre69, 1                      ; 2 uses
  %i.bz = icmp eq ptr %.pre71, %i.al              ; 2 uses
  br i1 %i.bz, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp ult i64 %.pre69, 16
  tail call void @llvm.assume(i1 %i.ca)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44: ; preds = %bb.s, %bb.r
  %i.cb = load i64, ptr %i.al, align 8
  %i.cc = select i1 %i.bz, i64 15, i64 %i.cb
  %i.cd = icmp ugt i64 %i.by, %i.cc
  br i1 %i.cd, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre69, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc46 unwind label %bb.u

.noexc46:                                         ; preds = %bb.t
  %.pre.i.i45 = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44, %.noexc46
  %i.ce = phi ptr [ %.pre.i.i45, %.noexc46 ], [ %.pre71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.pre69
  store i8 %i.bx, ptr %i.cf, align 1, !tbaa !26
  br label %bb.y

bb.u:                                             ; preds = %bb.x, %bb.t
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %.lr.ph66._crit_edge, %bb.q
  %i.ch = phi ptr [ %.pre70, %.lr.ph66._crit_edge ], [ %.pre71, %bb.q ] ; 2 uses
  %i.ci = phi i64 [ %.pre68, %.lr.ph66._crit_edge ], [ %.pre69, %bb.q ] ; 4 uses
  %i.cj = add i64 %i.ci, 1                        ; 2 uses
  %i.ck = icmp eq ptr %i.ch, %i.al                ; 2 uses
  br i1 %i.ck, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48

bb.w:                                             ; preds = %bb.v
  %i.cl = icmp ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.cl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48: ; preds = %bb.w, %bb.v
  %i.cm = load i64, ptr %i.al, align 8
  %i.cn = select i1 %i.ck, i64 15, i64 %i.cm
  %i.co = icmp ugt i64 %i.cj, %i.cn
  br i1 %i.co, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ci, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc50 unwind label %bb.u

.noexc50:                                         ; preds = %bb.x
  %.pre.i.i49 = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48, %.noexc50
  %i.cp = phi ptr [ %.pre.i.i49, %.noexc50 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i48 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ci
  store i8 %i.bv, ptr %i.cq, align 1, !tbaa !26
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47
  %.sink = phi i64 [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47 ] ; 2 uses
  store i64 %.sink, ptr %i.ak, align 8, !tbaa !23
  %i.cr = load ptr, ptr %0, align 8, !tbaa !32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink
  store i8 0, ptr %i.cs, align 1, !tbaa !26
  %i.ct = add nuw i64 %.065, 1                    ; 2 uses
  %i.cu = load i64, ptr %i.v, align 8, !tbaa !23
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph66, label %.loopexit, !llvm.loop !406

bb.z:                                             ; preds = %bb.u, %bb.l
  %i.cw = phi ptr [ %i.af, %bb.l ], [ %i.al, %bb.u ]
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.cg, %bb.u ]
  %i.cx = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cw
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  tail call void @_ZdlPv(ptr noundef %i.cx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.y, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16TextTreeRenderer16RenderBoxContentERNS_10RenderTreeERSom(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.duckdb::optional_ptr.99", align 8 ; 10 uses
  %13 = alloca %"class.duckdb::vector.136", align 8 ; 14 uses
  %14 = alloca %"class.duckdb::optional_ptr.99", align 8 ; 6 uses
  %15 = alloca %"class.duckdb::optional_ptr.99", align 8 ; 30 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 31 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !212  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.not903 = icmp eq i64 %i.o, 0
  br i1 %.not903, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.r = icmp ugt i64 %i.o, 384307168202282325
  br i1 %i.r, label %bb.c, label %_ZNKSt6vectorIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEESaIS9_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #26
          to label %.noexc817 unwind label %bb.d

.noexc817:                                        ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEESaIS9_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.s = mul nuw nsw i64 %i.o, 24                 ; 2 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.lr.ph.a unwind label %bb.d   ; 3 uses

.lr.ph.a:                                         ; preds = %_ZNKSt6vectorIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEESaIS9_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false)
  store ptr %i.t, ptr %13, align 8, !tbaa !407
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.o ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !410
  store ptr %i.u, ptr %i.q, align 8, !tbaa !411
  %.pre = load i64, ptr %i.n, align 8, !tbaa !212
  %56 = icmp eq i64 %.pre, 0
  br i1 %56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.a
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %bb.o, %bb.a, %.lr.ph.a
  %.0.lcssa = phi i64 [ 0, %.lr.ph.a ], [ 0, %bb.a ], [ %.1, %bb.o ] ; 4 uses
  %i.v = add nsw i64 %.0.lcssa, 1
  %i.w = lshr i64 %i.v, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 20 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.br = add i64 %3, 1                           ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %35, i64 31
  %i.dg = getelementptr inbounds nuw i8, ptr %39, i64 26
  %i.dh = getelementptr inbounds nuw i8, ptr %42, i64 31
  %i.di = getelementptr inbounds nuw i8, ptr %48, i64 31
  %i.dj = getelementptr inbounds nuw i8, ptr %31, i64 17
  %i.dk = getelementptr inbounds nuw i8, ptr %27, i64 17
  %i.dl = getelementptr inbounds nuw i8, ptr %29, i64 17
  %i.dm = getelementptr inbounds nuw i8, ptr %33, i64 17
  %i.dn = getelementptr inbounds nuw i8, ptr %25, i64 17
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 17
  br label %.preheader966

bb.d:                                             ; preds = %_ZNKSt6vectorIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEESaIS9_EE12_M_check_lenEmPKc.exit.i, %bb.c
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.01496 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %.0931495 = phi i64 [ 0, %.lr.ph ], [ %i.en, %bb.o ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.dq = invoke ptr @_ZN6duckdb10RenderTree7GetNodeEmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0931495, i64 noundef %3)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.dq, ptr %14, align 8
  %.not909 = icmp eq ptr %i.dq, null
  br i1 %.not909, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb12optional_ptrINS_14RenderTreeNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.dr = load ptr, ptr %14, align 8, !tbaa !93
  %i.ds = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEELb1ESaIS8_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %.0931495)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.du = load i64, ptr %57, align 8, !tbaa !412
  invoke void @_ZN6duckdb16TextTreeRenderer16SplitUpExtraInfoERKNS_27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_6vectorIS7_Lb1ESaIS7_EEEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 noundef %i.du)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.dv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEELb1ESaIS8_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %.0931495)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !108
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !111
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 5
  %i.ed = icmp ugt i64 %i.ec, %.01496
  br i1 %i.ed, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEELb1ESaIS8_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %.0931495)
          to label %bb.m unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !108
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !111
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 5
  br label %bb.o

bb.n:                                             ; preds = %bb.g, %bb.l, %bb.j, %bb.i, %bb.h, %bb.e
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.ju

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.f
  %.1 = phi i64 [ %i.el, %bb.m ], [ %.01496, %bb.k ], [ %.01496, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.en = add nuw i64 %.0931495, 1                ; 2 uses
  %i.eo = load i64, ptr %i.n, align 8, !tbaa !212
  %i.ep = icmp ult i64 %i.en, %i.eo
  br i1 %i.ep, label %bb.e, label %._crit_edge, !llvm.loop !413

.preheader966:                                    ; preds = %._crit_edge, %bb.js
  %.0901508 = phi i64 [ 0, %._crit_edge ], [ %i.aof, %bb.js ] ; 8 uses
  %i.eq = load i64, ptr %i.n, align 8, !tbaa !212 ; 2 uses
  %.not1510 = icmp eq i64 %i.eq, 0
  br i1 %.not1510, label %._crit_edge1506, label %.lr.ph1505

.lr.ph1505:                                       ; preds = %.preheader966
  %i.er = icmp eq i64 %.0901508, 0
  %i.es = add i64 %.0901508, -1                   ; 3 uses
  %i.et = add i64 %.0901508, 1
  %i.eu = icmp eq i64 %i.et, %.0.lcssa
  %i.ev = icmp eq i64 %.0901508, %.0.lcssa
  %i.ew = icmp eq i64 %.0901508, %i.w             ; 2 uses
  %.not145 = icmp ult i64 %.0901508, %i.w
  br label %bb.s

bb.p:                                             ; preds = %bb.js
  %i.ex = load ptr, ptr %13, align 8, !tbaa !407  ; 3 uses
  %i.ey = load ptr, ptr %i.p, align 8, !tbaa !410 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ex, %i.ey
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fh, %_ZSt8_DestroyIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEEEvPT_.exit.i.i.i ], [ %i.ex, %bb.p ] ; 4 uses
  %i.ez = load ptr, ptr %.05.i.i.i, align 8, !tbaa !111 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !108 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ez, %i.fb
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ff, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ez, %.lr.ph.i.i.i ] ; 3 uses
  %i.fc = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !32 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fc) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ff, %i.fb
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !111
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.fg = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.ez, %.lr.ph.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fg) #25
  br label %_ZSt8_DestroyIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEEEvPT_.exit.i.i.i: ; preds = %bb.q, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fh, %i.ey
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !414

_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !407
  br label %_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.fi = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.ex, %bb.p ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEESaIS9_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #25
  br label %_ZNSt6vectorIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEESaIS9_EED2Ev.exit

_ZNSt6vectorIN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEES9_EvT_SB_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void

bb.s:                                             ; preds = %.lr.ph1505, %bb.jp
  %i.fj = phi i64 [ %i.eq, %.lr.ph1505 ], [ %i.anv, %bb.jp ] ; 2 uses
  %.0891502 = phi i64 [ 0, %.lr.ph1505 ], [ %i.anu, %bb.jp ] ; 17 uses
  %i.fk = load i64, ptr %i.y, align 8, !tbaa !359
  %i.fl = mul i64 %i.fk, %.0891502
  %i.fm = load i64, ptr %i.x, align 8, !tbaa !363
  %.not144 = icmp ult i64 %i.fl, %i.fm
  br i1 %.not144, label %.preheader, label %._crit_edge1506

.preheader:                                       ; preds = %bb.s
  %i.fn = icmp ult i64 %.0891502, %i.fj
  br i1 %i.fn, label %.lr.ph1499, label %._crit_edge1500

._crit_edge1500:                                  ; preds = %bb.u, %.preheader
  %.088.lcssa = phi i1 [ false, %.preheader ], [ %i.ft, %bb.u ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.fo = invoke ptr @_ZN6duckdb10RenderTree7GetNodeEmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0891502, i64 noundef %3)
          to label %bb.w unwind label %bb.ay      ; 2 uses

.lr.ph1499:                                       ; preds = %.preheader, %bb.u
  %i.fp = phi i64 [ %i.fs, %bb.u ], [ %i.fj, %.preheader ]
  %.0871498 = phi i64 [ %i.fu, %bb.u ], [ 0, %.preheader ] ; 2 uses
  %.0881497 = phi i1 [ %i.ft, %bb.u ], [ false, %.preheader ]
  br i1 %.0881497, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph1499
  %i.fq = add nuw i64 %.0871498, %.0891502
  %i.fr = invoke noundef zeroext i1 @_ZN6duckdb10RenderTree7HasNodeEmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fq, i64 noundef %3)
          to label %._crit_edge1541 unwind label %bb.v

._crit_edge1541:                                  ; preds = %bb.t
  %.pre.a = load i64, ptr %i.n, align 8, !tbaa !212
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge1541, %.lr.ph1499
  %i.fs = phi i64 [ %i.fp, %.lr.ph1499 ], [ %.pre.a, %._crit_edge1541 ] ; 2 uses
  %i.ft = phi i1 [ true, %.lr.ph1499 ], [ %i.fr, %._crit_edge1541 ] ; 2 uses
  %i.fu = add nuw i64 %.0871498, 1                ; 2 uses
  %i.fv = add nuw i64 %i.fu, %.0891502
  %i.fw = icmp ult i64 %i.fv, %i.fs
  br i1 %i.fw, label %.lr.ph1499, label %._crit_edge1500, !llvm.loop !415

bb.v:                                             ; preds = %bb.t
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.w:                                             ; preds = %._crit_edge1500
  store ptr %i.fo, ptr %15, align 8
  %.not904 = icmp eq ptr %i.fo, null
  br i1 %.not904, label %bb.x, label %bb.cu

bb.x:                                             ; preds = %bb.w
  br i1 %i.ew, label %bb.y, label %bb.bx

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.fy = invoke ptr @_ZN6duckdb10RenderTree7GetNodeEmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0891502, i64 noundef %3)
          to label %.noexc220 unwind label %.loopexit.split-lp ; 2 uses

.noexc220:                                        ; preds = %bb.y
  store ptr %i.fy, ptr %12, align 8
  %i.fz = invoke noundef zeroext i1 @_ZN6duckdb10RenderTree7HasNodeEmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0891502, i64 noundef %i.br)
          to label %.noexc221 unwind label %.loopexit.split-lp

.noexc221:                                        ; preds = %.noexc220
  %i.ga = zext i1 %i.fz to i64                    ; 2 uses
  %.not23.i = icmp eq ptr %i.fy, null
  br i1 %.not23.i, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.noexc221
  %i.gb = icmp eq i64 %.0891502, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
end_hunk_0
begin_hunk_1_@_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRPcEEvOT_:bb.a
  br i1 %.not, label %bb.b, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.pre8 = ptrtoaddr ptr %.pre to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !865  ; 8 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %min.iters.check = icmp ult i64 %i.b, 4
  %i.g = ptrtoaddr ptr %i.d to i64
  %i.h = sub i64 %.pre8, %i.g
  %diff.check = icmp ult i64 %i.h, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.b, 32
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.b, 28
  %n.vec = and i64 %i.b, -32                      ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %n.vec
  %i.j = getelementptr i8, ptr %.pre, i64 %n.vec  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %next.gep10 = getelementptr i8, ptr %.pre, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26
  %wide.load11 = load <16 x i8>, ptr %i.k, align 1, !tbaa !26
  %i.l = getelementptr i8, ptr %next.gep10, i64 16
  store <16 x i8> %wide.load, ptr %next.gep10, align 1, !tbaa !26
  store <16 x i8> %wide.load11, ptr %i.l, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !995

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.b, -4                     ; 4 uses
  %i.n = getelementptr i8, ptr %i.d, i64 %n.vec14
  %i.o = getelementptr i8, ptr %.pre, i64 %n.vec14 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %next.gep16 = getelementptr i8, ptr %i.d, i64 %index15
  %next.gep17 = getelementptr i8, ptr %.pre, i64 %index15
  %wide.load18 = load <4 x i8>, ptr %next.gep16, align 1, !tbaa !26
  store <4 x i8> %wide.load18, ptr %next.gep17, align 1, !tbaa !26
  %index.next19 = add nuw i64 %index15, 4         ; 2 uses
  %i.p = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1662

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.b, %n.vec14
  br i1 %cmp.n20, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i.ph = phi ptr [ %.pre, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %i.q = add i64 %i.b, %i.e                       ; 2 uses
  %.011.i.i.ph25 = ptrtoint ptr %.011.i.i.ph to i64 ; 2 uses
  %i.r = sub i64 %i.q, %.011.i.i.ph25
  %xtraiter = and i64 %i.r, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.011.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.0810.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.prol ], [ %.0810.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.s = load i8, ptr %.011.i.i.prol, align 1, !tbaa !26
  store i8 %i.s, ptr %.0810.i.i.prol, align 1, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1663

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa24.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.0810.i.i.unr = phi ptr [ %.0810.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %i.v = sub i64 %.011.i.i.ph25, %i.q
  %i.w = icmp ugt i64 %i.v, -8
  br i1 %i.w, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.011.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.011.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.0810.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.x = load i8, ptr %.011.i.i, align 1, !tbaa !26
  store i8 %i.x, ptr %.0810.i.i, align 1, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 1
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !26
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 2
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !26
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 3
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !26
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 4
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !26
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 5
  %i.al = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 5
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !26
  store i8 %i.am, ptr %i.al, align 1, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 6
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 6
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !26
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 7
  %i.ar = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 7
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !26
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 8 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.at, %i.f
  br i1 %.not.i.i.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, label %.lr.ph.i.i, !llvm.loop !1664

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.o, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %.lcssa24.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i ] ; 2 uses
  store ptr %.lcssa, ptr %1, align 8, !tbaa !854
  br label %bb.b

bb.b:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit, %bb.a
  %i.av = phi ptr [ %.lcssa, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1582 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.bb, i64 %i.ax, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit:              ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.av, %bb.b ], [ %i.ba, %bb.c ] ; 2 uses
  store ptr %.0.i.i, ptr %1, align 8, !tbaa !854
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1659
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bf = load <2 x i64>, ptr %i.bc, align 8, !tbaa !92
  store <2 x i64> %i.bf, ptr %2, align 16
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.bg ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit
  %.0.i.i6 = phi ptr [ %i.bh, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit ], [ %i.bm, %bb.d ]
  %i.bi = call noundef i32 @_ZNK6duckdb10uhugeint_tcvjEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = and i8 %i.bj, 7
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr inbounds i8, ptr %.0.i.i6, i64 -1 ; 2 uses
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 3)
  %i.bn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10uhugeint_trSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
  %i.bo = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.bo, label %bb.d, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEclIRPcEEvOT_.exit, !llvm.loop !1660

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEclIRPcEEvOT_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.bh, ptr %1, align 8, !tbaa !854
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [78 x i8], align 16               ; 6 uses
  %3 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 8 uses
  %7 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 4 uses
  store i64 %1, ptr %5, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.c = call { i64, i64 } @_ZNK6duckdb9hugeint_tcvNS_10uhugeint_tEEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  store i64 %i.d, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.f = extractvalue { i64, i64 } %i.c, 1
  store i64 %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = load <2 x i64>, ptr %5, align 16, !tbaa !92
  store <2 x i64> %i.g, ptr %3, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
  %i.h = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.h, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.03.0.copyload.pre = load i64, ptr %6, align 8, !tbaa !92
  %.sroa.24.0.copyload.pre = load i64, ptr %i.e, align 8, !tbaa !92
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.i = call { i64, i64 } @_ZNK6duckdb10uhugeint_tcoEv(ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  store i64 %i.j, ptr %7, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = extractvalue { i64, i64 } %i.i, 1
  store i64 %i.l, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 1)
  %i.m = call { i64, i64 } @_ZNK6duckdb10uhugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  store i64 %i.n, ptr %6, align 8, !tbaa !92
  store i64 %i.o, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.24.0.copyload = phi i64 [ %.sroa.24.0.copyload.pre, %._crit_edge ], [ %i.o, %bb.b ]
  %.sroa.03.0.copyload = phi i64 [ %.sroa.03.0.copyload.pre, %._crit_edge ], [ %i.n, %bb.b ]
  %i.p = call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload) ; 2 uses
  %i.q = zext i1 %i.h to i64
  %i.r = sext i32 %i.p to i64
  %i.s = add nsw i64 %i.r, %i.q
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !863  ; 2 uses
  %i.v = add i64 %i.s, %i.u                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !853
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !7
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.v), !inline_history !1042
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit: ; preds = %bb.c, %bb.d
  store i64 %i.v, ptr %i.t, align 8, !tbaa !863
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !851
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 3 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 45, ptr %i.ad, align 1, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit
  %.0 = phi ptr [ %i.ae, %bb.e ], [ %i.ad, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit ]
  %.sroa.0.0.copyload = load i64, ptr %6, align 8, !tbaa !92
  %.sroa.2.0.copyload = load i64, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.af = call noundef ptr @_ZN10duckdb_fmt2v68internal14format_decimalIN6duckdb10uhugeint_tEcZNS1_14format_decimalIcPcS4_EET0_S7_T1_iEUlS6_E_EEPS7_SA_T_iS8_(ptr noundef nonnull %i.a, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.p) ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not9.i.i.i.i, label %_ZN10duckdb_fmt2v68internal14format_decimalIcPcN6duckdb10uhugeint_tEEET0_S6_T1_i.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.a to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr nonnull align 16 %i.a, i64 %i.ai, i1 false), !tbaa !26
  br label %_ZN10duckdb_fmt2v68internal14format_decimalIcPcN6duckdb10uhugeint_tEEET0_S6_T1_i.exit

_ZN10duckdb_fmt2v68internal14format_decimalIcPcN6duckdb10uhugeint_tEEET0_S6_T1_i.exit: ; preds = %bb.f, %.lr.ph.i.i.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

declare { i64, i64 } @_ZNK6duckdb10uhugeint_tcoEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare { i64, i64 } @_ZNK6duckdb10uhugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [78 x i8], align 16               ; 6 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::int_writer.229", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !906  ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !1002
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !915
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.e, align 8, !tbaa !92
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !1665
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.h = load i8, ptr %i.g, align 1
  %i.i = lshr i8 %i.h, 4
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %switch.i.i = icmp samesign ult i8 %i.j, 2
  br i1 %switch.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.j, 2
  %i.l = select i1 %i.k, i8 43, i8 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %i.l, ptr %i.m, align 8, !tbaa !26
  store i32 1, ptr %i.f, align 4, !tbaa !1665
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %1, i64 %2) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !863  ; 2 uses
  %i.r = add i64 %i.q, %i.o                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !853
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !7
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.r), !inline_history !1667
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.r, ptr %i.p, align 8, !tbaa !863
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.z = call noundef ptr @_ZN10duckdb_fmt2v68internal14format_decimalIN6duckdb10uhugeint_tEcZNS1_14format_decimalIcPcS4_EET0_S7_T1_iEUlS6_E_EEPS7_SA_T_iS8_(ptr noundef nonnull %i.a, i64 %1, i64 %2, i32 noundef %i.n) ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.a, %i.z
  br i1 %.not9.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.a to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 16 %i.a, i64 %i.ad, i1 false), !tbaa !26
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit: ; preds = %bb.f, %.lr.ph.i.i.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::padded_int_writer.232", align 8 ; 10 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 4, !tbaa !877
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !876   ; 2 uses
  switch i8 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 0, label %bb.d
    i8 100, label %bb.d
    i8 120, label %bb.g
    i8 88, label %bb.g
    i8 98, label %bb.h
    i8 66, label %bb.h
    i8 111, label %bb.i
    i8 110, label %bb.j
    i8 108, label %bb.j
    i8 76, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !92
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !92
  %i.f = tail call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %.sroa.01.0.copyload.i, i64 %.sroa.22.0.copyload.i) ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !1668, !nonnull !564, !align !565
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1665
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1669, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !26    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = and i8 %i.r, 15                          ; 2 uses
  %i.t = icmp eq i8 %i.s, 4
  br i1 %i.t, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %bb.d
end_hunk_1
