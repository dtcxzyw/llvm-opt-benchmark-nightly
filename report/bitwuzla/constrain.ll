Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/constrain?download=true
inline.NumInlined: 180
inline.NumDeleted: 90
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIjSaIjEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal9constrainEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.c, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #13 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.s, align 4, !tbaa !13
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !14
  store ptr %i.u, ptr %i.b, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.x = load i32, ptr %i.w, align 4, !tbaa !166
  %.not15 = icmp eq i32 %i.x, 0
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !159 ; 4 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !159 ; 4 uses
  %.not48.not51 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not48.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.pre67 = load ptr, ptr %i.ac, align 8, !tbaa !167
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.p
  %i.ae = phi ptr [ %.pre67, %.lr.ph ], [ %i.az, %bb.p ] ; 4 uses
  %.sroa.031.053 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ba, %bb.p ] ; 3 uses
  %.sroa.037.052 = phi ptr [ %i.ab, %.lr.ph ], [ %.sroa.037.1.ph, %bb.p ] ; 6 uses
  %i.af = load i32, ptr %.sroa.031.053, align 4, !tbaa !13 ; 4 uses
  %i.ag = tail call noundef i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !168 ; 2 uses
  %i.ak = icmp slt i32 %i.af, 0
  %i.al = sub i8 0, %i.aj
  %spec.select.i = select i1 %i.ak, i8 %i.al, i8 %i.aj ; 2 uses
  %i.am = icmp sgt i8 %spec.select.i, 0
  br i1 %i.am, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = icmp slt i8 %spec.select.i, 0
  br i1 %i.an, label %._crit_edge.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !169
  %i.ap = sext i32 %i.af to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !168 ; 2 uses
  %i.as = icmp slt i8 %i.ar, 0
  br i1 %i.as, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not16 = icmp eq i8 %i.ar, 0
  br i1 %.not16, label %bb.o, label %._crit_edge.loopexit

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.037.052, i64 4
  store i32 %i.af, ptr %.sroa.037.052, align 4, !tbaa !13
  %i.au = load i32, ptr %.sroa.031.053, align 4, !tbaa !13 ; 2 uses
  %i.av = tail call i8 @llvm.scmp.i8.i32(i32 %i.au, i32 0)
  %i.aw = tail call noundef i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !168
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !167
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.k
  %i.az = phi ptr [ %.pre, %bb.o ], [ %i.ae, %bb.m ], [ %i.ae, %bb.k ]
  %.sroa.037.1.ph = phi ptr [ %i.at, %bb.o ], [ %.sroa.037.052, %bb.m ], [ %.sroa.037.052, %bb.k ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.031.053, i64 4 ; 2 uses
  %.not48.not = icmp eq ptr %i.ba, %i.aa
  br i1 %.not48.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !164

._crit_edge.loopexit:                             ; preds = %bb.l, %bb.n, %bb.p
  %.sroa.037.0.lcssa.ph = phi ptr [ %.sroa.037.1.ph, %bb.p ], [ %.sroa.037.052, %bb.n ], [ %.sroa.037.052, %bb.l ]
  %.not48.not.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %bb.n ], [ false, %bb.l ]
  %.pre68 = load ptr, ptr %i.y, align 8, !tbaa !159
  %.pre69 = load ptr, ptr %i.z, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.bb = phi ptr [ %i.aa, %bb.j ], [ %.pre69, %._crit_edge.loopexit ] ; 3 uses
  %i.bc = phi ptr [ %i.ab, %bb.j ], [ %.pre68, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.037.0.lcssa = phi ptr [ %i.aa, %bb.j ], [ %.sroa.037.0.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  %.not48.not.lcssa = phi i1 [ true, %bb.j ], [ %.not48.not.lcssa.ph, %._crit_edge.loopexit ]
  %i.bd = ptrtoint ptr %.sroa.037.0.lcssa to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 2                 ; 3 uses
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = sub i64 %i.bh, %i.be
  %i.bj = ashr exact i64 %i.bi, 2                 ; 3 uses
  %i.bk = icmp ugt i64 %i.bg, %i.bj
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.bl = sub nuw nsw i64 %i.bg, %i.bj
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.bl)
  %.pre70 = load ptr, ptr %i.y, align 8, !tbaa !159
  %.pre71 = load ptr, ptr %i.z, align 8, !tbaa !159
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.r:                                             ; preds = %._crit_edge
  %i.bm = icmp uge i64 %i.bg, %i.bj
  %.not.i.i = icmp eq ptr %i.bb, %.sroa.037.0.lcssa
  %or.cond = or i1 %i.bm, %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf ; 2 uses
  store ptr %i.bn, ptr %i.z, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.q, %bb.r, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bo = phi ptr [ %.pre71, %bb.q ], [ %i.bb, %bb.r ], [ %i.bn, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bp = phi ptr [ %.pre70, %bb.q ], [ %i.bc, %bb.r ], [ %i.bc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %.not4962 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not4962, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.s

._crit_edge65:                                    ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !159 ; 3 uses
  %i.bs = load ptr, ptr %i.z, align 8, !tbaa !159 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs                ; 2 uses
  br i1 %.not48.not.lcssa, label %bb.u, label %bb.t

bb.s:                                             ; preds = %.lr.ph64, %bb.s
  %.sroa.026.063 = phi ptr [ %i.bp, %.lr.ph64 ], [ %i.bz, %bb.s ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.026.063, align 4, !tbaa !13
  %i.bv = tail call noundef i32 @llvm.abs.i32(i32 %i.bu, i1 true)
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !167
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !168
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.026.063, i64 4 ; 2 uses
  %.not49 = icmp eq ptr %i.bz, %i.bo
  br i1 %.not49, label %._crit_edge65, label %bb.s

bb.t:                                             ; preds = %._crit_edge65
  br i1 %i.bt, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i19:      ; preds = %bb.t
  store ptr %i.br, ptr %i.z, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.u:                                             ; preds = %._crit_edge65
  br i1 %i.bt, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre72 = load ptr, ptr %i.ca, align 8, !tbaa !160
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i8 1, ptr %i.ce, align 8, !tbaa !161
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !171
  %.not17 = icmp eq i64 %i.cg, 0
  br i1 %.not17, label %bb.w, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1161
  store i8 0, ptr %i.ch, align 1, !tbaa !162
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.x:                                             ; preds = %.preheader, %_ZN7CaDiCaL8Internal6freezeEi.exit
  %i.ci = phi ptr [ %.pre72, %.preheader ], [ %i.dc, %_ZN7CaDiCaL8Internal6freezeEi.exit ] ; 6 uses
  %.sroa.022.066 = phi ptr [ %i.br, %.preheader ], [ %i.dg, %_ZN7CaDiCaL8Internal6freezeEi.exit ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.022.066, align 4, !tbaa !13
  %i.ck = tail call noundef i32 @llvm.abs.i32(i32 %i.cj, i1 true)
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !163 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ci to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2                 ; 4 uses
  %.not.i20 = icmp ugt i64 %i.cq, %i.cl
  br i1 %.not.i20, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load i64, ptr %i.cc, align 8, !tbaa !172 ; 2 uses
  %.not10.i = icmp eq i64 %i.cr, 0
  %i.cs = shl i64 %i.cr, 1
  %i.ct = load i32, ptr %i.cd, align 8
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = add nsw i64 %i.cu, 1
  %i.cw = select i1 %.not10.i, i64 %i.cv, i64 %i.cs
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0.i = phi i64 [ %i.cw, %bb.y ], [ %i.cx, %bb.z ] ; 6 uses
  %.not11.i = icmp ugt i64 %.0.i, %i.cu
  %i.cx = shl i64 %.0.i, 1
  br i1 %.not11.i, label %bb.aa, label %bb.z, !llvm.loop !165

bb.aa:                                            ; preds = %bb.z
  %i.cy = icmp ugt i64 %.0.i, %i.cq
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = sub nuw i64 %.0.i, %i.cq
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef %i.cz)
  %.pre.i = load ptr, ptr %i.ca, align 8, !tbaa !160
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.da = icmp samesign ult i64 %.0.i, %i.cq
  br i1 %i.da, label %bb.ad, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0.i ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.cm, %i.db
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.ad
  store ptr %i.db, ptr %i.cb, align 8, !tbaa !163
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.x
  %i.dc = phi ptr [ %i.ci, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.ci, %bb.ad ], [ %i.ci, %bb.ac ], [ %.pre.i, %bb.ab ], [ %i.ci, %bb.x ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cl ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !13 ; 2 uses
  %.not12.i = icmp eq i32 %i.de, -1
  br i1 %.not12.i, label %_ZN7CaDiCaL8Internal6freezeEi.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.df = add nuw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !13
  br label %_ZN7CaDiCaL8Internal6freezeEi.exit

_ZN7CaDiCaL8Internal6freezeEi.exit:               ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.022.066, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.dg, %i.bs
  br i1 %.not50, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.x

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZN7CaDiCaL8Internal6freezeEi.exit, %bb.v, %bb.w, %bb.t, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i19, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.c
  ret void
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal17failed_constraintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !161, !range !173, !noundef !174
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal16reset_constraintEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 2 uses
  %.not6 = icmp eq ptr %i.b, %i.d
  br i1 %.not6, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.b

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7CaDiCaL8Internal4meltEi.exit
  store ptr %i.b, ptr %i.c, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i8 0, ptr %i.i, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1161
  store i8 1, ptr %i.j, align 1, !tbaa !162
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8Internal4meltEi.exit
  %.sroa.03.07 = phi ptr [ %i.b, %.lr.ph ], [ %i.s, %_ZN7CaDiCaL8Internal4meltEi.exit ] ; 2 uses
  %i.k = load i32, ptr %.sroa.03.07, align 4, !tbaa !13
  %i.l = tail call noundef i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13   ; 3 uses
  %.not.i = icmp eq i32 %i.o, -1
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal4meltEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !13
  %.not6.i = icmp eq i32 %i.p, 0
  br i1 %.not6.i, label %bb.d, label %_ZN7CaDiCaL8Internal4meltEi.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.m
  %i.r = load i32, ptr %i.q, align 4, !tbaa !13
  %.not7.i = icmp eq i32 %i.r, 0
end_hunk_0
