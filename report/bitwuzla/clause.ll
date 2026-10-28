Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/clause?download=true
inline.NumInlined: 431
inline.NumDeleted: 236
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal20assign_original_unitEmi:bb.a
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #18 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i32 %2, ptr %i.ap, align 4, !tbaa !9
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
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !166
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !165
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !190
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !235
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !235
  %i.aw = tail call noundef i32 @llvm.fshl.i32(i32 %i.a, i32 %2, i32 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !191, !range !192, !noundef !193
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !194, !range !192, !noundef !193
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.be = sext i32 %i.aw to i64
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !195
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  store i64 %1, ptr %i.bg, align 8, !tbaa !171
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @_ZN7CaDiCaL8Internal10mark_fixedEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %2)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !236
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.bj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  ret void
}

declare void @_ZN7CaDiCaL8Internal10mark_fixedEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #6

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal23add_new_original_clauseEm(ptr noundef nonnull align 8 dereferenceable(7288) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 993 ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !237, !range !192, !noundef !193
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp ne i32 %i.e, 0
  %not. = xor i1 %i.c, true
  %or.cond = select i1 %not., i1 %.not, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.g = load i32, ptr %i.f, align 4
  %.not59 = icmp eq i32 %i.g, 0
  %or.cond79 = select i1 %or.cond, i1 %.not59, i1 false
  br i1 %or.cond79, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.i = load i32, ptr %i.h, align 4, !tbaa !238  ; 2 uses
  %.not60 = icmp eq i32 %i.i, 0
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.k = tail call noundef i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.l = zext nneg i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !185
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 8, !tbaa !187
  %i.p = add nsw i32 %i.o, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink = phi i32 [ %i.p, %bb.c ], [ 0, %bb.a ]
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.sink)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !202
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1, ptr %i.r, align 8, !tbaa !203
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !239
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !240
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !241, !range !192, !noundef !193
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %.not151159 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not151159, label %._crit_edge168.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre170 = load ptr, ptr %i.z, align 8, !tbaa !16 ; 2 uses
  %.pre171 = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %.not152164 = icmp eq ptr %.pre170, %.pre171
  br i1 %.not152164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.y

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.0162 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.043161 = phi i64 [ 0, %.lr.ph ], [ %.144, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0138.0160 = phi ptr [ %i.aa, %.lr.ph ], [ %i.eh, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.ar = load i32, ptr %.sroa.0138.0160, align 4, !tbaa !9 ; 3 uses
  %i.as = call noundef i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14  ; 2 uses
  %i.ax = icmp slt i32 %i.ar, 0
  %i.ay = sub i8 0, %i.aw
  %spec.select.i = select i1 %i.ax, i8 %i.ay, i8 %i.aw ; 2 uses
  %i.az = icmp sgt i8 %spec.select.i, 0
  br i1 %i.az, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp slt i8 %spec.select.i, 0
  br i1 %i.ba, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = call i8 @llvm.scmp.i8.i32(i32 %i.ar, i32 0)
  store i8 %i.bb, ptr %i.av, align 1, !tbaa !14
  %i.bc = load i32, ptr %.sroa.0138.0160, align 4, !tbaa !9 ; 4 uses
  %i.bd = call i32 @llvm.abs.i32(i32 %i.bc, i1 true) ; 2 uses
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !189 ; 2 uses
  %i.bf = zext nneg i32 %i.bd to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14  ; 2 uses
  %.not.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = sext i8 %i.bh to i32
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !185
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !187
  %.not9.i = icmp eq i32 %i.bl, 0
  %spec.select.i80.a = select i1 %.not9.i, i32 %i.bi, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.h ], [ %spec.select.i80.a, %bb.i ] ; 2 uses
  %4 = icmp slt i32 %i.bc, 0                      ; 2 uses
  %5 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %4, i32 %5, i32 %.0.i ; 2 uses
  %6 = icmp slt i32 %spec.select10.i, 0
  br i1 %6, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.bm = load i8, ptr %i.aj, align 8, !tbaa !191, !range !192, !noundef !193
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.k, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.ak, align 8, !tbaa !166
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bf
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !9  ; 3 uses
  %i.br = sub nsw i32 0, %i.bq
  %spec.select.i81 = select i1 %4, i32 %i.br, i32 %i.bq
  %i.bs = icmp sgt i32 %spec.select.i81, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = call i32 @llvm.abs.i32(i32 %i.bq, i1 true)
  %i.bv = shl nuw i32 %i.bu, 1
  %i.bw = or disjoint i32 %i.bv, %i.bt
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !204
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = zext i32 %i.bw to i64
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !195
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !171
  %.not63 = icmp eq i64 %i.cc, 0
  br i1 %.not63, label %bb.l, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %bb.k
  %i.cd = sub nsw i32 0, %i.bc
  %i.ce = call noundef i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.cd, i32 1)
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load ptr, ptr %i.am, align 8, !tbaa !195
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !171 ; 2 uses
  %i.cj = load ptr, ptr %i.ao, align 8, !tbaa !242 ; 4 uses
  %i.ck = load ptr, ptr %i.ap, align 8, !tbaa !243
  %.not.i82 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i82, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !171
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !242
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.n:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %i.an, align 8, !tbaa !195 ; 4 uses
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.t, %bb.n, %bb.aj, %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #18
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i64 %i.ci, ptr %i.cy, align 8, !tbaa !171
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc83
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc83
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #20
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cx, ptr %i.an, align 8, !tbaa !195
  store ptr %i.da, ptr %i.ao, align 8, !tbaa !242
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.db, ptr %i.ap, align 8, !tbaa !243
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.q:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.not61 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not61, label %bb.r, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.r:                                             ; preds = %bb.q
  %i.dc = load ptr, ptr %i.ah, align 8, !tbaa !165 ; 4 uses
  %i.dd = load ptr, ptr %i.ai, align 8, !tbaa !190
  %.not.i84 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.bc, ptr %i.dc, align 4, !tbaa !9
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store ptr %i.de, ptr %i.ah, align 8, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.t:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.ag, align 8, !tbaa !166 ; 4 uses
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 5 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775804
  br i1 %i.dj, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.dk = ashr exact i64 %i.di, 2                 ; 3 uses
  %.sroa.speculated.i.i.i85 = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i85, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 2305843009213693951)
  %i.do = select i1 %i.dm, i64 2305843009213693951, i64 %i.dn ; 3 uses
  %.not.i.i.i86 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i86)
  %i.dp = shl nuw nsw i64 %i.do, 2
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #18
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  %i.ds = load i32, ptr %.sroa.0138.0160, align 4, !tbaa !9
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !9
  %i.dt = icmp sgt i64 %i.di, 0
  br i1 %i.dt, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.u:                                             ; preds = %.noexc89
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr align 4 %i.df, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.u, %.noexc89
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.not.i17.i.i87 = icmp eq ptr %i.df, null
  br i1 %.not.i17.i.i87, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.df) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dq, ptr %i.ag, align 8, !tbaa !166
  store ptr %i.du, ptr %i.ah, align 8, !tbaa !165
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.dv, ptr %i.ai, align 8, !tbaa !190
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !189
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.s
  %i.dw = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.be, %bb.s ]
  %i.dx = load i32, ptr %.sroa.0138.0160, align 4, !tbaa !9 ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !14
  %.not62 = icmp eq i8 %i.ea, 0
  br i1 %.not62, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.eb = call noundef i32 @llvm.abs.i32(i32 %i.dx, i1 true)
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = load ptr, ptr %i.af, align 8, !tbaa !185
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.ec ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %3, ptr %2, align 8, !tbaa !245
  %i.ef = invoke { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ee, ptr noundef nonnull align 4 dereferenceable(4) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertERKi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertERKi.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.eg = add i64 %.043161, 1
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.m, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertERKi.exit, %bb.q, %bb.k, %bb.g, %bb.x, %bb.j, %bb.f
  %.144 = phi i64 [ %.043161, %bb.f ], [ %i.eg, %bb.x ], [ %.043161, %bb.g ], [ %.043161, %bb.j ], [ %.043161, %bb.k ], [ %.043161, %bb.q ], [ %.043161, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertERKi.exit ], [ %.043161, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.043161, %bb.m ] ; 2 uses
  %.1 = phi i1 [ %.0162, %bb.f ], [ %.0162, %bb.x ], [ true, %bb.g ], [ %.0162, %bb.j ], [ %.0162, %bb.k ], [ true, %bb.q ], [ %.0162, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertERKi.exit ], [ %.0162, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.0162, %bb.m ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0138.0160, i64 4 ; 2 uses
  %.not151 = icmp eq ptr %i.eh, %i.ac
  br i1 %.not151, label %._crit_edge, label %bb.f

._crit_edge168:                                   ; preds = %bb.y, %._crit_edge
  br i1 %.1, label %.critedge, label %._crit_edge168.thread

bb.y:                                             ; preds = %.lr.ph167, %bb.y
  %.sroa.0132.0165 = phi ptr [ %.pre170, %.lr.ph167 ], [ %i.en, %bb.y ] ; 2 uses
  %i.ei = load i32, ptr %.sroa.0132.0165, align 4, !tbaa !9
  %i.ej = call noundef i32 @llvm.abs.i32(i32 %i.ei, i1 true)
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0132.0165, i64 4 ; 2 uses
  %.not152 = icmp eq ptr %i.en, %.pre171
  br i1 %.not152, label %._crit_edge168, label %bb.y

.critedge:                                        ; preds = %bb.d, %._crit_edge168
  %i.eo = load i8, ptr %i.a, align 1, !tbaa !237, !range !192, !noundef !193
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %.critedge
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 4064 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !246
  %i.es = add nsw i64 %i.er, 1
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !246
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3252
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !180
  %.not73 = icmp eq i32 %i.eu, 0
  br i1 %.not73, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal23is_external_forgettableEl(ptr noundef nonnull align 8 dereferenceable(7288) %0, i64 noundef %1)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ev, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN7CaDiCaL8Internal33mark_garbage_external_forgettableEl(ptr noundef nonnull align 8 dereferenceable(7288) %0, i64 noundef %1)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.z, %bb.ab, %bb.ac, %.critedge
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !184 ; 2 uses
  %.not74 = icmp eq ptr %i.ex, null
  br i1 %.not74, label %_ZNSt6vectorImSaImEE9push_backERKm.exit113, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !204
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 200
  invoke void @_ZN7CaDiCaL5Proof31delete_external_original_clauseEmbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %i.ex, i64 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_ZNSt6vectorImSaImEE9push_backERKm.exit113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge168.thread:                            ; preds = %bb.e, %._crit_edge168
  %.043.lcssa211215 = phi i64 [ %.144, %._crit_edge168 ], [ 0, %bb.e ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !165
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !166
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 2 uses
  %i.fi = ashr exact i64 %i.fh, 2
  %i.fj = load ptr, ptr %i.ab, align 8, !tbaa !165
  %i.fk = load ptr, ptr %i.z, align 8, !tbaa !166
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = icmp ugt i64 %i.fn, %i.fh
  br i1 %i.fo, label %bb.af, label %bb.at

bb.af:                                            ; preds = %._crit_edge168.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !167
  %i.fr = add i64 %i.fq, 1                        ; 6 uses
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !167
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !184 ; 3 uses
  %.not65 = icmp eq ptr %i.ft, null
  br i1 %.not65, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !191, !range !192, !noundef !193
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.ah, label %_ZNSt6vectorImSaImEE9push_backERKm.exit100

bb.ah:                                            ; preds = %bb.ag
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !242 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !243
  %.not.i91 = icmp eq ptr %i.fz, %i.gb
  br i1 %.not.i91, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i64 %1, ptr %i.fz, align 8, !tbaa !171
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.gc, ptr %i.fy, align 8, !tbaa !242
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit100

bb.aj:                                            ; preds = %bb.ah
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !195 ; 4 uses
  %i.ge = ptrtoint ptr %i.fz to i64
end_hunk_0
