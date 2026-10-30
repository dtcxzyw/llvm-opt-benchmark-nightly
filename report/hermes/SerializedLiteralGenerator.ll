Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SerializedLiteralGenerator?download=true
inline.NumInlined: 297
inline.NumDeleted: 152
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag = comdat any

@.str = private unnamed_addr constant [21 x i8] c"Invalid Literal Kind\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc26SerializedLiteralGenerator15serializeBufferEN4llvh8ArrayRefIPNS_7LiteralEEERSt6vectorIhSaIhEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.not238 = icmp eq i64 %2, 0
  br i1 %.not238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.bj
  %i.b = trunc i64 %i.ar to i32
  %i.c = ptrtoint ptr %.sroa.61.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.61.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %._crit_edge.loopexit ]
  %.sroa.27.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.27.3, %._crit_edge.loopexit ]
  %.sroa.0135.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0135.2, %._crit_edge.loopexit ] ; 4 uses
  %.059.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit ]
  %.0.lcssa = phi i8 [ 48, %bb.a ], [ %.1, %._crit_edge.loopexit ]
  tail call fastcc void @_ZN6hermes3hbc12_GLOBAL__N_117appendTagToBufferERSt6vectorIhSaIhEEhi(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext %.0.lcssa, i32 noundef %.059.lcssa)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.j, ptr %.sroa.0135.0.lcssa, ptr %.sroa.27.0.lcssa)
  %.not.i.i.i = icmp eq ptr %.sroa.0135.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = ptrtoint ptr %.sroa.0135.0.lcssa to i64
  %i.l = sub i64 %.sroa.61.0.lcssa, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0135.0.lcssa, i64 noundef %i.l) #8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.bj
  %.0233 = phi i8 [ 48, %.lr.ph ], [ %.1, %bb.bj ] ; 3 uses
  %.059232 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.bj ] ; 4 uses
  %.061231 = phi i64 [ 0, %.lr.ph ], [ %i.fl, %bb.bj ] ; 2 uses
  %.sroa.0135.0230 = phi ptr [ null, %.lr.ph ], [ %.sroa.0135.2, %bb.bj ] ; 44 uses
  %.sroa.27.0229 = phi ptr [ null, %.lr.ph ], [ %.sroa.27.3, %bb.bj ] ; 5 uses
  %.sroa.61.0228 = phi ptr [ null, %.lr.ph ], [ %.sroa.61.2, %bb.bj ] ; 19 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.061231 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 4 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !28
  switch i8 %i.o, label %bb.m [
    i8 114, label %bb.d
    i8 116, label %bb.h
    i8 117, label %bb.l
    i8 113, label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.q = load double, ptr %i.p, align 8, !tbaa !33 ; 6 uses
  %5 = fcmp ogt double %i.q, f0x41DFFFFFFFC00000
  %i.r = fcmp olt double %i.q, f0xC1E0000000000000
  %or.cond.i = or i1 %5, %i.r
  %6 = fcmp uno double %i.q, 0.000000e+00
  %or.cond1.i = or i1 %6, %or.cond.i
  br i1 %or.cond1.i, label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = fptosi double %i.q to i32                ; 2 uses
  %i.t = sitofp i32 %i.s to double
  %i.u = fcmp oeq double %i.q, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %i.s, 0
  %i.v = bitcast double %i.q to i64
  %i.w = icmp slt i64 %i.v, 0
  %or.cond192 = and i1 %.not.i, %i.w
  br i1 %or.cond192, label %bb.g, label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit

bb.h:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.x, align 8, !tbaa !35 ; 2 uses
  %.sroa.025.0.copyload = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !15 ; 2 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.526.0.copyload = load i64, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !37 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = tail call noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator15getIdentifierIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964) %i.y, ptr %.sroa.025.0.copyload, i64 %.sroa.526.0.copyload) #9
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator11getStringIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964) %i.y, ptr %.sroa.025.0.copyload, i64 %.sroa.526.0.copyload) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = phi i32 [ %i.z, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 65535
  %i.ad = icmp sgt i32 %i.ab, 255
  %. = select i1 %i.ad, i8 80, i8 96
  %.057 = select i1 %i.ac, i8 64, i8 %.
  br label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit

bb.l:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !45, !range !46, !noundef !41
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = select i1 %i.ag, i8 16, i8 32
  br label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit

bb.m:                                             ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.l, %bb.k
  %.158 = phi i8 [ 0, %bb.c ], [ %.057, %bb.k ], [ %i.ah, %bb.l ], [ 48, %bb.g ], [ 48, %bb.d ], [ 112, %bb.f ] ; 3 uses
  %i.ai = icmp ne i8 %.158, %.0233
  %i.aj = icmp eq i64 %.059232, 4095
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.n, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.n:                                             ; preds = %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit
  %.not = icmp eq i64 %.059232, 0
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = trunc i64 %.059232 to i32
  tail call fastcc void @_ZN6hermes3hbc12_GLOBAL__N_117appendTagToBufferERSt6vectorIhSaIhEEhi(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext %.0233, i32 noundef %i.ak)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.am = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.aq, ptr %.sroa.0135.0230, ptr %.sroa.27.0229)
  %.not.i.i = icmp eq ptr %.sroa.27.0229, %.sroa.0135.0230
  %spec.select187 = select i1 %.not.i.i, ptr %.sroa.27.0229, ptr %.sroa.0135.0230
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.o, %bb.n, %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit
  %.sroa.27.1 = phi ptr [ %.sroa.27.0229, %bb.n ], [ %.sroa.27.0229, %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit ], [ %spec.select187, %bb.o ] ; 30 uses
  %.160 = phi i64 [ 0, %bb.n ], [ %.059232, %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit ], [ 0, %bb.o ]
  %.1 = phi i8 [ %.158, %bb.n ], [ %.0233, %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit ], [ %.158, %bb.o ] ; 2 uses
  %i.ar = add i64 %.160, 1                        ; 2 uses
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !17  ; 3 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !28
  switch i8 %i.at, label %bb.bi [
    i8 114, label %bb.p
    i8 116, label %bb.ag
    i8 117, label %bb.bj
    i8 113, label %bb.bj
  ]

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.av = load double, ptr %i.au, align 8, !tbaa !33 ; 7 uses
  %7 = fcmp ogt double %i.av, f0x41DFFFFFFFC00000
  %i.aw = fcmp olt double %i.av, f0xC1E0000000000000
  %or.cond.i65 = or i1 %7, %i.aw
  %8 = fcmp uno double %i.av, 0.000000e+00        ; 2 uses
  %or.cond1.i66 = or i1 %8, %or.cond.i65
  br i1 %or.cond1.i66, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = fptosi double %i.av to i32              ; 3 uses
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fcmp oeq double %i.av, %i.ay
  br i1 %i.az, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %.not.i71 = icmp eq i32 %i.ax, 0
  %i.ba = bitcast double %i.av to i64
  %i.bb = icmp slt i64 %i.ba, 0
  %or.cond286 = and i1 %.not.i71, %i.bb
  br i1 %or.cond286, label %.critedge, label %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit72

_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit72: ; preds = %bb.r
  %i.bc = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.bd = ptrtoint ptr %.sroa.0135.0230 to i64    ; 4 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 8 uses
  %i.bf = icmp ult i64 %i.be, -4
  br i1 %i.bf, label %bb.s, label %bb.y

bb.s:                                             ; preds = %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit72
  %i.bg = ptrtoint ptr %.sroa.61.0228 to i64      ; 2 uses
  %i.bh = sub i64 %i.bg, %i.bc                    ; 2 uses
  %i.bi = icmp sgt i64 %i.be, -1
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = xor i64 %i.be, 9223372036854775807      ; 2 uses
  %i.bk = icmp ule i64 %i.bh, %i.bj
  tail call void @llvm.assume(i1 %i.bk)
  %.not23.i = icmp ult i64 %i.bh, 4
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %.sroa.27.1, align 1
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.u:                                             ; preds = %bb.s
  %i.bl = icmp samesign ult i64 %i.bj, 4
  br i1 %i.bl, label %bb.v, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.u
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 4)
  %i.bm = add nuw i64 %.sroa.speculated.i.i, %i.be
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 9223372036854775807) ; 2 uses
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #11 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.be ; 2 uses
  %.not28.i = icmp eq ptr %.sroa.27.1, %.sroa.0135.0230
  store i32 0, ptr %i.bp, align 1
  br i1 %.not28.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %.sroa.0135.0230, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.w, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not.i27.i = icmp eq ptr %.sroa.0135.0230, null
  br i1 %.not.i27.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.bq = sub i64 %i.bg, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0135.0230, i64 noundef %i.bq) #8
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.x, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  %.pre251.a = ptrtoint ptr %i.bo to i64
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %bb.t, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
  %.pre5.i.pre-phi = phi i64 [ %i.bd, %bb.t ], [ %.pre251.a, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ]
  %.sroa.61.8 = phi ptr [ %.sroa.61.0228, %bb.t ], [ %i.br, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ]
  %.pn190 = phi ptr [ %.sroa.27.1, %bb.t ], [ %i.bp, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ]
  %.sroa.0135.8 = phi ptr [ %.sroa.0135.0230, %bb.t ], [ %i.bo, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ]
  %.sroa.27.10 = getelementptr i8, ptr %.pn190, i64 4
  br label %_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferIjEEvT_RSt6vectorIhSaIhEE.exit

bb.y:                                             ; preds = %_ZNK6hermes13LiteralNumber22isIntTypeRepresentibleIiEEN4llvh8OptionalIT_EEv.exit72
  %i.bs = getelementptr i8, ptr %.sroa.0135.0230, i64 %i.be
  %i.bt = getelementptr i8, ptr %i.bs, i64 4      ; 2 uses
  %.not.i.i.i73.a = icmp eq ptr %.sroa.27.1, %i.bt
  %spec.select = select i1 %.not.i.i.i73.a, ptr %.sroa.27.1, ptr %i.bt
  br label %_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferIjEEvT_RSt6vectorIhSaIhEE.exit

_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferIjEEvT_RSt6vectorIhSaIhEE.exit: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit
  %.sroa.61.3 = phi ptr [ %.sroa.61.8, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit ], [ %.sroa.61.0228, %bb.y ]
  %.sroa.27.5 = phi ptr [ %.sroa.27.10, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit ], [ %spec.select, %bb.y ] ; 2 uses
  %.sroa.0135.3 = phi ptr [ %.sroa.0135.8, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit ], [ %.sroa.0135.0230, %bb.y ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre5.i.pre-phi, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit ], [ %i.bd, %bb.y ]
  %i.bu = ptrtoint ptr %.sroa.27.5 to i64
  %i.bv = sub i64 %i.bu, %.pre-phi.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0135.3, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4
  store i32 %i.ax, ptr %i.bx, align 1
  br label %bb.bj

.critedge:                                        ; preds = %bb.r, %bb.q, %bb.p
  %i.by = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.bz = ptrtoint ptr %.sroa.0135.0230 to i64    ; 4 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 8 uses
  %i.cb = icmp ult i64 %i.ca, -8
  br i1 %i.cb, label %bb.z, label %bb.af

bb.z:                                             ; preds = %.critedge
  %i.cc = ptrtoint ptr %.sroa.61.0228 to i64      ; 2 uses
  %i.cd = sub i64 %i.cc, %i.by                    ; 2 uses
  %i.ce = icmp sgt i64 %i.ca, -1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = xor i64 %i.ca, 9223372036854775807      ; 2 uses
  %i.cg = icmp ule i64 %i.cd, %i.cf
  tail call void @llvm.assume(i1 %i.cg)
  %.not23.i95 = icmp ult i64 %i.cd, 8
  br i1 %.not23.i95, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %.sroa.27.1, i64 8
  store i64 0, ptr %.sroa.27.1, align 1
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ci = icmp samesign ult i64 %i.cf, 8
  br i1 %i.ci, label %bb.ac, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i96

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i96: ; preds = %bb.ab
  %.sroa.speculated.i.i97 = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 8)
  %i.cj = add nuw i64 %.sroa.speculated.i.i97, %i.ca
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 9223372036854775807) ; 2 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #11 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ca ; 2 uses
  %.not28.i98 = icmp eq ptr %.sroa.27.1, %.sroa.0135.0230
  store i64 0, ptr %i.cm, align 1
  br i1 %.not28.i98, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i99, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %.sroa.0135.0230, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i99

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i99: ; preds = %bb.ad, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i96
  %.not.i27.i100 = icmp eq ptr %.sroa.0135.0230, null
  br i1 %.not.i27.i100, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i101, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i99
  %i.cn = sub i64 %i.cc, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0135.0230, i64 noundef %i.cn) #8
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i101

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i101: ; preds = %bb.ae, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i99
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  %.pre = ptrtoint ptr %i.cl to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.af:                                            ; preds = %.critedge
  %i.cq = getelementptr i8, ptr %.sroa.0135.0230, i64 %i.ca
  %i.cr = getelementptr i8, ptr %i.cq, i64 8      ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %.sroa.27.1, %i.cr
  %spec.select182.a = select i1 %.not.i.i.i74, ptr %.sroa.27.1, ptr %i.cr
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %bb.af, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i101, %bb.aa
  %.pre-phi = phi i64 [ %i.bz, %bb.af ], [ %.pre, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i101 ], [ %i.bz, %bb.aa ]
  %.sroa.61.4 = phi ptr [ %.sroa.61.0228, %bb.af ], [ %i.cp, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i101 ], [ %.sroa.61.0228, %bb.aa ]
  %.sroa.27.6 = phi ptr [ %spec.select182.a, %bb.af ], [ %i.co, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i101 ], [ %i.ch, %bb.aa ] ; 2 uses
  %.sroa.0135.4 = phi ptr [ %.sroa.0135.0230, %bb.af ], [ %i.cl, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i101 ], [ %.sroa.0135.0230, %bb.aa ] ; 2 uses
  %storemerge.i = select i1 %8, double -qnan, double %i.av, !prof !47
  %i.cs = ptrtoint ptr %.sroa.27.6 to i64
  %i.ct = sub i64 %i.cs, %.pre-phi
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0135.4, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8
  store double %storemerge.i, ptr %i.cv, align 1
  br label %bb.bj

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.0.0.copyload.i75 = load ptr, ptr %i.cw, align 8, !tbaa !35 ; 2 uses
  %.sroa.011.0.copyload = load ptr, ptr %.sroa.0.0.copyload.i75, align 8, !tbaa !15 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i75, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37 ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  br i1 %4, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cy = tail call noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator15getIdentifierIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964) %i.cx, ptr %.sroa.011.0.copyload, i64 %.sroa.5.0.copyload) #9
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cz = tail call noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator11getStringIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964) %i.cx, ptr %.sroa.011.0.copyload, i64 %.sroa.5.0.copyload) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.da = phi i32 [ %i.cy, %bb.ah ], [ %i.cz, %bb.ai ] ; 5 uses
  %i.db = icmp ugt i32 %i.da, 65535
  br i1 %i.db, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.dc = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.0135.0230 to i64    ; 4 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 8 uses
  %i.df = icmp ult i64 %i.de, -4
  br i1 %i.df, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.dg = ptrtoint ptr %.sroa.61.0228 to i64      ; 2 uses
  %i.dh = sub i64 %i.dg, %i.dc                    ; 2 uses
  %i.di = icmp sgt i64 %i.de, -1
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = xor i64 %i.de, 9223372036854775807      ; 2 uses
  %i.dk = icmp ule i64 %i.dh, %i.dj
  tail call void @llvm.assume(i1 %i.dk)
  %.not23.i103 = icmp ult i64 %i.dh, 4
  br i1 %.not23.i103, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %.sroa.27.1, align 1
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit110

bb.an:                                            ; preds = %bb.al
  %i.dl = icmp samesign ult i64 %i.dj, 4
  br i1 %i.dl, label %bb.ao, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i104

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i104: ; preds = %bb.an
  %.sroa.speculated.i.i105 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 4)
  %i.dm = add nuw i64 %.sroa.speculated.i.i105, %i.de
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 9223372036854775807) ; 2 uses
  %i.do = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #11 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.de ; 2 uses
  %.not28.i106 = icmp eq ptr %.sroa.27.1, %.sroa.0135.0230
  store i32 0, ptr %i.dp, align 1
  br i1 %.not28.i106, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i107, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %.sroa.0135.0230, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i107

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i107: ; preds = %bb.ap, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i104
  %.not.i27.i108 = icmp eq ptr %.sroa.0135.0230, null
  br i1 %.not.i27.i108, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i109, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i107
  %i.dq = sub i64 %i.dg, %i.dd
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0135.0230, i64 noundef %i.dq) #8
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i109

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i109: ; preds = %bb.aq, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i107
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  %.pre252.a = ptrtoint ptr %i.do to i64
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit110

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit110: ; preds = %bb.am, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i109
  %.pre5.i81.pre-phi = phi i64 [ %i.dd, %bb.am ], [ %.pre252.a, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i109 ]
  %.sroa.61.10 = phi ptr [ %.sroa.61.0228, %bb.am ], [ %i.dr, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i109 ]
  %.pn189 = phi ptr [ %.sroa.27.1, %bb.am ], [ %i.dp, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i109 ]
  %.sroa.0135.10 = phi ptr [ %.sroa.0135.0230, %bb.am ], [ %i.do, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i109 ]
  %.sroa.27.12 = getelementptr i8, ptr %.pn189, i64 4
  br label %_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferIjEEvT_RSt6vectorIhSaIhEE.exit82

bb.ar:                                            ; preds = %bb.ak
  %i.ds = getelementptr i8, ptr %.sroa.0135.0230, i64 %i.de
  %i.dt = getelementptr i8, ptr %i.ds, i64 4      ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %.sroa.27.1, %i.dt
  %spec.select183 = select i1 %.not.i.i.i76, ptr %.sroa.27.1, ptr %i.dt
  br label %_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferIjEEvT_RSt6vectorIhSaIhEE.exit82

_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferIjEEvT_RSt6vectorIhSaIhEE.exit82: ; preds = %bb.ar, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit110
  %.sroa.61.5 = phi ptr [ %.sroa.61.10, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit110 ], [ %.sroa.61.0228, %bb.ar ]
  %.sroa.27.7 = phi ptr [ %.sroa.27.12, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit110 ], [ %spec.select183, %bb.ar ] ; 2 uses
  %.sroa.0135.5 = phi ptr [ %.sroa.0135.10, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit110 ], [ %.sroa.0135.0230, %bb.ar ] ; 2 uses
  %.pre-phi.i78 = phi i64 [ %.pre5.i81.pre-phi, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit110 ], [ %i.dd, %bb.ar ]
  %i.du = ptrtoint ptr %.sroa.27.7 to i64
  %i.dv = sub i64 %i.du, %.pre-phi.i78
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0135.5, i64 %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4
  store i32 %i.da, ptr %i.dx, align 1
  br label %bb.bj

bb.as:                                            ; preds = %bb.aj
  %i.dy = icmp samesign ugt i32 %i.da, 255
  %i.dz = ptrtoint ptr %.sroa.27.1 to i64         ; 2 uses
  %i.ea = ptrtoint ptr %.sroa.0135.0230 to i64    ; 8 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 15 uses
  br i1 %i.dy, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.ec = trunc nuw i32 %i.da to i16
  %i.ed = icmp ult i64 %i.eb, -2
  br i1 %i.ed, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.ee = ptrtoint ptr %.sroa.61.0228 to i64      ; 2 uses
  %i.ef = sub i64 %i.ee, %i.dz                    ; 2 uses
  %i.eg = icmp sgt i64 %i.eb, -1
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = xor i64 %i.eb, 9223372036854775807      ; 2 uses
  %i.ei = icmp ule i64 %i.ef, %i.eh
  tail call void @llvm.assume(i1 %i.ei)
  %.not23.i111 = icmp ult i64 %i.ef, 2
  br i1 %.not23.i111, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %.sroa.27.1, align 1, !tbaa !9
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.27.1, i64 1
  store i8 0, ptr %i.ej, align 1
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit118

bb.aw:                                            ; preds = %bb.au
  %i.ek = icmp samesign ult i64 %i.eh, 2
  br i1 %i.ek, label %bb.ax, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i112

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i112: ; preds = %bb.aw
  %.sroa.speculated.i.i113 = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 2)
  %i.el = add nuw i64 %.sroa.speculated.i.i113, %i.eb
  %i.em = tail call i64 @llvm.umin.i64(i64 %i.el, i64 9223372036854775807) ; 2 uses
  %i.en = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #11 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eb ; 3 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store i8 0, ptr %i.ep, align 1
  %.not28.i114 = icmp eq ptr %.sroa.27.1, %.sroa.0135.0230
  br i1 %.not28.i114, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i115, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %.sroa.0135.0230, i64 %i.eb, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i115

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i115: ; preds = %bb.ay, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i112
  %.not.i27.i116 = icmp eq ptr %.sroa.0135.0230, null
  br i1 %.not.i27.i116, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i117, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i115
  %i.eq = sub i64 %i.ee, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0135.0230, i64 noundef %i.eq) #8
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i117

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i117: ; preds = %bb.az, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i115
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  %.pre253.a = ptrtoint ptr %i.en to i64
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit118

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit118: ; preds = %bb.av, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i117
  %.pre5.i88.pre-phi = phi i64 [ %i.ea, %bb.av ], [ %.pre253.a, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i117 ]
  %.sroa.61.11 = phi ptr [ %.sroa.61.0228, %bb.av ], [ %i.er, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i117 ]
  %.pn188 = phi ptr [ %.sroa.27.1, %bb.av ], [ %i.eo, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i117 ]
  %.sroa.0135.11 = phi ptr [ %.sroa.0135.0230, %bb.av ], [ %i.en, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i117 ]
  %.sroa.27.13 = getelementptr i8, ptr %.pn188, i64 2
  br label %_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferItEEvT_RSt6vectorIhSaIhEE.exit

bb.ba:                                            ; preds = %bb.at
  %i.es = getelementptr i8, ptr %.sroa.0135.0230, i64 %i.eb
  %i.et = getelementptr i8, ptr %i.es, i64 2      ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %.sroa.27.1, %i.et
  %spec.select185 = select i1 %.not.i.i.i83, ptr %.sroa.27.1, ptr %i.et
  br label %_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferItEEvT_RSt6vectorIhSaIhEE.exit

_ZN6hermes3hbc12_GLOBAL__N_122serializeValueToBufferItEEvT_RSt6vectorIhSaIhEE.exit: ; preds = %bb.ba, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit118
  %.sroa.61.6 = phi ptr [ %.sroa.61.11, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit118 ], [ %.sroa.61.0228, %bb.ba ]
  %.sroa.27.8 = phi ptr [ %.sroa.27.13, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit118 ], [ %spec.select185, %bb.ba ] ; 2 uses
  %.sroa.0135.6 = phi ptr [ %.sroa.0135.11, %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit118 ], [ %.sroa.0135.0230, %bb.ba ] ; 2 uses
end_hunk_0
