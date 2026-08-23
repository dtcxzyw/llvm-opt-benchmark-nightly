Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/specbond?download=true
inline.NumInlined: 816
inline.NumDeleted: 350
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11SpecialBondC2EOS_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !15
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !33
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !20
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.am, ptr %i.an, align 8, !tbaa !17
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !33
  store i64 0, ptr %i.al, align 8, !tbaa !17
  store i8 0, ptr %i.ae, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !15
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i64, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !33
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !20
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !17
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !33
  store i64 0, ptr %i.az, align 8, !tbaa !17
  store i8 0, ptr %i.as, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !15
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !17 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !33
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !20
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !17
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !33
  store i64 0, ptr %i.bn, align 8, !tbaa !17
  store i8 0, ptr %i.bg, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !15
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !33 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !17 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !33
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !20
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !17
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !33
  store i64 0, ptr %i.cb, align 8, !tbaa !17
  store i8 0, ptr %i.bu, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !23
  store float %i.cg, ptr %i.ce, align 8, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.cj = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !74
  store <2 x ptr> %i.cj, ptr %i.ch, align 8, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !40
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z18makeDisulfideBondsP7t_atomsP8t_symtabPA3_fbb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.11") align 8 initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::vector", align 8      ; 16 uses
  %i.e = alloca [10 x i8], align 1                ; 5 uses
  %11 = alloca %"class.std::vector.21", align 8   ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %struct.DisulfideBond, align 8     ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_Z20generateSpecialBondsv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.f = load ptr, ptr %10, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit191, label %.preheader359

.preheader359:                                    ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !77
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader359
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173
  %i.o = ptrtoint ptr %.sroa.22.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader359
  %.sroa.30.0.lcssa = phi ptr [ null, %.preheader359 ], [ %.sroa.30.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.22.0.lcssa = phi i64 [ 0, %.preheader359 ], [ %i.o, %._crit_edge.loopexit ]
  %.sroa.0292.0.lcssa = phi ptr [ null, %.preheader359 ], [ %.sroa.0292.1, %._crit_edge.loopexit ] ; 13 uses
  %.sroa.21.0.lcssa = phi ptr [ null, %.preheader359 ], [ %.sroa.21.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0316.0.lcssa = phi ptr [ null, %.preheader359 ], [ %.sroa.0316.2, %._crit_edge.loopexit ] ; 8 uses
  %i.p = ptrtoint ptr %.sroa.0292.0.lcssa to i64  ; 2 uses
  %i.q = sub i64 %.sroa.22.0.lcssa, %i.p          ; 3 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 7 uses
  %i.s = trunc i64 %i.r to i32                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %sext = shl i64 %i.q, 30                        ; 2 uses
  %i.t = ashr i64 %sext, 32                       ; 7 uses
  %i.u = icmp ugt i64 %i.t, 384307168202282325
  br i1 %i.u, label %bb.b, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge
  store i64 0, ptr %11, align 8
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.v = mul nuw nsw i64 %i.t, 24                 ; 3 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24
          to label %.noexc154 unwind label %bb.ad ; 5 uses

.noexc154:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.w, ptr %11, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.t
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.v, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.w, i64 %i.v
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173 ] ; 8 uses
  %.sroa.0316.0551 = phi ptr [ null, %.lr.ph ], [ %.sroa.0316.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173 ] ; 15 uses
  %.sroa.18.0550 = phi ptr [ null, %.lr.ph ], [ %.sroa.18.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173 ] ; 9 uses
  %.sroa.21.0549 = phi ptr [ null, %.lr.ph ], [ %.sroa.21.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173 ] ; 10 uses
  %.sroa.0292.0548 = phi ptr [ null, %.lr.ph ], [ %.sroa.0292.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173 ] ; 12 uses
  %.sroa.22.0546 = phi ptr [ null, %.lr.ph ], [ %.sroa.22.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173 ] ; 11 uses
  %.sroa.30.0545 = phi ptr [ null, %.lr.ph ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173 ] ; 12 uses
  %i.y = icmp eq ptr %.sroa.0292.0548, %.sroa.22.0546 ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %.sroa.22.0546, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !88
  %i.ab = sext i32 %i.aa to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0136 = phi i64 [ -1, %bb.c ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %10, align 8, !tbaa !70   ; 4 uses
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !36  ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw [36 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 4, !tbaa !91
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 7 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !9
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !13 ; 7 uses
  %i.av = sdiv exact i64 %i.ag, 224
  %i.aw = ashr i64 %i.av, 2                       ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %bb.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %i.aw, %bb.e ] ; 2 uses
  %.sroa.041.049.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.i ], [ %i.ac, %bb.e ] ; 6 uses
  %i.ay = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL10is_specialN3gmx8ArrayRefIK11SpecialBondEEPKcS8_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_"(ptr readonly %i.aq, ptr readonly %i.au, ptr %.sroa.041.049.i.i.i.i.i.i)
          to label %.noexc155 unwind label %.loopexit357

.noexc155:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.ay, label %.loopexit358, label %bb.f

bb.f:                                             ; preds = %.noexc155
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.041.049.i.i.i.i.i.i, i64 224 ; 2 uses
  %i.ba = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL10is_specialN3gmx8ArrayRefIK11SpecialBondEEPKcS8_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_"(ptr readonly %i.aq, ptr readonly %i.au, ptr nonnull %i.az)
          to label %.noexc156 unwind label %.loopexit357

.noexc156:                                        ; preds = %bb.f
  br i1 %i.ba, label %.loopexit358, label %bb.g

bb.g:                                             ; preds = %.noexc156
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.041.049.i.i.i.i.i.i, i64 448 ; 2 uses
  %i.bc = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL10is_specialN3gmx8ArrayRefIK11SpecialBondEEPKcS8_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_"(ptr readonly %i.aq, ptr readonly %i.au, ptr nonnull %i.bb)
          to label %.noexc157 unwind label %.loopexit357

.noexc157:                                        ; preds = %bb.g
  br i1 %i.bc, label %.loopexit358, label %bb.h

bb.h:                                             ; preds = %.noexc157
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.041.049.i.i.i.i.i.i, i64 672 ; 2 uses
  %i.be = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL10is_specialN3gmx8ArrayRefIK11SpecialBondEEPKcS8_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_"(ptr readonly %i.aq, ptr readonly %i.au, ptr nonnull %i.bd)
          to label %.noexc158 unwind label %.loopexit357

.noexc158:                                        ; preds = %bb.h
  br i1 %i.be, label %.loopexit358, label %bb.i

bb.i:                                             ; preds = %.noexc158
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.041.049.i.i.i.i.i.i, i64 896 ; 3 uses
  %i.bg = add nsw i64 %.050.i.i.i.i.i.i, -1
  %i.bh = icmp sgt i64 %.050.i.i.i.i.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !98

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.i
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.bf to i64
  %.pre51.i.i.i.i.i.i = sub i64 %i.ae, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.e
  %.pre-phi52.i.i.i.i.i.i = phi i64 [ %.pre51.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.ag, %bb.e ]
  %.sroa.041.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bf, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.ac, %bb.e ] ; 5 uses
  %i.bi = sdiv exact i64 %.pre-phi52.i.i.i.i.i.i, 224
  switch i64 %i.bi, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173 [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bj = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL10is_specialN3gmx8ArrayRefIK11SpecialBondEEPKcS8_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_"(ptr readonly %i.aq, ptr readonly %i.au, ptr %.sroa.041.0.lcssa.i.i.i.i.i.i)
          to label %.noexc159 unwind label %.loopexit.split-lp.loopexit

.noexc159:                                        ; preds = %bb.j
  br i1 %i.bj, label %.loopexit358, label %bb.k

bb.k:                                             ; preds = %.noexc159
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.041.0.lcssa.i.i.i.i.i.i, i64 224
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i
  %.sroa.041.1.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.k ], [ %.sroa.041.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.bl = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL10is_specialN3gmx8ArrayRefIK11SpecialBondEEPKcS8_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_"(ptr readonly %i.aq, ptr readonly %i.au, ptr %.sroa.041.1.i.i.i.i.i.i)
          to label %.noexc160 unwind label %.loopexit.split-lp.loopexit

.noexc160:                                        ; preds = %bb.l
  br i1 %i.bl, label %.loopexit358, label %bb.m

bb.m:                                             ; preds = %.noexc160
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.041.1.i.i.i.i.i.i, i64 224
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i
  %.sroa.041.2.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.m ], [ %.sroa.041.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bn = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL10is_specialN3gmx8ArrayRefIK11SpecialBondEEPKcS8_E3$_0EclINS2_12ArrayRefIterIS5_EEEEbT_"(ptr readonly %i.aq, ptr readonly %i.au, ptr %.sroa.041.2.i.i.i.i.i.i)
          to label %.noexc161 unwind label %.loopexit.split-lp.loopexit

.noexc161:                                        ; preds = %bb.n
  %spec.select.i.i.i.i.i.i = select i1 %i.bn, ptr %.sroa.041.2.i.i.i.i.i.i, ptr %i.ah
  br label %.loopexit358

.loopexit358:                                     ; preds = %.noexc158, %.noexc157, %.noexc156, %.noexc155, %.noexc161, %.noexc160, %.noexc159
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.041.1.i.i.i.i.i.i, %.noexc160 ], [ %spec.select.i.i.i.i.i.i, %.noexc161 ], [ %.sroa.041.0.lcssa.i.i.i.i.i.i, %.noexc159 ], [ %i.bb, %.noexc157 ], [ %i.az, %.noexc156 ], [ %.sroa.041.049.i.i.i.i.i.i, %.noexc155 ], [ %i.bd, %.noexc158 ]
  %.not352 = icmp eq ptr %i.ad, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %.not352, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173, label %bb.o

bb.o:                                             ; preds = %.loopexit358
  %.pre671 = load ptr, ptr %i.m, align 8, !tbaa !90 ; 4 uses
  br i1 %i.y, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds [36 x i8], ptr %.pre671, i64 %.0136
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !91
  %i.br = getelementptr inbounds nuw [36 x i8], ptr %.pre671, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !91
  %i.bu = icmp eq i32 %i.bq, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !97  ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %.0136
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !9
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !9
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !13
  %i.cc = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.by, ptr noundef %i.cb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit173, label %._crit_edge670

._crit_edge670:                                   ; preds = %bb.r
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !90
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge670, %bb.p, %bb.o
  %i.ce = phi ptr [ %.pre, %._crit_edge670 ], [ %.pre671, %bb.p ], [ %.pre671, %bb.o ]
  %i.cf = getelementptr inbounds nuw [36 x i8], ptr %i.ce, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_Z18makeDisulfideBondsP7t_atomsP8t_symtabPA3_fbb:bb.a
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i165, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.n, %bb.l, %bb.j, %bb.q
  %.sroa.30.0545.lcssa605 = phi ptr [ %.sroa.22.0546, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i165 ], [ %.sroa.30.0545, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.30.0545, %bb.n ], [ %.sroa.30.0545, %bb.l ], [ %.sroa.30.0545, %bb.j ], [ %.sroa.30.0545, %bb.q ]
  %.sroa.21.1.ph.ph = phi ptr [ %.sroa.21.4, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i165 ], [ %.sroa.18.0550, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.21.0549, %bb.n ], [ %.sroa.21.0549, %bb.l ], [ %.sroa.21.0549, %bb.j ], [ %.sroa.21.0549, %bb.q ]
  %.sroa.0316.1.ph.ph = phi ptr [ %.sroa.0316.4, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i165 ], [ %.sroa.0316.0551, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0316.0551, %bb.n ], [ %.sroa.0316.0551, %bb.l ], [ %.sroa.0316.0551, %bb.j ], [ %.sroa.0316.0551, %bb.q ]
  %lpad.loopexit362 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aa, %bb.v
  %.sroa.30.0545609 = phi ptr [ %.sroa.30.0545, %bb.v ], [ %.sroa.22.0546, %bb.aa ]
  %.sroa.21.1.ph.ph360 = phi ptr [ %.sroa.18.0550, %bb.v ], [ %.sroa.21.4, %bb.aa ]
  %.sroa.0316.1.ph.ph361 = phi ptr [ %.sroa.0316.0551, %bb.v ], [ %.sroa.0316.4, %bb.aa ]
  %lpad.loopexit.split-lp363 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIiSaIiEE9push_backERKi.exit173:       ; preds = %._crit_edge.i.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i170, %bb.y, %bb.r, %.loopexit358
  %.sroa.30.1 = phi ptr [ %.sroa.30.0545, %bb.y ], [ %.sroa.30.0545, %bb.r ], [ %.sroa.30.0545, %.loopexit358 ], [ %i.do, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i170 ], [ %.sroa.30.0545, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.22.1 = phi ptr [ %i.cy, %bb.y ], [ %.sroa.22.0546, %bb.r ], [ %.sroa.22.0546, %.loopexit358 ], [ %i.dn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i170 ], [ %.sroa.22.0546, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0292.1 = phi ptr [ %.sroa.0292.0548, %bb.y ], [ %.sroa.0292.0548, %bb.r ], [ %.sroa.0292.0548, %.loopexit358 ], [ %i.dj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i170 ], [ %.sroa.0292.0548, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.21.2 = phi ptr [ %.sroa.21.4, %bb.y ], [ %.sroa.21.0549, %bb.r ], [ %.sroa.21.0549, %.loopexit358 ], [ %.sroa.21.4, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i170 ], [ %.sroa.21.0549, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.2, %bb.y ], [ %.sroa.18.0550, %bb.r ], [ %.sroa.18.0550, %.loopexit358 ], [ %.sroa.18.2, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i170 ], [ %.sroa.18.0550, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.0316.2 = phi ptr [ %.sroa.0316.4, %bb.y ], [ %.sroa.0316.0551, %bb.r ], [ %.sroa.0316.0551, %.loopexit358 ], [ %.sroa.0316.4, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i170 ], [ %.sroa.0316.0551, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load i32, ptr %1, align 8, !tbaa !77
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !99

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc154
  %.pr.i = phi ptr [ %i.w, %.noexc154 ], [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 8 uses
  %i.ds = phi ptr [ %i.x, %.noexc154 ], [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.dt = phi ptr [ %scevgep.i.i.i.i.i, %.noexc154 ], [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !100
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !101
  %i.dw = icmp sgt i32 %i.s, 0
  br i1 %i.dw, label %.lr.ph562, label %._crit_edge590

.lr.ph562:                                        ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %wide.trip.count630 = and i64 %i.r, 2147483647  ; 2 uses
  %i.dx = icmp eq i64 %wide.trip.count630, 1
  %unroll_iter = and i64 %i.r, 2147483646
  %i.dy = and i64 %i.q, 4
  %lcmp.mod.not = icmp eq i64 %i.dy, 0
  %lcmp.mod869 = trunc i64 %i.r to i1
  br label %bb.ae

._crit_edge563:                                   ; preds = %._crit_edge559
  %.not789 = icmp eq i32 %i.s, 1
  br i1 %.not789, label %.lr.ph589, label %bb.aj

bb.ad:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.b
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.ae:                                            ; preds = %.lr.ph562, %._crit_edge559
  %indvars.iv627 = phi i64 [ 0, %.lr.ph562 ], [ %indvars.iv.next628, %._crit_edge559 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv627 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !102 ; 2 uses
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !105 ; 2 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 2                 ; 3 uses
  %i.ei = icmp ugt i64 %i.t, %i.eh
  br i1 %i.ei, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ej = sub nuw nsw i64 %i.t, %i.eh
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 noundef %i.ej)
          to label %.lr.ph558 unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.ek = icmp ult i64 %i.t, %i.eh
  br i1 %i.ek, label %bb.ah, label %.lr.ph558

bb.ah:                                            ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.t ; 2 uses
  %.not.i.i = icmp eq ptr %i.ec, %i.el
  br i1 %.not.i.i, label %.lr.ph558, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ah
  store ptr %i.el, ptr %i.eb, align 8, !tbaa !102
  br label %.lr.ph558

.lr.ph558:                                        ; preds = %bb.af, %bb.ag, %bb.ah, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv627
  %i.en = load i32, ptr %i.em, align 4, !tbaa !88
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [12 x i8], ptr %3, i64 %i.eo ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.er = load ptr, ptr %i.ea, align 8, !tbaa !105 ; 3 uses
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph558.new

._crit_edge559.unr-lcssa:                         ; preds = %.lr.ph558.new
  br i1 %lcmp.mod.not, label %._crit_edge559, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge559.unr-lcssa, %.lr.ph558
  %indvars.iv624.epil.init = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next625.1, %._crit_edge559.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod869)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv624.epil.init
  %i.et = load i32, ptr %i.es, align 4, !tbaa !88
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [12 x i8], ptr %3, i64 %i.eu ; 2 uses
  %i.ew = load <2 x float>, ptr %i.ev, align 4, !tbaa !106
  %i.ex = load <2 x float>, ptr %i.ep, align 4, !tbaa !106
  %i.ey = fsub <2 x float> %i.ew, %i.ex           ; 2 uses
  %i.ez = fmul <2 x float> %i.ey, %i.ey           ; 2 uses
  %shift.epil = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fadd <2 x float> %i.ez, %shift.epil
  %i.fa = extractelement <2 x float> %foldExtExtBinop.epil, i64 0
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !106
  %i.fd = load float, ptr %i.eq, align 4, !tbaa !106
  %i.fe = fsub float %i.fc, %i.fd                 ; 2 uses
  %i.ff = fmul float %i.fe, %i.fe
  %i.fg = fadd float %i.fa, %i.ff
  %sqrt.epil = call float @llvm.sqrt.f32(float %i.fg)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv624.epil.init
  store float %sqrt.epil, ptr %i.fh, align 4, !tbaa !106
  br label %._crit_edge559

._crit_edge559:                                   ; preds = %._crit_edge559.unr-lcssa, %.epil.preheader
  %indvars.iv.next628 = add nuw nsw i64 %indvars.iv627, 1 ; 2 uses
  %exitcond631.not = icmp eq i64 %indvars.iv.next628, %wide.trip.count630
  br i1 %exitcond631.not, label %._crit_edge563, label %bb.ae, !llvm.loop !107

bb.ai:                                            ; preds = %bb.af
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph558.new:                                    ; preds = %.lr.ph558, %.lr.ph558.new
  %indvars.iv624 = phi i64 [ %indvars.iv.next625.1, %.lr.ph558.new ], [ 0, %.lr.ph558 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph558.new ], [ 0, %.lr.ph558 ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv624
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !88
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [12 x i8], ptr %3, i64 %i.fl ; 2 uses
  %i.fn = load <2 x float>, ptr %i.fm, align 4, !tbaa !106
  %i.fo = load <2 x float>, ptr %i.ep, align 4, !tbaa !106
  %i.fp = fsub <2 x float> %i.fn, %i.fo           ; 2 uses
  %i.fq = fmul <2 x float> %i.fp, %i.fp           ; 2 uses
  %shift = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.fq, %shift
  %i.fr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !106
  %i.fu = load float, ptr %i.eq, align 4, !tbaa !106
  %i.fv = fsub float %i.ft, %i.fu                 ; 2 uses
  %i.fw = fmul float %i.fv, %i.fv
  %i.fx = fadd float %i.fr, %i.fw
  %sqrt = call float @llvm.sqrt.f32(float %i.fx)
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv624
  store float %sqrt, ptr %i.fy, align 4, !tbaa !106
  %indvars.iv.next625 = or disjoint i64 %indvars.iv624, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv.next625
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !88
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [12 x i8], ptr %3, i64 %i.gb ; 2 uses
  %i.gd = load <2 x float>, ptr %i.gc, align 4, !tbaa !106
  %i.ge = load <2 x float>, ptr %i.ep, align 4, !tbaa !106
  %i.gf = fsub <2 x float> %i.gd, %i.ge           ; 2 uses
  %i.gg = fmul <2 x float> %i.gf, %i.gf           ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x float> %i.gg, %shift.1
  %i.gh = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !106
  %i.gk = load float, ptr %i.eq, align 4, !tbaa !106
  %i.gl = fsub float %i.gj, %i.gk                 ; 2 uses
  %i.gm = fmul float %i.gl, %i.gl
  %i.gn = fadd float %i.gh, %i.gm
  %sqrt.1 = call float @llvm.sqrt.f32(float %i.gn)
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv.next625
  store float %sqrt.1, ptr %i.go, align 4, !tbaa !106
  %indvars.iv.next625.1 = add nuw nsw i64 %indvars.iv624, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge559.unr-lcssa, label %.lr.ph558.new, !llvm.loop !108

bb.aj:                                            ; preds = %._crit_edge563
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.gq = call i64 @fwrite(ptr nonnull @.str.10, i64 30, i64 1, ptr %i.gp) #27 ; 0 uses
  %i.gr = add nsw i32 %i.s, -1                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  br label %bb.ak

.loopexit355:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %._crit_edge571
  %i.ha = icmp slt i32 %indvars, %i.s
  %indvars.iv.next644 = add i32 %indvars.iv643, 7
  %indvars.iv.next649 = add nuw i64 %indvars.iv648, 7
  br i1 %i.ha, label %bb.ak, label %.lr.ph589, !llvm.loop !109

bb.ak:                                            ; preds = %bb.aj, %.loopexit355
  %indvars.iv648 = phi i64 [ 1, %bb.aj ], [ %indvars.iv.next649, %.loopexit355 ] ; 2 uses
  %indvars.iv643 = phi i32 [ 7, %bb.aj ], [ %indvars.iv.next644, %.loopexit355 ] ; 2 uses
  %indvars.iv632 = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next633, %.loopexit355 ] ; 5 uses
  %indvars655 = trunc i64 %indvars.iv632 to i32   ; 3 uses
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #25 ; 0 uses
  %indvars.iv.next633 = add nuw i64 %indvars.iv632, 7 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next633 to i32 ; 3 uses
  %.sroa.speculated263 = call i32 @llvm.smin.i32(i32 %i.gr, i32 %indvars) ; 2 uses
  %i.hd = icmp sgt i32 %i.gr, %indvars655
  br i1 %i.hd, label %.lr.ph566, label %._crit_edge571.critedge

._crit_edge567:                                   ; preds = %.lr.ph566
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !67
  %fputc = call i32 @fputc(i32 10, ptr %i.he)     ; 0 uses
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #25 ; 0 uses
  br label %.lr.ph570

.lr.ph566:                                        ; preds = %bb.ak, %.lr.ph566
  %indvars.iv634 = phi i64 [ %indvars.iv.next635, %.lr.ph566 ], [ %indvars.iv632, %bb.ak ] ; 3 uses
  %i.hh = load ptr, ptr %i.gs, align 8, !tbaa !89 ; 2 uses
  %i.hi = load ptr, ptr %i.gt, align 8, !tbaa !90
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv634
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !88
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [36 x i8], ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !91
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [32 x i8], ptr %i.hh, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !95
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !13
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0316.0.lcssa, i64 %indvars.iv634
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !88
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [32 x i8], ptr %i.hh, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !110
  %i.hz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %i.hs, i32 noundef %i.hy) #21 ; 0 uses
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.e) #25 ; 0 uses
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 2 uses
  %i.ic = trunc nuw i64 %indvars.iv.next635 to i32
  %i.id = icmp sgt i32 %.sroa.speculated263, %i.ic
  br i1 %i.id, label %.lr.ph566, label %._crit_edge567, !llvm.loop !111

._crit_edge571.critedge:                          ; preds = %bb.ak
  %i.ie = load ptr, ptr @stderr, align 8, !tbaa !67
  %fputc.c = call i32 @fputc(i32 10, ptr %i.ie)   ; 0 uses
  %i.if = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.ig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.if, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #25 ; 0 uses
  br label %._crit_edge571

._crit_edge571:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge571.critedge
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !67
  %fputc141 = call i32 @fputc(i32 10, ptr %i.ih)  ; 0 uses
  %.sroa.speculated253 = call i32 @llvm.smin.i32(i32 %indvars, i32 %i.s)
  %storemerge142575 = add nuw nsw i32 %indvars655, 1
  %i.ii = icmp slt i32 %storemerge142575, %i.s
  br i1 %i.ii, label %.lr.ph578, label %.loopexit355

.lr.ph570:                                        ; preds = %._crit_edge567, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv637 = phi i64 [ %indvars.iv.next638, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %indvars.iv632, %._crit_edge567 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ij = load ptr, ptr %i.gu, align 8, !tbaa !97
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv637
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !88 ; 2 uses
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !9
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !13
  %i.iq = add nsw i32 %i.il, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.13, ptr noundef %i.ip, i32 noundef %i.iq)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.lr.ph570
  %i.ir = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.is = load ptr, ptr %12, align 8, !tbaa !33
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ir, ptr noundef nonnull @.str.14, ptr noundef %i.is) #25 ; 0 uses
  %i.iu = load ptr, ptr %12, align 8, !tbaa !33   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.gv
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.iw = load i64, ptr %i.gv, align 8, !tbaa !20
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1 ; 2 uses
  %i.iy = trunc nuw i64 %indvars.iv.next638 to i32
  %i.iz = icmp sgt i32 %.sroa.speculated263, %i.iy
  br i1 %i.iz, label %.lr.ph570, label %._crit_edge571, !llvm.loop !112

bb.am:                                            ; preds = %.lr.ph570
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body

.lr.ph578:                                        ; preds = %._crit_edge571, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %indvars.iv650 = phi i64 [ %indvars.iv.next651, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %indvars.iv648, %._crit_edge571 ] ; 5 uses
  %i.jb = trunc nuw i64 %indvars.iv650 to i32     ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv643, i32 %i.jb)
  %smin645 = call i32 @llvm.smin.i32(i32 %smin, i32 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.jc = load ptr, ptr %i.gs, align 8, !tbaa !89 ; 2 uses
  %i.jd = load ptr, ptr %i.gt, align 8, !tbaa !90
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv650 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !88
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [36 x i8], ptr %i.jd, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !91
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [32 x i8], ptr %i.jc, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !95
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0316.0.lcssa, i64 %indvars.iv650
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !88
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [32 x i8], ptr %i.jc, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !110
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.13, ptr noundef %i.jn, i32 noundef %i.jt)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %.lr.ph578
  %i.ju = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.jv = load ptr, ptr %13, align 8, !tbaa !33
  %i.jw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ju, ptr noundef nonnull @.str.14, ptr noundef %i.jv) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.jx = load ptr, ptr %i.gu, align 8, !tbaa !97
  %i.jy = load i32, ptr %i.je, align 4, !tbaa !88 ; 2 uses
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !9
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !13
  %i.kd = add nsw i32 %i.jy, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.13, ptr noundef %i.kc, i32 noundef %i.kd)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.ke = load ptr, ptr %13, align 8, !tbaa !33   ; 6 uses
  %i.kf = icmp eq ptr %i.ke, %i.gw
  %i.kg = load ptr, ptr %14, align 8, !tbaa !33   ; 5 uses
  %i.kh = icmp eq ptr %i.kg, %i.gx                ; 2 uses
  br i1 %i.kf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ao
  br i1 %i.kh, label %bb.ap, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ao
  br i1 %i.kh, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ki = load i64, ptr %i.gy, align 8, !tbaa !17 ; 3 uses
  %i.kj = icmp ult i64 %i.ki, 16
  call void @llvm.assume(i1 %i.kj)
  switch i64 %i.ki, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.kk = load i8, ptr %i.kg, align 1, !tbaa !20
  store i8 %i.kk, ptr %i.ke, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr align 1 %i.kg, i64 %i.ki, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.kl = load i64, ptr %i.gy, align 8, !tbaa !17 ; 2 uses
  store i64 %i.kl, ptr %i.gz, align 8, !tbaa !17
  %i.km = load ptr, ptr %13, align 8, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kl
  store i8 0, ptr %i.kn, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %14, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.kg, ptr %13, align 8, !tbaa !33
  %i.ko = load <2 x i64>, ptr %i.gy, align 8, !tbaa !20
  store <2 x i64> %i.ko, ptr %i.gz, align 8, !tbaa !20
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.kp = load i64, ptr %i.gw, align 8, !tbaa !20
  store ptr %i.kg, ptr %13, align 8, !tbaa !33
  %i.kq = load <2 x i64>, ptr %i.gy, align 8, !tbaa !20
  store <2 x i64> %i.kq, ptr %i.gz, align 8, !tbaa !20
  %.not.i177 = icmp eq ptr %i.ke, null
  br i1 %.not.i177, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ke, ptr %14, align 8, !tbaa !33
  store i64 %i.kp, ptr %i.gx, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.gx, ptr %14, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.as, %bb.at
  %i.kr = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ke, %bb.as ], [ %i.gx, %bb.at ]
  store i64 0, ptr %i.gy, align 8, !tbaa !17
  store i8 0, ptr %i.kr, align 1, !tbaa !20
  %i.ks = load ptr, ptr %14, align 8, !tbaa !33   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.gx
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ku = load i64, ptr %i.gx, align 8, !tbaa !20
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.kw = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.kx = load ptr, ptr %13, align 8, !tbaa !33
  %i.ky = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kw, ptr noundef nonnull @.str.14, ptr noundef %i.kx) #25 ; 0 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculated253, i32 %i.jb)
  %i.kz = icmp sgt i32 %.sroa.speculated, %indvars655
  br i1 %i.kz, label %.lr.ph573.preheader, label %._crit_edge574

.lr.ph573.preheader:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %wide.trip.count646 = zext i32 %smin645 to i64
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv650
  br label %.lr.ph573

._crit_edge574:                                   ; preds = %.lr.ph573, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.lb = load ptr, ptr @stderr, align 8, !tbaa !67
  %fputc145 = call i32 @fputc(i32 10, ptr %i.lb)  ; 0 uses
  %i.lc = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.gw
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %._crit_edge574
  %i.le = load i64, ptr %i.gw, align 8, !tbaa !20
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %._crit_edge574, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %indvars.iv.next651 = add nuw i64 %indvars.iv650, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next651 to i32
  %exitcond654.not = icmp eq i32 %lftr.wideiv, %i.s
  br i1 %exitcond654.not, label %.loopexit355, label %.lr.ph578, !llvm.loop !113

bb.au:                                            ; preds = %.lr.ph578
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

bb.av:                                            ; preds = %bb.an
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.li = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.gw
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.av
  %i.lk = load i64, ptr %i.gw, align 8, !tbaa !20
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

.lr.ph573:                                        ; preds = %.lr.ph573.preheader, %.lr.ph573
  %indvars.iv640 = phi i64 [ %indvars.iv632, %.lr.ph573.preheader ], [ %indvars.iv.next641, %.lr.ph573 ] ; 2 uses
  %i.lm = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.ln = load ptr, ptr %i.la, align 8, !tbaa !105
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv640
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !106
  %i.lq = fpext float %i.lp to double
  %i.lr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lm, ptr noundef nonnull @.str.16, double noundef %i.lq) #25 ; 0 uses
  %indvars.iv.next641 = add nuw i64 %indvars.iv640, 1 ; 2 uses
  %exitcond647.not = icmp eq i64 %indvars.iv.next641, %wide.trip.count646
  br i1 %exitcond647.not, label %._crit_edge574, label %.lr.ph573, !llvm.loop !114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185, %bb.au
  %.pn143 = phi { ptr, i32 } [ %i.lg, %bb.au ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ], [ %i.lh, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %.body

.lr.ph589:                                        ; preds = %.loopexit355, %._crit_edge563
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.md = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.me = select i1 %4, ptr @.str.18, ptr @.str.19
  %i.mf = select i1 %4, ptr @.str.20, ptr @.str.21
  %i.mg = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 6 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.mq = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.mr = and i64 %i.r, 2147483647
  %wide.trip.count668 = and i64 %i.r, 2147483647  ; 2 uses
  br label %bb.ba

.loopexit:                                        ; preds = %_ZL7is_bondN3gmx8ArrayRefIK11SpecialBondEEP7t_atomsiifPiPb.exit, %bb.ba
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1
  %exitcond669.not = icmp eq i64 %indvars.iv.next665, %wide.trip.count668
  br i1 %exitcond669.not, label %._crit_edge590, label %bb.ba, !llvm.loop !115

._crit_edge590:                                   ; preds = %.loopexit, %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.dt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge590, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.my, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge590 ] ; 3 uses
  %i.ms = load ptr, ptr %.05.i.i.i, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !116
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #22
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i:  ; preds = %bb.aw, %.lr.ph.i.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i188 = icmp eq ptr %i.my, %i.dt
  br i1 %.not.i.i.i188, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !117

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i, %._crit_edge590
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i
  %i.mz = ptrtoint ptr %i.ds to i64
  %i.na = ptrtoint ptr %.pr.i to i64
  %i.nb = sub i64 %i.mz, %i.na
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.nb) #22
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %.not.i.i.i189 = icmp eq ptr %.sroa.0292.0.lcssa, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit
  %i.nc = ptrtoint ptr %.sroa.30.0.lcssa to i64
  %i.nd = sub i64 %i.nc, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0292.0.lcssa, i64 noundef %i.nd) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, %bb.ay
  %.not.i.i.i190 = icmp eq ptr %.sroa.0316.0.lcssa, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorIiSaIiEED2Ev.exit191, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ne = ptrtoint ptr %.sroa.21.0.lcssa to i64
  %i.nf = ptrtoint ptr %.sroa.0316.0.lcssa to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0316.0.lcssa, i64 noundef %i.ng) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit191

bb.ba:                                            ; preds = %.lr.ph589, %.loopexit
  %indvars.iv664 = phi i64 [ 0, %.lr.ph589 ], [ %indvars.iv.next665, %.loopexit ] ; 4 uses
  %indvars.iv656 = phi i64 [ 1, %.lr.ph589 ], [ %indvars.iv.next657, %.loopexit ] ; 2 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 3 uses
  %i.nh = icmp samesign ult i64 %indvars.iv.next665, %i.mr
  br i1 %i.nh, label %.lr.ph586, label %.loopexit

.lr.ph586:                                        ; preds = %bb.ba
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv664
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !88 ; 2 uses
  %i.nk = sext i32 %i.nj to i64                   ; 5 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0316.0.lcssa, i64 %indvars.iv664 ; 3 uses
  %i.nm = add nsw i32 %i.nj, 1
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv664
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph586, %_ZL7is_bondN3gmx8ArrayRefIK11SpecialBondEEP7t_atomsiifPiPb.exit
  %indvars.iv658 = phi i64 [ %indvars.iv656, %.lr.ph586 ], [ %indvars.iv.next659, %_ZL7is_bondN3gmx8ArrayRefIK11SpecialBondEEP7t_atomsiifPiPb.exit ] ; 4 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0292.0.lcssa, i64 %indvars.iv658
  %i.np = load i32, ptr %i.no, align 4, !tbaa !88 ; 2 uses
  %i.nq = load ptr, ptr %i.ls, align 8, !tbaa !118
  %i.nr = load ptr, ptr %0, align 8, !tbaa !121
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = sdiv exact i64 %i.nu, 96
  %i.nw = icmp ult i64 %i.nv, %i.r
  br i1 %i.nw, label %bb.bc, label %_ZL7is_bondN3gmx8ArrayRefIK11SpecialBondEEP7t_atomsiifPiPb.exit

bb.bc:                                            ; preds = %bb.bb
  %i.nx = load ptr, ptr %10, align 8, !tbaa !70   ; 2 uses
  %i.ny = load ptr, ptr %i.g, align 8, !tbaa !36  ; 2 uses
  %i.nz = load ptr, ptr %i.lt, align 8, !tbaa !97 ; 2 uses
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.nz, i64 %i.nk
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !9
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !13 ; 7 uses
  %i.od = sext i32 %i.np to i64                   ; 5 uses
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.nz, i64 %i.od
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !9
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !13 ; 7 uses
  %i.oh = load ptr, ptr %i.lu, align 8, !tbaa !89 ; 2 uses
  %i.oi = load ptr, ptr %i.lv, align 8, !tbaa !90 ; 2 uses
  %i.oj = getelementptr inbounds [36 x i8], ptr %i.oi, i64 %i.nk
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !91
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [32 x i8], ptr %i.oh, i64 %i.om
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !95
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !13 ; 2 uses
  %i.oq = getelementptr inbounds [36 x i8], ptr %i.oi, i64 %i.od
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load i32, ptr %i.or, align 4, !tbaa !91
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [32 x i8], ptr %i.oh, i64 %i.ot
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !95
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !13 ; 2 uses
  %.not.i192 = icmp eq ptr %i.nx, %i.ny
  br i1 %.not.i192, label %_ZL7is_bondN3gmx8ArrayRefIK11SpecialBondEEP7t_atomsiifPiPb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bc
  %i.ox = load ptr, ptr %i.nn, align 8, !tbaa !105
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv658
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !106
  %i.pa = icmp eq ptr %i.oc, null                 ; 2 uses
  %i.pb = icmp eq ptr %i.og, null                 ; 2 uses
  %i.pc = fpext float %i.oz to double             ; 4 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.critedge135.thread.i, %.lr.ph.i
  %.0109247.i = phi i32 [ 0, %.lr.ph.i ], [ %i.tj, %.critedge135.thread.i ] ; 2 uses
end_hunk_1
