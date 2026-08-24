Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_constrain?download=true
inline.NumInlined: 176
inline.NumDeleted: 88
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIjSaIjEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal9constrainEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.c, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
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
  %2 = load ptr, ptr %i.d, align 8, !tbaa !12
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %4) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !14
  store ptr %i.u, ptr %i.b, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.x = load i32, ptr %i.w, align 4, !tbaa !15
  %.not15 = icmp eq i32 %i.x, 0
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !174 ; 4 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !174 ; 4 uses
  %.not47.not50 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not47.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.030.052 = phi ptr [ %i.ab, %.lr.ph ], [ %i.az, %bb.p ] ; 3 uses
  %.sroa.036.051 = phi ptr [ %i.ab, %.lr.ph ], [ %.sroa.036.1.ph, %bb.p ] ; 6 uses
  %i.ae = load i32, ptr %.sroa.030.052, align 4, !tbaa !13 ; 4 uses
  %i.af = tail call noundef i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !175 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !176 ; 2 uses
  %i.ak = icmp slt i32 %i.ae, 0
  %i.al = sub i8 0, %i.aj
  %spec.select.i = select i1 %i.ak, i8 %i.al, i8 %i.aj ; 2 uses
  %i.am = icmp sgt i8 %spec.select.i, 0
  br i1 %i.am, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = icmp slt i8 %spec.select.i, 0
  br i1 %i.an, label %._crit_edge.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !177
  %i.ap = sext i32 %i.ae to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !176 ; 2 uses
  %i.as = icmp slt i8 %i.ar, 0
  br i1 %i.as, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not16 = icmp eq i8 %i.ar, 0
  br i1 %.not16, label %bb.o, label %._crit_edge.loopexit

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.036.051, i64 4
  store i32 %i.ae, ptr %.sroa.036.051, align 4, !tbaa !13
  %i.au = load i32, ptr %.sroa.030.052, align 4, !tbaa !13 ; 2 uses
  %i.av = tail call i8 @llvm.scmp.i8.i32(i32 %i.au, i32 0)
  %i.aw = tail call noundef i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !176
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.k
  %.sroa.036.1.ph = phi ptr [ %i.at, %bb.o ], [ %.sroa.036.051, %bb.m ], [ %.sroa.036.051, %bb.k ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.030.052, i64 4 ; 2 uses
  %.not47.not = icmp eq ptr %i.az, %i.aa
  br i1 %.not47.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !178

._crit_edge.loopexit:                             ; preds = %bb.l, %bb.n, %bb.p
  %.sroa.036.0.lcssa.ph = phi ptr [ %.sroa.036.1.ph, %bb.p ], [ %.sroa.036.051, %bb.n ], [ %.sroa.036.051, %bb.l ]
  %.not47.not.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %bb.n ], [ false, %bb.l ]
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !174
  %.pre66 = load ptr, ptr %i.z, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.ba = phi ptr [ %i.aa, %bb.j ], [ %.pre66, %._crit_edge.loopexit ] ; 3 uses
  %i.bb = phi ptr [ %i.ab, %bb.j ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.036.0.lcssa = phi ptr [ %i.aa, %bb.j ], [ %.sroa.036.0.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  %.not47.not.lcssa = phi i1 [ true, %bb.j ], [ %.not47.not.lcssa.ph, %._crit_edge.loopexit ]
  %i.bc = ptrtoint ptr %.sroa.036.0.lcssa to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = ashr exact i64 %i.be, 2                 ; 3 uses
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = sub i64 %i.bg, %i.bd
  %i.bi = ashr exact i64 %i.bh, 2                 ; 3 uses
  %i.bj = icmp ugt i64 %i.bf, %i.bi
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.bk = sub nuw nsw i64 %i.bf, %i.bi
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.bk)
  %.pre67 = load ptr, ptr %i.y, align 8, !tbaa !174
  %.pre68 = load ptr, ptr %i.z, align 8, !tbaa !174
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.r:                                             ; preds = %._crit_edge
  %i.bl = icmp uge i64 %i.bf, %i.bi
  %.not.i.i = icmp eq ptr %i.ba, %.sroa.036.0.lcssa
  %or.cond = or i1 %i.bl, %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.q, %bb.r, %bb.s
  %i.bn = phi ptr [ %.pre68, %bb.q ], [ %i.ba, %bb.r ], [ %i.bm, %bb.s ] ; 2 uses
  %i.bo = phi ptr [ %.pre67, %bb.q ], [ %i.bb, %bb.r ], [ %i.bb, %bb.s ] ; 2 uses
  %.not4861 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not4861, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.t

._crit_edge64:                                    ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !174 ; 3 uses
  %i.br = load ptr, ptr %i.z, align 8, !tbaa !174 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br                ; 2 uses
  br i1 %.not47.not.lcssa, label %bb.w, label %bb.u

bb.t:                                             ; preds = %.lr.ph63, %bb.t
  %.sroa.025.062 = phi ptr [ %i.bo, %.lr.ph63 ], [ %i.by, %bb.t ] ; 2 uses
  %i.bt = load i32, ptr %.sroa.025.062, align 4, !tbaa !13
  %i.bu = tail call noundef i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !175
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 0, ptr %i.bx, align 1, !tbaa !176
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.025.062, i64 4 ; 2 uses
  %.not48 = icmp eq ptr %i.by, %i.bn
  br i1 %.not48, label %._crit_edge64, label %bb.t

bb.u:                                             ; preds = %._crit_edge64
  br i1 %i.bs, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bq, ptr %i.z, align 8, !tbaa !8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.w:                                             ; preds = %._crit_edge64
  br i1 %i.bs, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre69 = load ptr, ptr %i.bz, align 8, !tbaa !180
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i8 1, ptr %i.cd, align 8, !tbaa !181
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !182
  %.not17 = icmp eq i64 %i.cf, 0
  br i1 %.not17, label %bb.y, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1185
  store i8 0, ptr %i.cg, align 1, !tbaa !183
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.z:                                             ; preds = %.preheader, %_ZN7CaDiCaL8Internal6freezeEi.exit
  %i.ch = phi ptr [ %.pre69, %.preheader ], [ %i.db, %_ZN7CaDiCaL8Internal6freezeEi.exit ] ; 6 uses
  %.sroa.021.065 = phi ptr [ %i.bq, %.preheader ], [ %i.df, %_ZN7CaDiCaL8Internal6freezeEi.exit ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.021.065, align 4, !tbaa !13
  %i.cj = tail call noundef i32 @llvm.abs.i32(i32 %i.ci, i1 true)
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !184 ; 2 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ch to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2                 ; 4 uses
  %.not.i19 = icmp ugt i64 %i.cp, %i.ck
  br i1 %.not.i19, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i64, ptr %i.cb, align 8, !tbaa !185 ; 2 uses
  %.not10.i = icmp eq i64 %i.cq, 0
  %i.cr = shl i64 %i.cq, 1
  %i.cs = load i32, ptr %i.cc, align 8
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = add nsw i64 %i.ct, 1
  %i.cv = select i1 %.not10.i, i64 %i.cu, i64 %i.cr
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi i64 [ %i.cv, %bb.aa ], [ %i.cw, %bb.ab ] ; 6 uses
  %.not11.i = icmp ugt i64 %.0.i, %i.ct
  %i.cw = shl i64 %.0.i, 1
  br i1 %.not11.i, label %bb.ac, label %bb.ab, !llvm.loop !186

bb.ac:                                            ; preds = %bb.ab
  %i.cx = icmp ugt i64 %.0.i, %i.cp
  br i1 %i.cx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cy = sub nuw i64 %.0.i, %i.cp
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 noundef %i.cy)
  %.pre.i = load ptr, ptr %i.bz, align 8, !tbaa !180
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.cz = icmp samesign ult i64 %.0.i, %i.cp
  br i1 %i.cz, label %bb.af, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.0.i ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.cl, %i.da
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.da, ptr %i.ca, align 8, !tbaa !184
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.z
  %i.db = phi ptr [ %i.ch, %bb.ag ], [ %i.ch, %bb.af ], [ %i.ch, %bb.ae ], [ %.pre.i, %bb.ad ], [ %i.ch, %bb.z ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ck ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !13 ; 2 uses
  %.not12.i = icmp eq i32 %i.dd, -1
  br i1 %.not12.i, label %_ZN7CaDiCaL8Internal6freezeEi.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.de = add nuw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !13
  br label %_ZN7CaDiCaL8Internal6freezeEi.exit

_ZN7CaDiCaL8Internal6freezeEi.exit:               ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.021.065, i64 4 ; 2 uses
  %.not49 = icmp eq ptr %i.df, %i.br
  br i1 %.not49, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.z

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZN7CaDiCaL8Internal6freezeEi.exit, %bb.x, %bb.y, %bb.u, %bb.v, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.c
  ret void
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal17failed_constraintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.b = load i8, ptr %i.a, align 8, !tbaa !181, !range !187, !noundef !188
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal16reset_constraintEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174  ; 2 uses
  %.not6 = icmp eq ptr %i.b, %i.d
  br i1 %.not6, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal4meltEi.exit
  store ptr %i.b, ptr %i.c, align 8, !tbaa !8
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i8 0, ptr %i.i, align 8, !tbaa !181
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1185
  store i8 1, ptr %i.j, align 1, !tbaa !183
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
  br i1 %.not7.i, label %_ZN7CaDiCaL8Internal4meltEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.o, ptr %i.n, align 4, !tbaa !13
  br label %_ZN7CaDiCaL8Internal4meltEi.exit

_ZN7CaDiCaL8Internal4meltEi.exit:                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !180    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !184
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #13 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !13
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !13
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %2 = load ptr, ptr %i.h, align 8, !tbaa !189
  %3 = ptrtoint ptr %2 to i64
  %i.ad = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #14
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !180
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !189
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #13 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !13
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !13
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %2 = load ptr, ptr %i.h, align 8, !tbaa !12
  %3 = ptrtoint ptr %2 to i64
  %i.ad = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!5, !5, i64 0}
!14 = !{!9, !10, i64 0}
!15 = !{!16, !5, i64 348}
!16 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !6, i64 4, !6, i64 12, !17, i64 20, !17, i64 21, !17, i64 22, !17, i64 23, !17, i64 24, !17, i64 25, !17, i64 26, !17, i64 27, !17, i64 28, !17, i64 29, !17, i64 30, !17, i64 31, !17, i64 32, !17, i64 33, !17, i64 34, !6, i64 35, !18, i64 40, !19, i64 88, !5, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !17, i64 144, !20, i64 152, !20, i64 176, !20, i64 200, !20, i64 224, !20, i64 248, !20, i64 272, !25, i64 296, !31, i64 320, !17, i64 344, !17, i64 345, !5, i64 348, !36, i64 352, !41, i64 472, !37, i64 480, !42, i64 504, !46, i64 528, !42, i64 552, !49, i64 576, !50, i64 600, !55, i64 624, !56, i64 632, !59, i64 688, !64, i64 712, !46, i64 736, !69, i64 760, !20, i64 784, !20, i64 808, !74, i64 832, !74, i64 856, !46, i64 880, !20, i64 904, !79, i64 928, !84, i64 952, !89, i64 976, !89, i64 984, !89, i64 992, !89, i64 1000, !89, i64 1008, !17, i64 1016, !17, i64 1017, !17, i64 1018, !5, i64 1020, !19, i64 1024, !89, i64 1032, !19, i64 1040, !19, i64 1048, !19, i64 1056, !19, i64 1064, !19, i64 1072, !19, i64 1080, !46, i64 1088, !46, i64 1112, !46, i64 1136, !46, i64 1160, !17, i64 1184, !17, i64 1185, !46, i64 1192, !46, i64 1216, !46, i64 1240, !46, i64 1264, !46, i64 1288, !46, i64 1312, !46, i64 1336, !90, i64 1360, !46, i64 2176, !17, i64 2200, !19, i64 2208, !91, i64 2216, !19, i64 2224, !46, i64 2232, !92, i64 2256, !25, i64 2280, !97, i64 2304, !6, i64 2952, !102, i64 3000, !104, i64 3024, !106, i64 3216, !117, i64 3384, !102, i64 3440, !102, i64 3464, !118, i64 3488, !119, i64 3496, !124, i64 3520, !129, i64 3544, !134, i64 3568, !135, i64 4584, !166, i64 7144, !168, i64 7200, !169, i64 7224, !58, i64 7256, !171, i64 7264, !17, i64 7272, !172, i64 7280, !173, i64 7288}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"_ZTSN7CaDiCaL9ReluctantE", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !17, i64 40, !17, i64 41}
!19 = !{!"long", !6, i64 0}
!20 = !{!"_ZTSSt6vectorIlSaIlEE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 long", !11, i64 0}
!25 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !30, i64 0}
!30 = !{!"any p2 pointer", !11, i64 0}
!31 = !{!"_ZTSSt6vectorIS_IS_IlSaIlEESaIS1_EESaIS3_EE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !11, i64 0}
!36 = !{!"_ZTSN7CaDiCaL6PhasesE", !37, i64 0, !37, i64 24, !37, i64 48, !37, i64 72, !37, i64 96}
!37 = !{!"_ZTSSt6vectorIaSaIaEE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 omnipotent char", !11, i64 0}
!42 = !{!"_ZTSSt6vectorIjSaIjEE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!46 = !{!"_ZTSSt6vectorIiSaIiEE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !9, i64 0}
!49 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !19, i64 16}
!50 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !11, i64 0}
!55 = !{!"double", !6, i64 0}
!56 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !42, i64 0, !42, i64 24, !57, i64 48}
!57 = !{!"_ZTSN7CaDiCaL13score_smallerE", !58, i64 0}
!58 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !11, i64 0}
!59 = !{!"_ZTSSt6vectorIdSaIdEE", !60, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!63 = !{!"p1 double", !11, i64 0}
!64 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !65, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !66, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!68 = !{!"p1 _ZTSN7CaDiCaL3VarE", !11, i64 0}
!69 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!73 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !11, i64 0}
!74 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!78 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !11, i64 0}
!79 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !11, i64 0}
!84 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !85, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!88 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !11, i64 0}
!89 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !11, i64 0}
!90 = !{!"_ZTS4Reap", !19, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 24}
!91 = !{!"p1 _ZTS14cadical_kitten", !11, i64 0}
!92 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !11, i64 0}
!97 = !{!"_ZTSN7CaDiCaL8AveragesE", !19, i64 0, !98, i64 8, !98, i64 328}
!98 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !99, i64 0, !101, i64 80, !100, i64 160, !100, i64 200, !100, i64 240, !100, i64 280}
!99 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !100, i64 0, !100, i64 40}
!100 = !{!"_ZTSN7CaDiCaL3EMAE", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32}
!101 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !100, i64 0, !100, i64 40}
!102 = !{!"_ZTSN7CaDiCaL5DelayE", !103, i64 0}
!103 = !{!"_ZTSN7CaDiCaL5DelayUt_E", !19, i64 0, !19, i64 8, !17, i64 16}
!104 = !{!"_ZTSN7CaDiCaL5LimitE", !17, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !5, i64 144, !5, i64 148, !19, i64 152, !6, i64 160, !19, i64 176, !105, i64 184}
!105 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !5, i64 0, !5, i64 4}
!106 = !{!"_ZTSN7CaDiCaL4LastE", !107, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !109, i64 48, !110, i64 72, !111, i64 80, !111, i64 88, !112, i64 96, !113, i64 112, !114, i64 120, !115, i64 136, !116, i64 160}
!107 = !{!"_ZTSN7CaDiCaL4LastUt_E", !19, i64 0}
!108 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !19, i64 0}
!109 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !19, i64 0, !19, i64 8, !19, i64 16}
!110 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !19, i64 0}
!111 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !19, i64 0}
!112 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !19, i64 0, !19, i64 8}
!113 = !{!"_ZTSN7CaDiCaL4LastUt5_E", !19, i64 0}
!114 = !{!"_ZTSN7CaDiCaL4LastUt6_E", !19, i64 0, !19, i64 8}
!115 = !{!"_ZTSN7CaDiCaL4LastUt7_E", !19, i64 0, !19, i64 8, !19, i64 16}
!116 = !{!"_ZTSN7CaDiCaL4LastUt8_E", !19, i64 0}
!117 = !{!"_ZTSN7CaDiCaL3IncE", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48}
!118 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !11, i64 0}
!119 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !120, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !121, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !122, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!123 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !30, i64 0}
!124 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !125, i64 0}
!125 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !127, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!128 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !30, i64 0}
!129 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !130, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !131, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !132, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!133 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !30, i64 0}
!134 = !{!"_ZTSN7CaDiCaL7OptionsE", !58, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !5, i64 568, !5, i64 572, !5, i64 576, !5, i64 580, !5, i64 584, !5, i64 588, !5, i64 592, !5, i64 596, !5, i64 600, !5, i64 604, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !5, i64 636, !5, i64 640, !5, i64 644, !5, i64 648, !5, i64 652, !5, i64 656, !5, i64 660, !5, i64 664, !5, i64 668, !5, i64 672, !5, i64 676, !5, i64 680, !5, i64 684, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 700, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !5, i64 732, !5, i64 736, !5, i64 740, !5, i64 744, !5, i64 748, !5, i64 752, !5, i64 756, !5, i64 760, !5, i64 764, !5, i64 768, !5, i64 772, !5, i64 776, !5, i64 780, !5, i64 784, !5, i64 788, !5, i64 792, !5, i64 796, !5, i64 800, !5, i64 804, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !5, i64 856, !5, i64 860, !5, i64 864, !5, i64 868, !5, i64 872, !5, i64 876, !5, i64 880, !5, i64 884, !5, i64 888, !5, i64 892, !5, i64 896, !5, i64 900, !5, i64 904, !5, i64 908, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !5, i64 932, !5, i64 936, !5, i64 940, !5, i64 944, !5, i64 948, !5, i64 952, !5, i64 956, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !5, i64 976, !5, i64 980, !5, i64 984, !5, i64 988, !5, i64 992, !5, i64 996, !5, i64 1000, !5, i64 1004, !5, i64 1008, !5, i64 1012}
!135 = !{!"_ZTSN7CaDiCaL5StatsE", !58, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !136, i64 40, !137, i64 96, !138, i64 208, !19, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !19, i64 368, !19, i64 376, !139, i64 384, !140, i64 424, !140, i64 448, !141, i64 472, !142, i64 488, !143, i64 520, !146, i64 600, !147, i64 656, !148, i64 696, !149, i64 736, !19, i64 760, !19, i64 768, !19, i64 776, !19, i64 784, !19, i64 792, !19, i64 800, !19, i64 808, !19, i64 816, !19, i64 824, !19, i64 832, !19, i64 840, !19, i64 848, !19, i64 856, !19, i64 864, !19, i64 872, !19, i64 880, !19, i64 888, !19, i64 896, !19, i64 904, !19, i64 912, !19, i64 920, !19, i64 928, !19, i64 936, !19, i64 944, !19, i64 952, !19, i64 960, !19, i64 968, !19, i64 976, !19, i64 984, !19, i64 992, !19, i64 1000, !19, i64 1008, !19, i64 1016, !19, i64 1024, !19, i64 1032, !19, i64 1040, !19, i64 1048, !19, i64 1056, !19, i64 1064, !19, i64 1072, !19, i64 1080, !19, i64 1088, !19, i64 1096, !19, i64 1104, !19, i64 1112, !19, i64 1120, !19, i64 1128, !19, i64 1136, !19, i64 1144, !19, i64 1152, !19, i64 1160, !19, i64 1168, !19, i64 1176, !19, i64 1184, !19, i64 1192, !19, i64 1200, !19, i64 1208, !19, i64 1216, !19, i64 1224, !19, i64 1232, !19, i64 1240, !19, i64 1248, !19, i64 1256, !19, i64 1264, !19, i64 1272, !19, i64 1280, !19, i64 1288, !19, i64 1296, !19, i64 1304, !19, i64 1312, !19, i64 1320, !19, i64 1328, !19, i64 1336, !19, i64 1344, !19, i64 1352, !19, i64 1360, !19, i64 1368, !19, i64 1376, !19, i64 1384, !19, i64 1392, !19, i64 1400, !19, i64 1408, !19, i64 1416, !19, i64 1424, !19, i64 1432, !19, i64 1440, !19, i64 1448, !19, i64 1456, !19, i64 1464, !19, i64 1472, !19, i64 1480, !19, i64 1488, !19, i64 1496, !19, i64 1504, !19, i64 1512, !19, i64 1520, !19, i64 1528, !19, i64 1536, !19, i64 1544, !19, i64 1552, !19, i64 1560, !19, i64 1568, !19, i64 1576, !19, i64 1584, !19, i64 1592, !19, i64 1600, !19, i64 1608, !19, i64 1616, !19, i64 1624, !19, i64 1632, !19, i64 1640, !150, i64 1648, !19, i64 1664, !19, i64 1672, !19, i64 1680, !19, i64 1688, !151, i64 1696, !19, i64 1720, !19, i64 1728, !19, i64 1736, !19, i64 1744, !19, i64 1752, !19, i64 1760, !19, i64 1768, !19, i64 1776, !19, i64 1784, !19, i64 1792, !19, i64 1800, !19, i64 1808, !19, i64 1816, !19, i64 1824, !19, i64 1832, !19, i64 1840, !19, i64 1848, !19, i64 1856, !19, i64 1864, !19, i64 1872, !19, i64 1880, !19, i64 1888, !19, i64 1896, !19, i64 1904, !19, i64 1912, !19, i64 1920, !19, i64 1928, !19, i64 1936, !19, i64 1944, !19, i64 1952, !19, i64 1960, !19, i64 1968, !19, i64 1976, !19, i64 1984, !19, i64 1992, !19, i64 2000, !19, i64 2008, !19, i64 2016, !19, i64 2024, !19, i64 2032, !19, i64 2040, !19, i64 2048, !19, i64 2056, !19, i64 2064, !19, i64 2072, !19, i64 2080, !19, i64 2088, !19, i64 2096, !19, i64 2104, !19, i64 2112, !19, i64 2120, !19, i64 2128, !19, i64 2136, !19, i64 2144, !19, i64 2152, !152, i64 2160, !152, i64 2200, !153, i64 2240, !19, i64 2256, !19, i64 2264, !19, i64 2272, !19, i64 2280, !154, i64 2288, !155, i64 2304, !159, i64 2328, !164, i64 2352, !165, i64 2528}
!136 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48}
!137 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !6, i64 0, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104}
!138 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !19, i64 0, !19, i64 8, !19, i64 16}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !55, i64 0, !55, i64 8}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !19, i64 0, !19, i64 8, !144, i64 16, !144, i64 32, !144, i64 48, !145, i64 64}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt6_Ut_E", !19, i64 0, !19, i64 8}
!145 = !{!"_ZTSN7CaDiCaL5StatsUt6_Ut0_E", !19, i64 0, !19, i64 8}
!146 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48}
!147 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
!148 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32}
end_hunk_0
