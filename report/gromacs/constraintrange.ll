Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/constraintrange?download=true
inline.NumInlined: 205
inline.NumDeleted: 132
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::ListOfLists" = type { %"class.std::vector.22", %"class.std::vector.22" }
%"class.std::vector.22" = type { %"struct.std::_Vector_base.23" }
%"struct.std::_Vector_base.23" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ArrayRef.121" = type { %"struct.gmx::ArrayRefIter.122", %"struct.gmx::ArrayRefIter.122" }
%"struct.gmx::ArrayRefIter.122" = type { ptr }
%"class.gmx::LogEntryWriter" = type { %"struct.gmx::LogEntry" }
%"struct.gmx::LogEntry" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN3gmx11ListOfListsIiED2Ev = comdat any

@.str = private unnamed_addr constant [76 x i8] c"Maximum distance for %d constraints, at 120 deg. angles, all-trans: %.3f nm\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Found longer constraint distance: r0 %5.3f r1 %5.3f rmax %5.3f\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" %d %5.3f\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" %d %5.3f\0A\00", align 1

; Function Attrs: mustprogress uwtable
define noundef float @_ZN3gmx12constr_r_maxERKNS_8MDLoggerEPK10gmx_mtop_tPK10t_inputrec(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %3 = alloca %"class.gmx::ListOfLists", align 8  ; 11 uses
  %4 = alloca %"class.gmx::ArrayRef.121", align 8 ; 5 uses
  %5 = alloca %"class.gmx::ArrayRef.121", align 8 ; 5 uses
  %6 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not22 = icmp eq ptr %i.e, %i.g
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 528 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 420 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.speculated, %_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.t, label %bb.q

bb.b:                                             ; preds = %.lr.ph, %_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit
  %.024 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated, %_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit ] ; 2 uses
  %.sroa.015.023 = phi ptr [ %i.e, %.lr.ph ], [ %i.dv, %_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit ] ; 8 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !31   ; 5 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 1568
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 1576
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.c, label %switch.edge.i

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 1592
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 1600
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit, label %switch.edge.i

switch.edge.i:                                    ; preds = %bb.c, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !49 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !145 ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 13
  %switch.cast = trunc i32 %i.aq to i13
  %switch.downshift = lshr i13 -503, %switch.cast
  %switch.masked = trunc i13 %switch.downshift to i1
  %i.as = select i1 %i.ar, i1 %switch.masked, i1 false
  %i.at = call noundef i32 @_ZN3gmx27flexibleConstraintTreatmentEb(i1 noundef zeroext %i.as)
  call void @_ZN3gmx11make_at2conERK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEENS_27FlexibleConstraintTreatmentE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ListOfLists") align 8 %3, ptr noundef nonnull align 8 dereferenceable(2408) %.sroa.015.023, ptr %i.x, ptr %i.ac, i32 noundef %i.at)
  %i.au = load i32, ptr %i.k, align 8, !tbaa !146 ; 2 uses
  %i.av = add nsw i32 %i.au, 1                    ; 2 uses
  %i.aw = sext i32 %i.av to i64                   ; 4 uses
  %i.ax = icmp slt i32 %i.au, -1
  br i1 %i.ax, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.d:                                             ; preds = %switch.edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
          to label %.noexc.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %switch.edge.i
  %.not.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.thread.i, label %bb.e

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %7 = getelementptr inbounds nuw [4 x i8], ptr null, i64 %i.aw
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #14
          to label %.noexc67.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc67.i:                                       ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.aw ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !13
  %i.bb = getelementptr i8, ptr %i.az, i64 4      ; 3 uses
  %i.bc = add nsw i64 %i.aw, -1                   ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc67.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bc, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc67.i, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.thread.i
  %.sroa.14.0.i = phi ptr [ %7, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.thread.i ], [ %i.ba, %.noexc67.i ], [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ]
  %.sroa.074.0.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.thread.i ], [ %i.az, %.noexc67.i ], [ %i.az, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ] ; 8 uses
  %.0.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.thread.i ], [ %i.bb, %.noexc67.i ], [ %i.be, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ]
  %i.bf = load i32, ptr %i.k, align 8, !tbaa !146 ; 2 uses
  %.not89.i = icmp slt i32 %i.bf, 0
  br i1 %.not89.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.bg = add nuw i32 %i.bf, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.074.0.i, i8 -1, i64 %i.bi, i1 false), !tbaa !13
  br label %._crit_edge.i

common.resume:                                    ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit11, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp37, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.em, %_ZN3gmx14LogEntryWriterD2Ev.exit11 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIiSaIiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.d
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx11ListOfListsIiED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %common.resume

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !14
  %i.bj = icmp sgt i32 %i.ap, 0
  br i1 %i.bj, label %.lr.ph93.i, label %._crit_edge94.thread.i

.lr.ph93.i:                                       ; preds = %._crit_edge.i
  store ptr %.sroa.074.0.i, ptr %4, align 8, !tbaa !16
  %i.bk = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.bl = ptrtoint ptr %.sroa.074.0.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.074.0.i, i64 %i.bm ; 2 uses
  store ptr %i.bn, ptr %i.m, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph93.i
  %.191.i = phi i32 [ 0, %.lr.ph93.i ], [ %i.bq, %bb.f ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.bo = load i32, ptr %i.k, align 8, !tbaa !146
  %i.bp = add nsw i32 %i.bo, 1
  call fastcc void @_ZN3gmxL12constr_recurERKNS_11ListOfListsIiEERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS5_95EEENS_8ArrayRefIK9t_iparamsEEbiiiNSA_IiEEffPfPi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(2280) %i.ad, ptr %i.x, ptr %i.ac, i1 noundef zeroext false, i32 noundef %.191.i, i32 noundef 0, i32 noundef %i.bp, ptr noundef nonnull byval(%"class.gmx::ArrayRef.121") align 8 %4, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.b, ptr noundef %i.a)
  %i.bq = add nuw nsw i32 %.191.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bq, %i.ap
  br i1 %exitcond.not.i, label %._crit_edge94.i, label %bb.f, !llvm.loop !21

._crit_edge94.i:                                  ; preds = %bb.f
  %i.br = load i32, ptr %i.l, align 4, !tbaa !147
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %._crit_edge94.i._crit_edge, label %bb.h

._crit_edge94.i._crit_edge:                       ; preds = %._crit_edge94.i
  %.pre = load float, ptr %i.b, align 4, !tbaa !14
  br label %bb.g

._crit_edge94.thread.i:                           ; preds = %._crit_edge.i
  %i.bt = load i32, ptr %i.l, align 4, !tbaa !147
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge94.thread.i
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !14
  br label %._crit_edge98.i

bb.g:                                             ; preds = %._crit_edge94.i._crit_edge, %._crit_edge94.thread.i
  %i.bv = phi float [ %.pre, %._crit_edge94.i._crit_edge ], [ 0.000000e+00, %._crit_edge94.thread.i ]
  %i.bw = call noundef float @sqrtf(float noundef %i.bv) #12
  br label %bb.m

bb.h:                                             ; preds = %._crit_edge94.i
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !14
  store ptr %.sroa.074.0.i, ptr %5, align 8, !tbaa !16
  store ptr %i.bn, ptr %i.n, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.295.i = phi i32 [ 0, %bb.h ], [ %i.bz, %bb.i ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.bx = load i32, ptr %i.k, align 8, !tbaa !146
  %i.by = add nsw i32 %i.bx, 1
  call fastcc void @_ZN3gmxL12constr_recurERKNS_11ListOfListsIiEERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS5_95EEENS_8ArrayRefIK9t_iparamsEEbiiiNSA_IiEEffPfPi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(2280) %i.ad, ptr %i.x, ptr %i.ac, i1 noundef zeroext true, i32 noundef %.295.i, i32 noundef 0, i32 noundef %i.by, ptr noundef nonnull byval(%"class.gmx::ArrayRef.121") align 8 %5, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.c, ptr noundef %i.a)
  %i.bz = add nuw nsw i32 %.295.i, 1              ; 2 uses
  %exitcond100.not.i = icmp eq i32 %i.bz, %i.ap
  br i1 %exitcond100.not.i, label %._crit_edge98.i, label %bb.i, !llvm.loop !22

._crit_edge98.i:                                  ; preds = %bb.i, %.thread.i
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !148 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !156 ; 2 uses
  %i.cd = fptrunc double %i.cc to float           ; 2 uses
  %i.ce = load i32, ptr %i.j, align 4, !tbaa !145 ; 2 uses
  switch i32 %i.ce, label %bb.k [
    i32 0, label %bb.j
    i32 10, label %bb.j
    i32 11, label %bb.j
    i32 12, label %bb.j
    i32 9, label %bb.j
    i32 3, label %bb.j
  ]

bb.j:                                             ; preds = %._crit_edge98.i, %._crit_edge98.i, %._crit_edge98.i, %._crit_edge98.i, %._crit_edge98.i, %._crit_edge98.i
  %i.cf = load i64, ptr %i.p, align 8, !tbaa !157
  %i.cg = sitofp i64 %i.cf to double
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !158
  %i.cj = fpext float %i.cd to double
  %i.ck = call double @llvm.fmuladd.f64(double %i.cg, double %i.ci, double %i.cj)
  %i.cl = fptrunc double %i.ck to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge98.i
  %.059.i = phi float [ %i.cl, %bb.j ], [ %i.cd, %._crit_edge98.i ] ; 2 uses
  %i.cm = fsub float 1.000000e+00, %.059.i
  %i.cn = load float, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  %i.co = call noundef float @sqrtf(float noundef %i.cn) #12
  %i.cp = load float, ptr %i.c, align 4, !tbaa !14 ; 2 uses
  %i.cq = call noundef float @sqrtf(float noundef %i.cp) #12
  %i.cr = fmul float %.059.i, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %i.cm, float %i.co, float %i.cr) ; 3 uses
  switch i32 %i.ce, label %bb.m [
    i32 0, label %bb.l
    i32 10, label %bb.l
    i32 11, label %bb.l
    i32 12, label %bb.l
    i32 9, label %bb.l
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.ct = load i64, ptr %i.p, align 8, !tbaa !157
  %i.cu = load i64, ptr %i.q, align 8, !tbaa !159
  %i.cv = add nsw i64 %i.cu, %i.ct
  %i.cw = sitofp i64 %i.cv to double
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !158
  %i.cz = call double @llvm.fmuladd.f64(double %i.cw, double %i.cy, double %i.cc)
  %i.da = fptrunc double %i.cz to float           ; 2 uses
  %i.db = fsub float 1.000000e+00, %i.da
  %i.dc = call noundef float @sqrtf(float noundef %i.cn) #12
  %i.dd = call noundef float @sqrtf(float noundef %i.cp) #12
  %i.de = fmul float %i.dd, %i.da
  %i.df = call float @llvm.fmuladd.f32(float %i.db, float %i.dc, float %i.de) ; 2 uses
  %i.dg = fcmp olt float %i.cs, %i.df
  %.sroa.speculated.i = select i1 %i.dg, float %i.df, float %i.cs
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.0.i = phi float [ %i.bw, %bb.g ], [ %i.cs, %bb.k ], [ %.sroa.speculated.i, %bb.l ]
  %.not.i.i.i68.i = icmp eq ptr %.sroa.074.0.i, null
  br i1 %.not.i.i.i68.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit69.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = ptrtoint ptr %.sroa.14.0.i to i64
  %i.di = ptrtoint ptr %.sroa.074.0.i to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0.i, i64 noundef %i.dj) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit69.i

_ZNSt6vectorIiSaIiEED2Ev.exit69.i:                ; preds = %bb.n, %bb.m
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !18  ; 3 uses
  %.not.i.i.i.i70.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i70.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit69.i
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.o, %_ZNSt6vectorIiSaIiEED2Ev.exit69.i
  %i.dp = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i1.i.i, label %_ZN3gmx11ListOfListsIiED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.dq = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #15
  br label %_ZN3gmx11ListOfListsIiED2Ev.exit.i

_ZN3gmx11ListOfListsIiED2Ev.exit.i:               ; preds = %bb.p, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit

_ZN3gmxL20constr_r_max_moltypeEPK13gmx_moltype_tNS_8ArrayRefIK9t_iparamsEEPK10t_inputrec.exit: ; preds = %bb.c, %_ZN3gmx11ListOfListsIiED2Ev.exit.i
  %.061.i = phi float [ %.0.i, %_ZN3gmx11ListOfListsIiED2Ev.exit.i ], [ 0.000000e+00, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.du = fcmp olt float %.024, %.061.i
  %.sroa.speculated = select i1 %i.du, float %.061.i, float %.024 ; 2 uses
end_hunk_0
