Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/clause?download=true
inline.NumInlined: 431
inline.NumDeleted: 236
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL8Internal20assign_original_unitEmi:bb.a
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !165
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !164
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !203
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !204
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !204
  %i.aw = tail call noundef i32 @llvm.fshl.i32(i32 %i.a, i32 %2, i32 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !205, !range !206, !noundef !207
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !208, !range !206, !noundef !207
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.be = sext i32 %i.aw to i64
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !209
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  store i64 %1, ptr %i.bg, align 8, !tbaa !177
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @_ZN7CaDiCaL8Internal10mark_fixedEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %2)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !210
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
  %i.b = load i8, ptr %i.a, align 1, !tbaa !211, !range !206, !noundef !207
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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !212  ; 2 uses
  %.not60 = icmp eq i32 %i.i, 0
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.k = tail call noundef i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.l = zext nneg i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 8, !tbaa !198
  %i.p = add nsw i32 %i.o, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink = phi i32 [ %i.p, %bb.c ], [ 0, %bb.a ]
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.sink)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !213
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1, ptr %i.r, align 8, !tbaa !220
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !221
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !222
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !223, !range !206, !noundef !207
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %.not151166 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not151166, label %._crit_edge175.thread, label %.lr.ph

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
  %.pre176 = load ptr, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %.pre177 = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %.not152171 = icmp eq ptr %.pre176, %.pre177
  br i1 %.not152171, label %._crit_edge175, label %.lr.ph174

.lr.ph174:                                        ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.aa

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.0169 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %.043168 = phi i64 [ 0, %.lr.ph ], [ %.144, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0138.0167 = phi ptr [ %i.aa, %.lr.ph ], [ %i.ek, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.ar = load i32, ptr %.sroa.0138.0167, align 4, !tbaa !8 ; 3 uses
  %i.as = call noundef i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13  ; 2 uses
  %i.ax = icmp slt i32 %i.ar, 0
  %i.ay = sub i8 0, %i.aw
  %spec.select.i = select i1 %i.ax, i8 %i.ay, i8 %i.aw ; 2 uses
  %i.az = icmp sgt i8 %spec.select.i, 0
  br i1 %i.az, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.g

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp slt i8 %spec.select.i, 0
  br i1 %i.ba, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = call i8 @llvm.scmp.i8.i32(i32 %i.ar, i32 0)
  store i8 %i.bb, ptr %i.av, align 1, !tbaa !13
  %i.bc = load i32, ptr %.sroa.0138.0167, align 4, !tbaa !8 ; 4 uses
  %i.bd = call i32 @llvm.abs.i32(i32 %i.bc, i1 true) ; 2 uses
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !202 ; 3 uses
  %i.bf = zext nneg i32 %i.bd to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13  ; 2 uses
  %.not.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = sext i8 %i.bh to i32
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !197
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !198
  %.not9.i = icmp eq i32 %i.bl, 0
  %spec.select.i80 = select i1 %.not9.i, i32 %i.bi, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.h ], [ %spec.select.i80, %bb.i ] ; 2 uses
  %i.bm = icmp slt i32 %i.bc, 0                   ; 2 uses
  %i.bn = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %i.bm, i32 %i.bn, i32 %.0.i ; 2 uses
  %i.bo = icmp slt i32 %spec.select10.i, 0
  br i1 %i.bo, label %bb.j, label %bb.r

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.bp = load i8, ptr %i.aj, align 8, !tbaa !205, !range !206, !noundef !207
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !165
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bf
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8  ; 3 uses
  %i.bu = sub nsw i32 0, %i.bt
  %spec.select.i81 = select i1 %i.bm, i32 %i.bu, i32 %i.bt
  %i.bv = icmp sgt i32 %spec.select.i81, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = call i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.by = shl nuw i32 %i.bx, 1
  %i.bz = or disjoint i32 %i.by, %i.bw
  %i.ca = load ptr, ptr %i.al, align 8, !tbaa !224
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  %i.cc = zext i32 %i.bz to i64
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !209
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !177
  %.not63 = icmp eq i64 %i.cf, 0
  br i1 %.not63, label %bb.l, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %bb.k
  %i.cg = sub nsw i32 0, %i.bc
  %i.ch = call noundef i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.cg, i32 1)
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.am, align 8, !tbaa !209
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !177 ; 2 uses
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !225 ; 4 uses
  %i.cn = load ptr, ptr %i.ap, align 8, !tbaa !226
  %.not.i82 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i82, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !177
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.co, ptr %i.ao, align 8, !tbaa !225
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.n:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !209 ; 4 uses
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 5 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc unwind label %.loopexit.split-lp154

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #18
          to label %.noexc83 unwind label %.loopexit153 ; 4 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cs ; 2 uses
  store i64 %i.cl, ptr %i.db, align 8, !tbaa !177
  %i.dc = icmp sgt i64 %i.cs, 0
  br i1 %i.dc, label %bb.p, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %.noexc83
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %i.cp, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %.noexc83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #20
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.da, ptr %i.an, align 8, !tbaa !209
  store ptr %i.dd, ptr %i.ao, align 8, !tbaa !225
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.de, ptr %i.ap, align 8, !tbaa !226
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit153:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp154:                            ; preds = %bb.o
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.r:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.not61 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not61, label %bb.s, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.ah, align 8, !tbaa !164 ; 4 uses
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !203
  %.not.i84 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i84, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.bc, ptr %i.df, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %i.dh, ptr %i.ah, align 8, !tbaa !164
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.u:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %i.ag, align 8, !tbaa !165 ; 4 uses
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 5 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775804
  br i1 %i.dm, label %bb.v, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.dn = ashr exact i64 %i.dl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i85 = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i85, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 2305843009213693951)
  %i.dr = select i1 %i.dp, i64 2305843009213693951, i64 %i.dq ; 3 uses
  %.not.i.i.i86 = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i86)
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #18
          to label %.noexc89 unwind label %.loopexit ; 4 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.dl ; 2 uses
  %i.dv = load i32, ptr %.sroa.0138.0167, align 4, !tbaa !8
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !8
  %i.dw = icmp sgt i64 %i.dl, 0
  br i1 %i.dw, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc89
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr align 4 %i.di, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc89
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %.not.i17.i.i87 = icmp eq ptr %i.di, null
  br i1 %.not.i17.i.i87, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.di) #20
  %.pre.pre = load ptr, ptr %i.ae, align 8, !tbaa !202
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.x ], [ %i.be, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ]
  store ptr %i.dt, ptr %i.ag, align 8, !tbaa !165
  store ptr %i.dx, ptr %i.ah, align 8, !tbaa !164
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.dy, ptr %i.ai, align 8, !tbaa !203
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.t
  %i.dz = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.be, %bb.t ]
  %i.ea = load i32, ptr %.sroa.0138.0167, align 4, !tbaa !8 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.dz, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13
  %.not62 = icmp eq i8 %i.ed, 0
  br i1 %.not62, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ee = call noundef i32 @llvm.abs.i32(i32 %i.ea, i1 true)
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.af, align 8, !tbaa !197
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ef ; 2 uses
end_hunk_0
