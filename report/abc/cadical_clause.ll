Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_clause?download=true
inline.NumInlined: 457
inline.NumDeleted: 252
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal20assign_original_unitEli:bb.a
  store i32 %2, ptr %i.ap, align 4, !tbaa !8
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !200
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.au) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !177
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !176
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.av, ptr %i.aa, align 8, !tbaa !200
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !246
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !246
  %i.az = tail call noundef i32 @llvm.fshl.i32(i32 %i.a, i32 %2, i32 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !201, !range !202, !noundef !203
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 345
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !204, !range !202, !noundef !203
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = sext i32 %i.az to i64
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !205
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  store i64 %1, ptr %i.bj, align 8, !tbaa !182
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @_ZN7CaDiCaL8Internal10mark_fixedEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %2) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !247
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bm = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #17
  br i1 %i.bm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  ret void
}

declare void @_ZN7CaDiCaL8Internal10mark_fixedEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #6

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal23add_new_original_clauseEl(ptr noundef nonnull align 8 dereferenceable(7296) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.std::unordered_set", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1017 ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !249, !range !202, !noundef !203
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp ne i32 %i.e, 0
  %not. = xor i1 %i.c, true
  %or.cond = select i1 %not., i1 %.not, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4028
  %i.g = load i32, ptr %i.f, align 4
  %.not49 = icmp eq i32 %i.g, 0
  %or.cond61 = select i1 %or.cond, i1 %.not49, i1 false
  br i1 %or.cond61, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.i = load i32, ptr %i.h, align 4, !tbaa !250  ; 2 uses
  %.not50 = icmp eq i32 %i.i, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.k = tail call noundef i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.l = zext nneg i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 8, !tbaa !197
  %i.p = add nsw i32 %i.o, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink = phi i32 [ %i.p, %bb.c ], [ 0, %bb.a ]
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %.sink) #17
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.r, align 8, !tbaa !213
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !251
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !252
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !253, !range !202, !noundef !203
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15 ; 2 uses
  %.not120126 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not120126, label %._crit_edge135.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %.pre136 = load ptr, ptr %i.z, align 8, !tbaa !15 ; 2 uses
  %.pre137 = load ptr, ptr %i.ab, align 8, !tbaa !15 ; 2 uses
  %.not121131 = icmp eq ptr %.pre136, %.pre137
  br i1 %.not121131, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.aa

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %.0129 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 7 uses
  %.041128 = phi i64 [ 0, %.lr.ph ], [ %.142, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 9 uses
  %.sroa.0107.0127 = phi ptr [ %i.aa, %.lr.ph ], [ %i.en, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 5 uses
  %i.ar = load i32, ptr %.sroa.0107.0127, align 4, !tbaa !8 ; 3 uses
  %i.as = call noundef i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13  ; 2 uses
  %i.ax = icmp slt i32 %i.ar, 0
  %i.ay = sub i8 0, %i.aw
  %spec.select.i = select i1 %i.ax, i8 %i.ay, i8 %i.aw ; 2 uses
  %i.az = icmp sgt i8 %spec.select.i, 0
  br i1 %i.az, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp slt i8 %spec.select.i, 0
  br i1 %i.ba, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = call i8 @llvm.scmp.i8.i32(i32 %i.ar, i32 0)
  store i8 %i.bb, ptr %i.av, align 1, !tbaa !13
  %i.bc = load i32, ptr %.sroa.0107.0127, align 4, !tbaa !8 ; 4 uses
  %i.bd = call i32 @llvm.abs.i32(i32 %i.bc, i1 true) ; 2 uses
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !199 ; 2 uses
  %i.bf = zext nneg i32 %i.bd to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13  ; 2 uses
  %.not.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = sext i8 %i.bh to i32
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !195
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !197
  %.not9.i = icmp eq i32 %i.bl, 0
  %spec.select.i62.a = select i1 %.not9.i, i32 %i.bi, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.h ], [ %spec.select.i62.a, %bb.i ] ; 2 uses
  %4 = icmp slt i32 %i.bc, 0                      ; 2 uses
  %5 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %4, i32 %5, i32 %.0.i ; 2 uses
  %6 = icmp slt i32 %spec.select10.i, 0
  br i1 %6, label %bb.j, label %bb.r

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.bm = load i8, ptr %i.aj, align 8, !tbaa !201, !range !202, !noundef !203
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.k, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.ak, align 8, !tbaa !177
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bf
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8  ; 3 uses
  %i.br = sub nsw i32 0, %i.bq
  %spec.select.i63 = select i1 %4, i32 %i.br, i32 %i.bq
  %i.bs = icmp sgt i32 %spec.select.i63, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = call i32 @llvm.abs.i32(i32 %i.bq, i1 true)
  %i.bv = shl nuw i32 %i.bu, 1
  %i.bw = or disjoint i32 %i.bv, %i.bt
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !214
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = zext i32 %i.bw to i64
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !205
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !182
  %.not53 = icmp eq i64 %i.cc, 0
  br i1 %.not53, label %bb.l, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.l:                                             ; preds = %bb.k
  %i.cd = sub nsw i32 0, %i.bc
  %i.ce = call noundef i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.cd, i32 1)
  %i.cf = zext i32 %i.ce to i64
  %i.cg = load ptr, ptr %i.am, align 8, !tbaa !205
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !182 ; 2 uses
  %i.cj = load ptr, ptr %i.ao, align 8, !tbaa !254 ; 4 uses
  %i.ck = load ptr, ptr %i.ap, align 8, !tbaa !255
  %.not.i64 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i64, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !182
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !254
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.n:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %i.an, align 8, !tbaa !205 ; 4 uses
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.o, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #14 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i64 %i.ci, ptr %i.cy, align 8, !tbaa !182
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.p, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.db = load ptr, ptr %i.ap, align 8, !tbaa !255
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dd) #16
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.cx, ptr %i.an, align 8, !tbaa !205
  store ptr %i.da, ptr %i.ao, align 8, !tbaa !254
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.de, ptr %i.ap, align 8, !tbaa !255
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.r:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.not51 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not51, label %bb.s, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.ah, align 8, !tbaa !176 ; 4 uses
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !200
  %.not.i65 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.bc, ptr %i.df, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %i.dh, ptr %i.ah, align 8, !tbaa !176
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.u:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %i.ag, align 8, !tbaa !177 ; 4 uses
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 5 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775804
  br i1 %i.dm, label %bb.v, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.dn = ashr exact i64 %i.dl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i66, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 2305843009213693951)
  %i.dr = select i1 %i.dp, i64 2305843009213693951, i64 %i.dq ; 3 uses
  %.not.i.i.i67 = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i67)
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #14 ; 4 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.dl ; 2 uses
  %i.dv = load i32, ptr %.sroa.0107.0127, align 4, !tbaa !8
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !8
  %i.dw = icmp sgt i64 %i.dl, 0
  br i1 %i.dw, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr align 4 %i.di, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %.not.i17.i.i68 = icmp eq ptr %i.di, null
  br i1 %.not.i17.i.i68, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dy = load ptr, ptr %i.ai, align 8, !tbaa !200
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.ea) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dt, ptr %i.ag, align 8, !tbaa !177
  store ptr %i.dx, ptr %i.ah, align 8, !tbaa !176
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.eb, ptr %i.ai, align 8, !tbaa !200
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !199
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ec = phi ptr [ %i.be, %bb.t ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.ed = load i32, ptr %.sroa.0107.0127, align 4, !tbaa !8 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %.not52 = icmp eq i8 %i.eg, 0
  br i1 %.not52, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.eh = call noundef i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = load ptr, ptr %i.af, align 8, !tbaa !195
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.ei ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %3, ptr %2, align 8, !tbaa !257
  %i.el = call { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ek, ptr noundef nonnull align 4 dereferenceable(4) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.em = add i64 %.041128, 1
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.m, %bb.r, %bb.k, %bb.g, %bb.z, %bb.y, %bb.j, %bb.f
  %.142 = phi i64 [ %.041128, %bb.f ], [ %i.em, %bb.z ], [ %.041128, %bb.g ], [ %.041128, %bb.j ], [ %.041128, %bb.k ], [ %.041128, %bb.y ], [ %.041128, %bb.r ], [ %.041128, %bb.m ], [ %.041128, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ] ; 2 uses
  %.1 = phi i1 [ %.0129, %bb.f ], [ %.0129, %bb.z ], [ true, %bb.g ], [ %.0129, %bb.j ], [ %.0129, %bb.k ], [ %.0129, %bb.y ], [ true, %bb.r ], [ %.0129, %bb.m ], [ %.0129, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0107.0127, i64 4 ; 2 uses
  %.not120 = icmp eq ptr %i.en, %i.ac
  br i1 %.not120, label %._crit_edge, label %bb.f

._crit_edge135:                                   ; preds = %bb.aa, %._crit_edge
  br i1 %.1, label %.critedge, label %._crit_edge135.thread

bb.aa:                                            ; preds = %.lr.ph134, %bb.aa
  %.sroa.0101.0132 = phi ptr [ %.pre136, %.lr.ph134 ], [ %i.et, %bb.aa ] ; 2 uses
  %i.eo = load i32, ptr %.sroa.0101.0132, align 4, !tbaa !8
  %i.ep = call noundef i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 0, ptr %i.es, align 1, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0101.0132, i64 4 ; 2 uses
  %.not121 = icmp eq ptr %i.et, %.pre137
  br i1 %.not121, label %._crit_edge135, label %bb.aa

.critedge:                                        ; preds = %bb.d, %._crit_edge135
  %i.eu = load i8, ptr %i.a, align 1, !tbaa !249, !range !202, !noundef !203
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %.critedge
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 4856 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !258
  %i.ey = add nsw i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !258
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !190
  %.not57 = icmp eq i32 %i.fa, 0
  br i1 %.not57, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fb = call noundef zeroext i1 @_ZN7CaDiCaL8Internal23is_external_forgettableEl(ptr noundef nonnull align 8 dereferenceable(7296) %0, i64 noundef %1) #17
  br i1 %i.fb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7CaDiCaL8Internal33mark_garbage_external_forgettableEl(ptr noundef nonnull align 8 dereferenceable(7296) %0, i64 noundef %1) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad, %.critedge
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !194 ; 2 uses
  %.not58 = icmp eq ptr %i.fd, null
  br i1 %.not58, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !214
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 200
  call void @_ZN7CaDiCaL5Proof31delete_external_original_clauseElbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120) %i.fd, i64 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.fg) #17
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86

._crit_edge135.thread:                            ; preds = %bb.e, %._crit_edge135
  %.041.lcssa175179 = phi i64 [ %.142, %._crit_edge135 ], [ 0, %bb.e ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !176
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !177
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 2 uses
  %i.fo = ashr exact i64 %i.fn, 2
  %i.fp = load ptr, ptr %i.ab, align 8, !tbaa !176
  %i.fq = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = icmp ugt i64 %i.ft, %i.fn
  br i1 %i.fu, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %._crit_edge135.thread
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !178
  %i.fx = add nsw i64 %i.fw, 1                    ; 6 uses
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !178
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !194 ; 3 uses
  %.not54 = icmp eq ptr %i.fz, null
  br i1 %.not54, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !201, !range !202, !noundef !203
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ai, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit76

bb.ai:                                            ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !254 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !255
  %.not.i69 = icmp eq ptr %i.gf, %i.gh
  br i1 %.not.i69, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i64 %1, ptr %i.gf, align 8, !tbaa !182
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gi, ptr %i.ge, align 8, !tbaa !254
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit76

bb.ak:                                            ; preds = %bb.ai
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !205 ; 4 uses
  %i.gk = ptrtoint ptr %i.gf to i64
  %i.gl = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.gm = sub i64 %i.gk, %i.gl                    ; 5 uses
end_hunk_0
