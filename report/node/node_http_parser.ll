inline.NumInlined: 2486
inline.NumDeleted: 972
begin_hunk_0_@_ZN4node11http_parser15ConnectionsList3NewERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  store i64 0, ptr %i.aj, align 8
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(144) %i.u) #25
  ret void
}

declare ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11http_parser15ConnectionsList3AllERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = icmp eq i16 %i.m, 1040
  %i.o = add i16 %i.m, -1057
  %i.p = icmp ult i16 %i.o, 1002
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.r = add i64 %i.g, 39
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i32 noundef 1) #25
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.u, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %i.w = icmp eq ptr %.0.i.i, null
  br i1 %i.w, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = icmp ugt i64 %i.y, 1152921504606846975
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.f
  %i.aa = shl nuw nsw i64 %i.y, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  br label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit:   ; preds = %bb.f, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.sroa.17.1 = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.f ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.f ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ]
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ]
  %.sroa.020.0.lcssa = phi ptr [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.020.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ] ; 4 uses
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.ak = ptrtoint ptr %.sroa.020.0.lcssa to i64  ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.c, ptr noundef %.sroa.020.0.lcssa, i64 noundef %i.am) #25 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, !prof !5

bb.g:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %i.ar, 648
  %i.at = inttoptr i64 %i.as to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit: ; preds = %._crit_edge, %bb.g
  %storemerge.in = phi ptr [ %i.at, %bb.g ], [ %i.an, %._crit_edge ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.ai, align 8
  %.not.i.i.i.i = icmp eq ptr %.sroa.020.0.lcssa, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit
  %i.au = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.av = sub i64 %i.au, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.0.lcssa, i64 noundef %i.av) #28
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit
  %.sroa.020.044 = phi ptr [ %.sroa.020.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 8 uses
  %.sroa.10.043 = phi ptr [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 6 uses
  %.sroa.17.042 = phi ptr [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.17.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  %.sroa.017.041 = phi ptr [ %i.cz, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %i.ae, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.017.041, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 200
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bf = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZNK4node10BaseObject6objectEv.exit, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i

_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i: ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = and i8 %i.bi, 3
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %bb.i, label %_ZNK4node10BaseObject6objectEv.exit

bb.i:                                             ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i
  %i.bl = load i64, ptr %i.bf, align 8
  %i.bm = ptrtoint ptr %i.bd to i64
  %i.bn = add i64 %i.bm, 560
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.j, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bt = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.bd) #25
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bt, %bb.j ], [ %i.bp, %bb.i ] ; 3 uses
  %i.bu = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bv = add i64 %i.bu, 8
  %i.bw = inttoptr i64 %i.bv to ptr
  store ptr %i.bw, ptr %i.bo, align 8
  store i64 %i.bl, ptr %.0.i.i.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit

_ZNK4node10BaseObject6objectEv.exit:              ; preds = %.lr.ph, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i ], [ %i.bf, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i ], [ null, %.lr.ph ]
  %i.bx = ptrtoint ptr %.sroa.0.0.i.i to i64      ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.10.043, %.sroa.17.042
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit
  store i64 %i.bx, ptr %.sroa.10.043, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

bb.l:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit
  %i.by = ptrtoint ptr %.sroa.10.043 to i64       ; 2 uses
  %i.bz = ptrtoint ptr %.sroa.020.044 to i64      ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.m, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.l
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i.i.i12 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i12)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #27 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  store i64 %i.bx, ptr %i.cj, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.020.044, %.sroa.10.043
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ck = ptrtoaddr ptr %i.ci to i64
  %1 = sub i64 %i.by, %i.bz
  %2 = add i64 %1, -8                             ; 2 uses
  %i.cl = lshr i64 %2, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  %i.cn = sub i64 %i.ck, %i.bz
  %diff.check = icmp ult i64 %i.cn, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ci, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %.sroa.020.044, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cr ; 2 uses
  %next.gep54 = getelementptr i8, ptr %.sroa.020.044, i64 %i.cr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.cs = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !alias.scope !33, !noalias !30
  %wide.load55 = load <2 x i64>, ptr %i.cs, align 8, !alias.scope !33, !noalias !30
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !30, !noalias !33
  store <2 x i64> %wide.load55, ptr %i.ct, align 8, !alias.scope !30, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.preheader57:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.020.044, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !33, !noalias !30
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !30, !noalias !33
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %.sroa.10.043
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !38

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.020.044, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.044, i64 noundef %i.ca) #28
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.17.2 = phi ptr [ %i.cy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.042, %bb.k ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.10.043, %bb.k ]
  %.sroa.020.2 = phi ptr [ %i.ci, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.020.044, %bb.k ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.cz = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.017.041) #30 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.af
  br i1 %i.da, label %._crit_edge, label %.lr.ph

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %bb.h, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

declare ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11http_parser15ConnectionsList4IdleERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = icmp eq i16 %i.m, 1040
  %i.o = add i16 %i.m, -1057
  %i.p = icmp ult i16 %i.o, 1002
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.r = add i64 %i.g, 39
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i32 noundef 1) #25
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.u, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %i.w = icmp eq ptr %.0.i.i, null
  br i1 %i.w, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = icmp ugt i64 %i.y, 1152921504606846975
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.f
  %i.aa = shl nuw nsw i64 %i.y, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  br label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit:   ; preds = %bb.f, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.sroa.17.2 = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.f ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.f ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.17.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ]
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ]
  %.sroa.021.0.lcssa = phi ptr [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.021.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ] ; 4 uses
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.ak = ptrtoint ptr %.sroa.021.0.lcssa to i64  ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.c, ptr noundef %.sroa.021.0.lcssa, i64 noundef %i.am) #25 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, !prof !5

bb.g:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %i.ar, 648
  %i.at = inttoptr i64 %i.as to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit: ; preds = %._crit_edge, %bb.g
  %storemerge.in = phi ptr [ %i.at, %bb.g ], [ %i.an, %._crit_edge ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.ai, align 8
  %.not.i.i.i.i = icmp eq ptr %.sroa.021.0.lcssa, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit
  %i.au = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.av = sub i64 %i.au, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.021.0.lcssa, i64 noundef %i.av) #28
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit
  %.sroa.021.045 = phi ptr [ %.sroa.021.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 9 uses
  %.sroa.10.044 = phi ptr [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 7 uses
  %.sroa.17.043 = phi ptr [ %.sroa.17.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 3 uses
  %.sroa.018.042 = phi ptr [ %i.de, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %i.ae, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.018.042, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 10056
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.i, label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

bb.i:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 176
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZNK4node10BaseObject6objectEv.exit, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i

_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i: ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 11
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = and i8 %i.bl, 3
  %i.bn = icmp eq i8 %i.bm, 2
  br i1 %i.bn, label %bb.j, label %_ZNK4node10BaseObject6objectEv.exit

bb.j:                                             ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = add i64 %i.bp, 560
  %i.br = inttoptr i64 %i.bq to ptr               ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.k, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.bw = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.bg) #25
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.bw, %bb.k ], [ %i.bs, %bb.j ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.br, align 8
  store i64 %i.bo, ptr %.0.i.i.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit

_ZNK4node10BaseObject6objectEv.exit:              ; preds = %bb.i, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i ], [ %i.bi, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i ], [ null, %bb.i ]
  %i.ca = ptrtoint ptr %.sroa.0.0.i.i to i64      ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.10.044, %.sroa.17.043
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit
  store i64 %i.ca, ptr %.sroa.10.044, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.10.044, i64 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

bb.m:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit
  %i.cc = ptrtoint ptr %.sroa.10.044 to i64       ; 2 uses
  %i.cd = ptrtoint ptr %.sroa.021.045 to i64      ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.n, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.i.i13 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i13)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #27 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  store i64 %i.ca, ptr %i.cn, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.021.045, %.sroa.10.044
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %1 = sub i64 %i.cc, %i.cd
  %2 = add i64 %1, -8                             ; 2 uses
  %i.cp = lshr i64 %2, 3
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  %i.cr = sub i64 %i.co, %i.cd
  %diff.check = icmp ult i64 %i.cr, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cq, 4611686018427387900     ; 3 uses
  %i.cs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cm, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.021.045, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.cv ; 2 uses
  %next.gep55 = getelementptr i8, ptr %.sroa.021.045, i64 %i.cv ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cw = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !alias.scope !42, !noalias !39
  %wide.load56 = load <2 x i64>, ptr %i.cw, align 8, !alias.scope !42, !noalias !39
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !39, !noalias !42
  store <2 x i64> %wide.load56, ptr %i.cx, align 8, !alias.scope !39, !noalias !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader58

.lr.ph.i.i.i.i.i.i.i.preheader58:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.021.045, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader58, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader58 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader58 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cz = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !42, !noalias !39
  store i64 %i.cz, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !39, !noalias !42
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.da, %.sroa.10.044
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !45

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cm, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ct, %middle.block ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.021.045, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.021.045, i64 noundef %i.ce) #28
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.l, %.lr.ph
  %.sroa.17.1 = phi ptr [ %.sroa.17.043, %.lr.ph ], [ %i.dd, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.043, %bb.l ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.044, %.lr.ph ], [ %i.dc, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.cb, %bb.l ] ; 2 uses
  %.sroa.021.1 = phi ptr [ %.sroa.021.045, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.021.045, %bb.l ] ; 2 uses
  %i.de = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.018.042) #30 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.af
  br i1 %i.df, label %._crit_edge, label %.lr.ph

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %bb.h, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11http_parser15ConnectionsList6ActiveERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = icmp eq i16 %i.m, 1040
  %i.o = add i16 %i.m, -1057
  %i.p = icmp ult i16 %i.o, 1002
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.r = add i64 %i.g, 39
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i32 noundef 1) #25
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.u, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %i.w = icmp eq ptr %.0.i.i, null
  br i1 %i.w, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = icmp ugt i64 %i.y, 1152921504606846975
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.f
  %i.aa = shl nuw nsw i64 %i.y, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  br label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit:   ; preds = %bb.f, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.sroa.17.1 = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.f ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.f ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 104 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ]
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ]
  %.sroa.020.0.lcssa = phi ptr [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.020.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ] ; 4 uses
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.ak = ptrtoint ptr %.sroa.020.0.lcssa to i64  ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.c, ptr noundef %.sroa.020.0.lcssa, i64 noundef %i.am) #25 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, !prof !5

bb.g:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %i.ar, 648
  %i.at = inttoptr i64 %i.as to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit: ; preds = %._crit_edge, %bb.g
  %storemerge.in = phi ptr [ %i.at, %bb.g ], [ %i.an, %._crit_edge ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.ai, align 8
  %.not.i.i.i.i = icmp eq ptr %.sroa.020.0.lcssa, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit
  %i.au = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.av = sub i64 %i.au, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.0.lcssa, i64 noundef %i.av) #28
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit
  %.sroa.020.044 = phi ptr [ %.sroa.020.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 8 uses
  %.sroa.10.043 = phi ptr [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.10.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 6 uses
  %.sroa.17.042 = phi ptr [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.17.1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  %.sroa.017.041 = phi ptr [ %i.cz, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %i.ae, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.017.041, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 200
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bf = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZNK4node10BaseObject6objectEv.exit, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i

_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i: ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = and i8 %i.bi, 3
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %bb.i, label %_ZNK4node10BaseObject6objectEv.exit

bb.i:                                             ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i
  %i.bl = load i64, ptr %i.bf, align 8
  %i.bm = ptrtoint ptr %i.bd to i64
  %i.bn = add i64 %i.bm, 560
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.j, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bt = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.bd) #25
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.bt, %bb.j ], [ %i.bp, %bb.i ] ; 3 uses
  %i.bu = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bv = add i64 %i.bu, 8
  %i.bw = inttoptr i64 %i.bv to ptr
  store ptr %i.bw, ptr %i.bo, align 8
  store i64 %i.bl, ptr %.0.i.i.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit

_ZNK4node10BaseObject6objectEv.exit:              ; preds = %.lr.ph, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i ], [ %i.bf, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i ], [ null, %.lr.ph ]
  %i.bx = ptrtoint ptr %.sroa.0.0.i.i to i64      ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.10.043, %.sroa.17.042
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit
  store i64 %i.bx, ptr %.sroa.10.043, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

bb.l:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit
  %i.by = ptrtoint ptr %.sroa.10.043 to i64       ; 2 uses
  %i.bz = ptrtoint ptr %.sroa.020.044 to i64      ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.m, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.l
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i.i.i12 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i12)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #27 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  store i64 %i.bx, ptr %i.cj, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.020.044, %.sroa.10.043
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ck = ptrtoaddr ptr %i.ci to i64
  %1 = sub i64 %i.by, %i.bz
  %2 = add i64 %1, -8                             ; 2 uses
  %i.cl = lshr i64 %2, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  %i.cn = sub i64 %i.ck, %i.bz
  %diff.check = icmp ult i64 %i.cn, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ci, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %.sroa.020.044, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cr ; 2 uses
  %next.gep54 = getelementptr i8, ptr %.sroa.020.044, i64 %i.cr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.cs = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !alias.scope !49, !noalias !46
  %wide.load55 = load <2 x i64>, ptr %i.cs, align 8, !alias.scope !49, !noalias !46
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !46, !noalias !49
  store <2 x i64> %wide.load55, ptr %i.ct, align 8, !alias.scope !46, !noalias !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.preheader57:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.020.044, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !49, !noalias !46
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !46, !noalias !49
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %.sroa.10.043
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !52

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.020.044, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.044, i64 noundef %i.ca) #28
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.17.2 = phi ptr [ %i.cy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.042, %bb.k ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.10.043, %bb.k ]
  %.sroa.020.2 = phi ptr [ %i.ci, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.020.044, %bb.k ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.cz = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.017.041) #30 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.af
  br i1 %i.da, label %._crit_edge, label %.lr.ph

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %bb.h, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11http_parser15ConnectionsList7ExpiredERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %i.o = icmp eq i16 %i.n, 1040
  %i.p = add i16 %i.n, -1057
  %i.q = icmp ult i16 %i.p, 1002
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.s = add i64 %i.h, 39
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.w = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i32 noundef 1) #25
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.v, %bb.b ], [ %i.w, %bb.c ] ; 5 uses
  %i.x = icmp eq ptr %.0.i.i, null
  br i1 %i.x, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit50, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i32
  %.not.i55 = icmp sgt i32 %i.aa, 0
  br i1 %.not.i55, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, 648
  %i.ag = inttoptr i64 %i.af to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit56

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.e, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit56

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit56: ; preds = %bb.e, %bb.f
  %.sroa.0107.0 = phi ptr [ %i.ah, %bb.f ], [ %i.ag, %bb.e ]
  %i.ai = tail call noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0107.0) #25
  br i1 %i.ai, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit56
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11http_parser15ConnectionsList7ExpiredERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args) #25
  tail call void @abort() #26
  unreachable

bb.h:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit56
  %i.aj = load i64, ptr %i.y, align 8
  %i.ak = trunc i64 %i.aj to i32
  %.not.i53 = icmp sgt i32 %i.ak, 1
  br i1 %.not.i53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add i64 %i.ao, 648
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit54

bb.j:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.e, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit54

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit54: ; preds = %bb.i, %bb.j
  %.sroa.0106.0 = phi ptr [ %i.as, %bb.j ], [ %i.aq, %bb.i ]
  %i.at = tail call noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0106.0) #25
  br i1 %i.at, label %bb.l, label %bb.k, !prof !29

bb.k:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit54
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11http_parser15ConnectionsList7ExpiredERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args_0) #25
  tail call void @abort() #26
  unreachable

bb.l:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit54
  %i.au = load i64, ptr %i.y, align 8
  %i.av = trunc i64 %i.au to i32
  %.not.i51 = icmp sgt i32 %i.av, 0
  br i1 %.not.i51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 648
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit52

bb.n:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.e, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit52

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit52: ; preds = %bb.m, %bb.n
  %.sroa.0105.0 = phi ptr [ %i.bc, %bb.n ], [ %i.bb, %bb.m ]
  %i.bd = tail call noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0105.0) #25 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4node11http_parser15ConnectionsList7ExpiredERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  %i.bz = add i64 %i.by, 648
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i64, ptr %i.ca, align 8
  store i64 %i.cb, ptr %i.bt, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit50

bb.s:                                             ; preds = %bb.q
  %i.cc = load i64, ptr %i.bu, align 8
  store i64 %i.cc, ptr %i.bt, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit50

bb.t:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.cd = zext i32 %i.bq to i64
  %i.ce = mul nuw nsw i64 %i.cd, 1000000          ; 2 uses
  %.not42 = icmp ne i32 %i.bq, 0
  %i.cf = icmp ugt i32 %i.bd, %i.bq
  %or.cond46 = and i1 %.not42, %i.cf              ; 2 uses
  %spec.select = select i1 %or.cond46, i64 %i.bf, i64 %i.ce ; 3 uses
  %spec.select146 = select i1 %or.cond46, i64 %i.ce, i64 %i.bf ; 3 uses
  %i.cg = tail call i64 @uv_hrtime() #25          ; 4 uses
  %.not43 = icmp ne i64 %spec.select146, 0
  %i.ch = icmp ugt i64 %i.cg, %spec.select146
  %or.cond47 = select i1 %.not43, i1 %i.ch, i1 false
  %i.ci = sub nuw i64 %i.cg, %spec.select146
  %i.cj = select i1 %or.cond47, i64 %i.ci, i64 0  ; 2 uses
  %.not44 = icmp ne i64 %spec.select, 0
  %i.ck = icmp ugt i64 %i.cg, %spec.select
  %or.cond48 = select i1 %.not44, i1 %i.ck, i1 false
  %i.cl = sub nuw i64 %i.cg, %spec.select
  %i.cm = select i1 %or.cond48, i64 %i.cl, i64 0  ; 2 uses
  %i.cn = icmp eq i64 %i.cj, 0                    ; 2 uses
  %i.co = icmp eq i64 %i.cm, 0                    ; 2 uses
  %or.cond3 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %0, align 8               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.cr = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEi(ptr noundef %i.d, i32 noundef 0) #25 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.v, label %bb.w, !prof !5

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = add i64 %i.cv, 648
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load i64, ptr %i.cx, align 8
  store i64 %i.cy, ptr %i.cq, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit50

bb.w:                                             ; preds = %bb.u
  %i.cz = load i64, ptr %i.cr, align 8
  store i64 %i.cz, ptr %i.cq, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit50

bb.x:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 120
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 104 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136
  %i.df = load i64, ptr %i.de, align 8            ; 4 uses
  %i.dg = icmp ugt i64 %i.df, 1152921504606846975
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.161) #26
  unreachable

bb.z:                                             ; preds = %bb.x
  %.not = icmp eq i64 %i.df, 0
  br i1 %.not, label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.z
  %i.dh = shl nuw nsw i64 %i.df, 3
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #27 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.df
  br label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit:   ; preds = %bb.z, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.sroa.064.2 = phi ptr [ %i.di, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.z ] ; 4 uses
  %.sroa.17.2 = phi ptr [ %i.dj, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ null, %bb.z ] ; 2 uses
  %i.dk = icmp eq ptr %i.dc, %i.dd
  br i1 %i.dk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, %bb.ak
  %.sroa.17.0153 = phi ptr [ %.sroa.17.1, %bb.ak ], [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 7 uses
  %.sroa.10.0152 = phi ptr [ %.sroa.10.1, %bb.ak ], [ %.sroa.064.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 5 uses
  %.sroa.064.0151 = phi ptr [ %.sroa.064.1, %bb.ak ], [ %.sroa.064.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 10 uses
  %.sroa.075.0150 = phi ptr [ %i.dn, %bb.ak ], [ %i.dc, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.075.0150, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8            ; 6 uses
  store ptr %i.dm, ptr %i.a, align 8
  %i.dn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.075.0150) #30 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 10024
  %i.dp = load i8, ptr %i.do, align 8, !range !26, !noundef !53
  %i.dq = trunc nuw i8 %i.dp to i1
  %or.cond5.not = or i1 %i.cn, %i.dq
  br i1 %or.cond5.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 10056
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = icmp ult i64 %i.ds, %i.cj
  br i1 %i.dt, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph
  br i1 %i.co, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 10056
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = icmp ult i64 %i.dv, %i.cm
  br i1 %i.dw, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8            ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZNK4node10BaseObject6objectEv.exit, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i

_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i: ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 11
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = and i8 %i.eh, 3
  %i.ej = icmp eq i8 %i.ei, 2
  br i1 %i.ej, label %bb.ae, label %_ZNK4node10BaseObject6objectEv.exit

bb.ae:                                            ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i
  %i.ek = load i64, ptr %i.ee, align 8
  %i.el = ptrtoint ptr %i.ec to i64
  %i.em = add i64 %i.el, 560
  %i.en = inttoptr i64 %i.em to ptr               ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = icmp eq ptr %i.eo, %i.eq
  br i1 %i.er, label %bb.af, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i, !prof !5

bb.af:                                            ; preds = %bb.ae
  %i.es = call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.ec) #25
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi ptr [ %i.es, %bb.af ], [ %i.eo, %bb.ae ] ; 3 uses
  %i.et = ptrtoint ptr %.0.i.i.i.i to i64
  %i.eu = add i64 %i.et, 8
  %i.ev = inttoptr i64 %i.eu to ptr
  store ptr %i.ev, ptr %i.en, align 8
  store i64 %i.ek, ptr %.0.i.i.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit

_ZNK4node10BaseObject6objectEv.exit:              ; preds = %bb.ad, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i ], [ %i.ee, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i ], [ null, %bb.ad ]
  %i.ew = ptrtoint ptr %.sroa.0.0.i.i to i64      ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.10.0152, %.sroa.17.0153
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4node10BaseObject6objectEv.exit
  store i64 %i.ew, ptr %.sroa.10.0152, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

bb.ah:                                            ; preds = %_ZNK4node10BaseObject6objectEv.exit
  %i.ex = ptrtoint ptr %.sroa.17.0153 to i64      ; 2 uses
  %i.ey = ptrtoint ptr %.sroa.064.0151 to i64     ; 3 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 4 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775800
  br i1 %i.fa, label %bb.ai, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ah
  %i.fb = ashr exact i64 %i.ez, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.fb ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 1152921504606846975)
  %i.ff = select i1 %i.fd, i64 1152921504606846975, i64 %i.fe ; 3 uses
  %.not.i.i.i.i.i60 = icmp ne i64 %i.ff, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i60)
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #27 ; 8 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez
  store i64 %i.ew, ptr %i.fi, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.064.0151, %.sroa.17.0153
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fj = ptrtoaddr ptr %i.fh to i64
  %1 = sub i64 %i.ex, %i.ey
  %2 = add i64 %1, -8                             ; 2 uses
  %i.fk = lshr i64 %2, 3
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  %i.fm = sub i64 %i.fj, %i.ey
  %diff.check = icmp ult i64 %i.fm, 32
  %or.cond170 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond170, label %.lr.ph.i.i.i.i.i.i.i.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fl, 4611686018427387900     ; 3 uses
  %i.fn = shl i64 %n.vec, 3                       ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fh, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %.sroa.064.0151, i64 %i.fn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fq ; 2 uses
  %next.gep167 = getelementptr i8, ptr %.sroa.064.0151, i64 %i.fq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.fr = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep167, align 8, !alias.scope !57, !noalias !54
  %wide.load168 = load <2 x i64>, ptr %i.fr, align 8, !alias.scope !57, !noalias !54
  %i.fs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !54, !noalias !57
  store <2 x i64> %wide.load168, ptr %i.fs, align 8, !alias.scope !54, !noalias !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader171

.lr.ph.i.i.i.i.i.i.i.preheader171:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fo, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.064.0151, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader171, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader171 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader171 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.fu = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !57, !noalias !54
  store i64 %i.fu, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !54, !noalias !57
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fv, %.sroa.17.0153
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !60

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fh, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.fo, %middle.block ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.064.0151, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0151, i64 noundef %i.ez) #28
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.aj, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ff
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit: ; preds = %bb.ag, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.064.3 = phi ptr [ %i.fh, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.064.0151, %bb.ag ]
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.10.0152, %bb.ag ]
  %.sroa.17.3 = phi ptr [ %i.fx, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.0153, %bb.ag ]
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8
  %i.fy = call noundef i64 @_ZNSt8_Rb_treeIPN4node11http_parser6ParserES3_St9_IdentityIS3_ENS1_16ParserComparatorESaIS3_EE5eraseERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit, %bb.ac, %bb.ab
  %.sroa.064.1 = phi ptr [ %.sroa.064.0151, %bb.ab ], [ %.sroa.064.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.064.0151, %bb.ac ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0152, %bb.ab ], [ %.sroa.10.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.10.0152, %bb.ac ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.0153, %bb.ab ], [ %.sroa.17.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ], [ %.sroa.17.0153, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.fz = icmp eq ptr %i.dn, %i.dd
  br i1 %i.fz, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.ak, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  %.sroa.064.0.lcssa = phi ptr [ %.sroa.064.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.064.1, %bb.ak ] ; 4 uses
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.064.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.10.1, %bb.ak ]
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ %.sroa.17.1, %bb.ak ]
  %i.ga = load ptr, ptr %0, align 8               ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.gd = ptrtoint ptr %.sroa.064.0.lcssa to i64  ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 3
  %i.gg = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.d, ptr noundef %.sroa.064.0.lcssa, i64 noundef %i.gf) #25 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.al, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, !prof !5

bb.al:                                            ; preds = %._crit_edge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = add i64 %i.gk, 648
  %i.gm = inttoptr i64 %i.gl to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit: ; preds = %._crit_edge, %bb.al
  %storemerge.in = phi ptr [ %i.gm, %bb.al ], [ %i.gg, %._crit_edge ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.gb, align 8
  %.not.i.i.i.i = icmp eq ptr %.sroa.064.0.lcssa, null
  br i1 %.not.i.i.i.i, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit50, label %bb.am

bb.am:                                            ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit
  %i.gn = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.go = sub i64 %i.gn, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0.lcssa, i64 noundef %i.go) #28
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit50

_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit50: ; preds = %bb.r, %bb.s, %bb.v, %bb.w, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, %bb.am, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

declare noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare noundef i32 @_ZNK2v86Uint325ValueEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

declare ptr @_ZN2v85Array3NewEPNS_7IsolateEi(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i64 @uv_hrtime() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4node11http_parser6Parser5ProxyIMS1_FivEXadL_ZNS1_16on_message_beginEvEEE3RawEP18llhttp__internal_s(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -104
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10002
  %i.e = load i8, ptr %i.d, align 2, !range !26, !noundef !53
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4node11http_parser6Parser10MaybePauseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN4node11http_parser6Parser16on_message_beginEv(ptr noundef nonnull align 8 dereferenceable(10080) %i.c) ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4node11http_parser6Parser10MaybePauseEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10025 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !26, !noundef !53
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN4node11http_parser6Parser10MaybePauseEv.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  tail call void @llhttp_set_error_reason(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.162) #25
  br label %_ZN4node11http_parser6Parser10MaybePauseEv.exit

_ZN4node11http_parser6Parser10MaybePauseEv.exit:  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ], [ 21, %bb.d ], [ 0, %bb.c ]
  ret i32 %.06
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4node11http_parser6Parser5ProxyIMS1_FiPKcmEXadL_ZNS1_6on_urlES4_mEEE3RawEP18llhttp__internal_sS4_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -104
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10002
  %i.e = load i8, ptr %i.d, align 2, !range !26, !noundef !53
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4node11http_parser6Parser10MaybePauseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN4node11http_parser6Parser6on_urlEPKcm(ptr noundef nonnull align 8 dereferenceable(10080) %i.c, ptr noundef %1, i64 noundef %2) ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4node11http_parser6Parser10MaybePauseEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10025 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !26, !noundef !53
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN4node11http_parser6Parser10MaybePauseEv.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  tail call void @llhttp_set_error_reason(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.162) #25
  br label %_ZN4node11http_parser6Parser10MaybePauseEv.exit

_ZN4node11http_parser6Parser10MaybePauseEv.exit:  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ], [ 21, %bb.d ], [ 0, %bb.c ]
  ret i32 %.08
}

end_hunk_1
begin_hunk_2_@_ZN4node11http_parser26CreatePerContextPropertiesEN2v85LocalINS1_6ObjectEEENS2_INS1_5ValueEEENS2_INS1_7ContextEEEPv:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i305: ; preds = %bb.n
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i306 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i.i306, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i.i.i307 = icmp ne i64 %i.cw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i307)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #27 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  store i64 %i.cm, ptr %i.cz, align 8
  %.not10.i.i.i.i.i.i.i308 = icmp eq ptr %.sroa.01677.8, %.sroa.217.8
  br i1 %.not10.i.i.i.i.i.i.i308, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316, label %.lr.ph.i.i.i.i.i.i.i309.preheader

.lr.ph.i.i.i.i.i.i.i309.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i305
  %i.da = ptrtoaddr ptr %i.cy to i64
  %i.db = sub i64 %.0.lcssa.i.i.i.i.i.i.i299.pn2337, %i.cp ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check2339 = icmp ult i64 %i.db, 56
  %i.de = sub i64 %i.da, %i.cp
  %diff.check2336 = icmp ult i64 %i.de, 32
  %or.cond3581 = or i1 %min.iters.check2339, %diff.check2336
  br i1 %or.cond3581, label %.lr.ph.i.i.i.i.i.i.i309.preheader3775, label %vector.ph2340

vector.ph2340:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i309.preheader
  %n.vec2342 = and i64 %i.dd, 4611686018427387900 ; 3 uses
  %i.df = shl i64 %n.vec2342, 3                   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cy, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %.sroa.01677.8, i64 %i.df
  br label %vector.body2343

vector.body2343:                                  ; preds = %vector.body2343, %vector.ph2340
  %index2344 = phi i64 [ 0, %vector.ph2340 ], [ %index.next2349, %vector.body2343 ] ; 2 uses
  %i.di = shl i64 %index2344, 3                   ; 2 uses
  %next.gep2345 = getelementptr i8, ptr %i.cy, i64 %i.di ; 2 uses
  %next.gep2346 = getelementptr i8, ptr %.sroa.01677.8, i64 %i.di ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.dj = getelementptr i8, ptr %next.gep2346, i64 16
  %wide.load2347 = load <2 x i64>, ptr %next.gep2346, align 8, !alias.scope !126, !noalias !123
  %wide.load2348 = load <2 x i64>, ptr %i.dj, align 8, !alias.scope !126, !noalias !123
  %i.dk = getelementptr i8, ptr %next.gep2345, i64 16
  store <2 x i64> %wide.load2347, ptr %next.gep2345, align 8, !alias.scope !123, !noalias !126
  store <2 x i64> %wide.load2348, ptr %i.dk, align 8, !alias.scope !123, !noalias !126
  %index.next2349 = add nuw i64 %index2344, 4     ; 2 uses
  %i.dl = icmp eq i64 %index.next2349, %n.vec2342
  br i1 %i.dl, label %middle.block2350, label %vector.body2343, !llvm.loop !128

middle.block2350:                                 ; preds = %vector.body2343
  %cmp.n2351 = icmp eq i64 %i.dd, %n.vec2342
  br i1 %cmp.n2351, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316, label %.lr.ph.i.i.i.i.i.i.i309.preheader3775

.lr.ph.i.i.i.i.i.i.i309.preheader3775:            ; preds = %.lr.ph.i.i.i.i.i.i.i309.preheader, %middle.block2350
  %.012.i.i.i.i.i.i.i310.ph = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i309.preheader ], [ %i.dg, %middle.block2350 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i311.ph = phi ptr [ %.sroa.01677.8, %.lr.ph.i.i.i.i.i.i.i309.preheader ], [ %i.dh, %middle.block2350 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i311.ph3780 = ptrtoint ptr %.0911.i.i.i.i.i.i.i311.ph to i64
  %i.dm = sub i64 %.0.lcssa.i.i.i.i.i.i.i299.pn2337, %.0911.i.i.i.i.i.i.i311.ph3780 ; 2 uses
  %i.dn = lshr i64 %i.dm, 3
  %i.do = add nuw nsw i64 %i.dn, 1
  %xtraiter = and i64 %i.do, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i309.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i309.prol

.lr.ph.i.i.i.i.i.i.i309.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i309.preheader3775, %.lr.ph.i.i.i.i.i.i.i309.prol
  %.012.i.i.i.i.i.i.i310.prol = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i309.prol ], [ %.012.i.i.i.i.i.i.i310.ph, %.lr.ph.i.i.i.i.i.i.i309.preheader3775 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i311.prol = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i309.prol ], [ %.0911.i.i.i.i.i.i.i311.ph, %.lr.ph.i.i.i.i.i.i.i309.preheader3775 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i309.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i309.preheader3775 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.dp = load i64, ptr %.0911.i.i.i.i.i.i.i311.prol, align 8, !alias.scope !126, !noalias !123
  store i64 %i.dp, ptr %.012.i.i.i.i.i.i.i310.prol, align 8, !alias.scope !123, !noalias !126
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311.prol, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i309.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i309.prol, !llvm.loop !129

.lr.ph.i.i.i.i.i.i.i309.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i309.prol, %.lr.ph.i.i.i.i.i.i.i309.preheader3775
  %.lcssa3776.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i309.preheader3775 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i309.prol ]
  %.012.i.i.i.i.i.i.i310.unr = phi ptr [ %.012.i.i.i.i.i.i.i310.ph, %.lr.ph.i.i.i.i.i.i.i309.preheader3775 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i309.prol ]
  %.0911.i.i.i.i.i.i.i311.unr = phi ptr [ %.0911.i.i.i.i.i.i.i311.ph, %.lr.ph.i.i.i.i.i.i.i309.preheader3775 ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i309.prol ]
  %i.ds = icmp ult i64 %i.dm, 56
  br i1 %i.ds, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316, label %.lr.ph.i.i.i.i.i.i.i309

.lr.ph.i.i.i.i.i.i.i309:                          ; preds = %.lr.ph.i.i.i.i.i.i.i309.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i309
  %.012.i.i.i.i.i.i.i310 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i309 ], [ %.012.i.i.i.i.i.i.i310.unr, %.lr.ph.i.i.i.i.i.i.i309.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i311 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i309 ], [ %.0911.i.i.i.i.i.i.i311.unr, %.lr.ph.i.i.i.i.i.i.i309.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.dt = load i64, ptr %.0911.i.i.i.i.i.i.i311, align 8, !alias.scope !126, !noalias !123
  store i64 %i.dt, ptr %.012.i.i.i.i.i.i.i310, align 8, !alias.scope !123, !noalias !126
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.dw = load i64, ptr %i.du, align 8, !alias.scope !133, !noalias !131
  store i64 %i.dw, ptr %i.dv, align 8, !alias.scope !131, !noalias !133
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.dz = load i64, ptr %i.dx, align 8, !alias.scope !137, !noalias !135
  store i64 %i.dz, ptr %i.dy, align 8, !alias.scope !135, !noalias !137
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.ec = load i64, ptr %i.ea, align 8, !alias.scope !141, !noalias !139
  store i64 %i.ec, ptr %i.eb, align 8, !alias.scope !139, !noalias !141
  %i.ed = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ef = load i64, ptr %i.ed, align 8, !alias.scope !145, !noalias !143
  store i64 %i.ef, ptr %i.ee, align 8, !alias.scope !143, !noalias !145
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ei = load i64, ptr %i.eg, align 8, !alias.scope !149, !noalias !147
  store i64 %i.ei, ptr %i.eh, align 8, !alias.scope !147, !noalias !149
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.el = load i64, ptr %i.ej, align 8, !alias.scope !153, !noalias !151
  store i64 %i.el, ptr %i.ek, align 8, !alias.scope !151, !noalias !153
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311, i64 56 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.eo = load i64, ptr %i.em, align 8, !alias.scope !157, !noalias !155
  store i64 %i.eo, ptr %i.en, align 8, !alias.scope !155, !noalias !157
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i311, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i310, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i312.7 = icmp eq ptr %i.em, %.0.lcssa.i.i.i.i.i.i.i299.pn
  br i1 %.not.i.i.i.i.i.i.i312.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316, label %.lr.ph.i.i.i.i.i.i.i309, !llvm.loop !159

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316: ; preds = %.lr.ph.i.i.i.i.i.i.i309.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i309, %middle.block2350, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i305
  %.0.lcssa.i.i.i.i.i.i.i314 = phi ptr [ %i.cy, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i305 ], [ %i.dg, %middle.block2350 ], [ %.lcssa3776.unr, %.lr.ph.i.i.i.i.i.i.i309.prol.loopexit ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i309 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i314, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.8, i64 noundef %i.cq) #28
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit317

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit317: ; preds = %bb.m, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316
  %.sroa.217.9 = phi ptr [ %i.es, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316 ], [ %.sroa.217.8, %bb.m ] ; 5 uses
  %.sroa.76.9 = phi ptr [ %i.er, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316 ], [ %i.cn, %bb.m ] ; 3 uses
  %.sroa.01677.9 = phi ptr [ %i.cy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i316 ], [ %.sroa.01677.8, %bb.m ] ; 7 uses
  %i.et = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.63, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.p, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit318, !prof !5

bb.p:                                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit317
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit318

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit318: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit317, %bb.p
  %i.ev = ptrtoint ptr %i.et to i64               ; 2 uses
  %.not.i.i.i319 = icmp eq ptr %.sroa.76.9, %.sroa.217.9
  br i1 %.not.i.i.i319, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit318
  store i64 %i.ev, ptr %.sroa.76.9, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit332

bb.r:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit318
  %i.ew = ptrtoint ptr %.sroa.217.9 to i64        ; 2 uses
  %i.ex = ptrtoint ptr %.sroa.01677.9 to i64      ; 3 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.s, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i320

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i320: ; preds = %bb.r
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i321 = tail call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i.i.i321, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i.i.i322 = icmp ne i64 %i.fe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i322)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #27 ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey
  store i64 %i.ev, ptr %i.fh, align 8
  %.not10.i.i.i.i.i.i.i323 = icmp eq ptr %.sroa.01677.9, %.sroa.217.9
  br i1 %.not10.i.i.i.i.i.i.i323, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i331, label %.lr.ph.i.i.i.i.i.i.i324.preheader

.lr.ph.i.i.i.i.i.i.i324.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i320
  %i.fi = ptrtoaddr ptr %i.fg to i64
  %4 = sub i64 %i.ew, %i.ex
  %5 = add i64 %4, -8                             ; 2 uses
  %i.fj = lshr i64 %5, 3
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check2357 = icmp ult i64 %5, 56
  %i.fl = sub i64 %i.fi, %i.ex
  %diff.check2355 = icmp ult i64 %i.fl, 32
  %or.cond3582 = or i1 %min.iters.check2357, %diff.check2355
  br i1 %or.cond3582, label %.lr.ph.i.i.i.i.i.i.i324.preheader3773, label %vector.ph2358

vector.ph2358:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i324.preheader
  %n.vec2360 = and i64 %i.fk, 4611686018427387900 ; 3 uses
  %i.fm = shl i64 %n.vec2360, 3                   ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fg, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %.sroa.01677.9, i64 %i.fm
  br label %vector.body2361

vector.body2361:                                  ; preds = %vector.body2361, %vector.ph2358
  %index2362 = phi i64 [ 0, %vector.ph2358 ], [ %index.next2367, %vector.body2361 ] ; 2 uses
  %i.fp = shl i64 %index2362, 3                   ; 2 uses
  %next.gep2363 = getelementptr i8, ptr %i.fg, i64 %i.fp ; 2 uses
  %next.gep2364 = getelementptr i8, ptr %.sroa.01677.9, i64 %i.fp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.fq = getelementptr i8, ptr %next.gep2364, i64 16
  %wide.load2365 = load <2 x i64>, ptr %next.gep2364, align 8, !alias.scope !163, !noalias !160
  %wide.load2366 = load <2 x i64>, ptr %i.fq, align 8, !alias.scope !163, !noalias !160
  %i.fr = getelementptr i8, ptr %next.gep2363, i64 16
  store <2 x i64> %wide.load2365, ptr %next.gep2363, align 8, !alias.scope !160, !noalias !163
  store <2 x i64> %wide.load2366, ptr %i.fr, align 8, !alias.scope !160, !noalias !163
  %index.next2367 = add nuw i64 %index2362, 4     ; 2 uses
  %i.fs = icmp eq i64 %index.next2367, %n.vec2360
  br i1 %i.fs, label %middle.block2368, label %vector.body2361, !llvm.loop !165

middle.block2368:                                 ; preds = %vector.body2361
  %cmp.n2369 = icmp eq i64 %i.fk, %n.vec2360
  br i1 %cmp.n2369, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i331, label %.lr.ph.i.i.i.i.i.i.i324.preheader3773

.lr.ph.i.i.i.i.i.i.i324.preheader3773:            ; preds = %.lr.ph.i.i.i.i.i.i.i324.preheader, %middle.block2368
  %.012.i.i.i.i.i.i.i325.ph = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i324.preheader ], [ %i.fn, %middle.block2368 ]
  %.0911.i.i.i.i.i.i.i326.ph = phi ptr [ %.sroa.01677.9, %.lr.ph.i.i.i.i.i.i.i324.preheader ], [ %i.fo, %middle.block2368 ]
  br label %.lr.ph.i.i.i.i.i.i.i324

.lr.ph.i.i.i.i.i.i.i324:                          ; preds = %.lr.ph.i.i.i.i.i.i.i324.preheader3773, %.lr.ph.i.i.i.i.i.i.i324
  %.012.i.i.i.i.i.i.i325 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i324 ], [ %.012.i.i.i.i.i.i.i325.ph, %.lr.ph.i.i.i.i.i.i.i324.preheader3773 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i326 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i.i324 ], [ %.0911.i.i.i.i.i.i.i326.ph, %.lr.ph.i.i.i.i.i.i.i324.preheader3773 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.ft = load i64, ptr %.0911.i.i.i.i.i.i.i326, align 8, !alias.scope !163, !noalias !160
  store i64 %i.ft, ptr %.012.i.i.i.i.i.i.i325, align 8, !alias.scope !160, !noalias !163
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i326, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i325, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i327 = icmp eq ptr %i.fu, %.sroa.217.9
  br i1 %.not.i.i.i.i.i.i.i327, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i331, label %.lr.ph.i.i.i.i.i.i.i324, !llvm.loop !166

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i331: ; preds = %.lr.ph.i.i.i.i.i.i.i324, %middle.block2368, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i320
  %.0.lcssa.i.i.i.i.i.i.i329 = phi ptr [ %i.fg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i320 ], [ %i.fn, %middle.block2368 ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i324 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.9, i64 noundef %i.ey) #28
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit332

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit332: ; preds = %bb.q, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i331
  %.sroa.217.10 = phi ptr [ %i.fw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i331 ], [ %.sroa.217.9, %bb.q ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i329.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i329, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i331 ], [ %.sroa.76.9, %bb.q ] ; 4 uses
  %.sroa.01677.10 = phi ptr [ %i.fg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i331 ], [ %.sroa.01677.9, %bb.q ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i329.pn2374 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i329.pn to i64 ; 2 uses
  %.sroa.76.10 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i329.pn, i64 8 ; 2 uses
  %i.fx = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.t, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit333, !prof !5

bb.t:                                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit332
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit333

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit333: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit332, %bb.t
  %i.fz = ptrtoint ptr %i.fx to i64               ; 2 uses
  %.not.i.i.i334 = icmp eq ptr %.sroa.76.10, %.sroa.217.10
  br i1 %.not.i.i.i334, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit333
  store i64 %i.fz, ptr %.sroa.76.10, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i329.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit347

bb.v:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit333
  %i.gb = ptrtoint ptr %.sroa.217.10 to i64
  %i.gc = ptrtoint ptr %.sroa.01677.10 to i64     ; 3 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775800
  br i1 %i.ge, label %bb.w, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i335

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i335: ; preds = %bb.v
  %i.gf = ashr exact i64 %i.gd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i336 = tail call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i.i.i.i336, %i.gf ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %i.gi = tail call i64 @llvm.umin.i64(i64 %i.gg, i64 1152921504606846975)
  %i.gj = select i1 %i.gh, i64 1152921504606846975, i64 %i.gi ; 3 uses
  %.not.i.i.i.i.i337 = icmp ne i64 %i.gj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i337)
  %i.gk = shl nuw nsw i64 %i.gj, 3
  %i.gl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #27 ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gd
  store i64 %i.fz, ptr %i.gm, align 8
  %.not10.i.i.i.i.i.i.i338 = icmp eq ptr %.sroa.01677.10, %.sroa.217.10
  br i1 %.not10.i.i.i.i.i.i.i338, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346, label %.lr.ph.i.i.i.i.i.i.i339.preheader

.lr.ph.i.i.i.i.i.i.i339.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i335
  %i.gn = ptrtoaddr ptr %i.gl to i64
  %i.go = sub i64 %.0.lcssa.i.i.i.i.i.i.i329.pn2374, %i.gc ; 2 uses
  %i.gp = lshr i64 %i.go, 3
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check2376 = icmp ult i64 %i.go, 56
  %i.gr = sub i64 %i.gn, %i.gc
  %diff.check2373 = icmp ult i64 %i.gr, 32
  %or.cond3583 = or i1 %min.iters.check2376, %diff.check2373
  br i1 %or.cond3583, label %.lr.ph.i.i.i.i.i.i.i339.preheader3771, label %vector.ph2377

vector.ph2377:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i339.preheader
  %n.vec2379 = and i64 %i.gq, 4611686018427387900 ; 3 uses
  %i.gs = shl i64 %n.vec2379, 3                   ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gl, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %.sroa.01677.10, i64 %i.gs
  br label %vector.body2380

vector.body2380:                                  ; preds = %vector.body2380, %vector.ph2377
  %index2381 = phi i64 [ 0, %vector.ph2377 ], [ %index.next2386, %vector.body2380 ] ; 2 uses
  %i.gv = shl i64 %index2381, 3                   ; 2 uses
  %next.gep2382 = getelementptr i8, ptr %i.gl, i64 %i.gv ; 2 uses
  %next.gep2383 = getelementptr i8, ptr %.sroa.01677.10, i64 %i.gv ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.gw = getelementptr i8, ptr %next.gep2383, i64 16
  %wide.load2384 = load <2 x i64>, ptr %next.gep2383, align 8, !alias.scope !170, !noalias !167
  %wide.load2385 = load <2 x i64>, ptr %i.gw, align 8, !alias.scope !170, !noalias !167
  %i.gx = getelementptr i8, ptr %next.gep2382, i64 16
  store <2 x i64> %wide.load2384, ptr %next.gep2382, align 8, !alias.scope !167, !noalias !170
  store <2 x i64> %wide.load2385, ptr %i.gx, align 8, !alias.scope !167, !noalias !170
  %index.next2386 = add nuw i64 %index2381, 4     ; 2 uses
  %i.gy = icmp eq i64 %index.next2386, %n.vec2379
  br i1 %i.gy, label %middle.block2387, label %vector.body2380, !llvm.loop !172

middle.block2387:                                 ; preds = %vector.body2380
  %cmp.n2388 = icmp eq i64 %i.gq, %n.vec2379
  br i1 %cmp.n2388, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346, label %.lr.ph.i.i.i.i.i.i.i339.preheader3771

.lr.ph.i.i.i.i.i.i.i339.preheader3771:            ; preds = %.lr.ph.i.i.i.i.i.i.i339.preheader, %middle.block2387
  %.012.i.i.i.i.i.i.i340.ph = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i339.preheader ], [ %i.gt, %middle.block2387 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i341.ph = phi ptr [ %.sroa.01677.10, %.lr.ph.i.i.i.i.i.i.i339.preheader ], [ %i.gu, %middle.block2387 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i341.ph3781 = ptrtoint ptr %.0911.i.i.i.i.i.i.i341.ph to i64
  %i.gz = sub i64 %.0.lcssa.i.i.i.i.i.i.i329.pn2374, %.0911.i.i.i.i.i.i.i341.ph3781 ; 2 uses
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = add nuw nsw i64 %i.ha, 1
  %xtraiter3782 = and i64 %i.hb, 7                ; 2 uses
  %lcmp.mod3783.not = icmp eq i64 %xtraiter3782, 0
  br i1 %lcmp.mod3783.not, label %.lr.ph.i.i.i.i.i.i.i339.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i339.prol

.lr.ph.i.i.i.i.i.i.i339.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i339.preheader3771, %.lr.ph.i.i.i.i.i.i.i339.prol
  %.012.i.i.i.i.i.i.i340.prol = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i.i339.prol ], [ %.012.i.i.i.i.i.i.i340.ph, %.lr.ph.i.i.i.i.i.i.i339.preheader3771 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i341.prol = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i.i339.prol ], [ %.0911.i.i.i.i.i.i.i341.ph, %.lr.ph.i.i.i.i.i.i.i339.preheader3771 ] ; 2 uses
  %prol.iter3784 = phi i64 [ %prol.iter3784.next, %.lr.ph.i.i.i.i.i.i.i339.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i339.preheader3771 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.hc = load i64, ptr %.0911.i.i.i.i.i.i.i341.prol, align 8, !alias.scope !170, !noalias !167
  store i64 %i.hc, ptr %.012.i.i.i.i.i.i.i340.prol, align 8, !alias.scope !167, !noalias !170
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341.prol, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340.prol, i64 8 ; 3 uses
  %prol.iter3784.next = add i64 %prol.iter3784, 1 ; 2 uses
  %prol.iter3784.cmp.not = icmp eq i64 %prol.iter3784.next, %xtraiter3782
  br i1 %prol.iter3784.cmp.not, label %.lr.ph.i.i.i.i.i.i.i339.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i339.prol, !llvm.loop !173

.lr.ph.i.i.i.i.i.i.i339.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i339.prol, %.lr.ph.i.i.i.i.i.i.i339.preheader3771
  %.lcssa3772.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i339.preheader3771 ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i339.prol ]
  %.012.i.i.i.i.i.i.i340.unr = phi ptr [ %.012.i.i.i.i.i.i.i340.ph, %.lr.ph.i.i.i.i.i.i.i339.preheader3771 ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i339.prol ]
  %.0911.i.i.i.i.i.i.i341.unr = phi ptr [ %.0911.i.i.i.i.i.i.i341.ph, %.lr.ph.i.i.i.i.i.i.i339.preheader3771 ], [ %i.hd, %.lr.ph.i.i.i.i.i.i.i339.prol ]
  %i.hf = icmp ult i64 %i.gz, 56
  br i1 %i.hf, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346, label %.lr.ph.i.i.i.i.i.i.i339

.lr.ph.i.i.i.i.i.i.i339:                          ; preds = %.lr.ph.i.i.i.i.i.i.i339.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i339
  %.012.i.i.i.i.i.i.i340 = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i339 ], [ %.012.i.i.i.i.i.i.i340.unr, %.lr.ph.i.i.i.i.i.i.i339.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i341 = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i.i.i339 ], [ %.0911.i.i.i.i.i.i.i341.unr, %.lr.ph.i.i.i.i.i.i.i339.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.hg = load i64, ptr %.0911.i.i.i.i.i.i.i341, align 8, !alias.scope !170, !noalias !167
  store i64 %i.hg, ptr %.012.i.i.i.i.i.i.i340, align 8, !alias.scope !167, !noalias !170
  %i.hh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.hj = load i64, ptr %i.hh, align 8, !alias.scope !176, !noalias !174
  store i64 %i.hj, ptr %i.hi, align 8, !alias.scope !174, !noalias !176
  %i.hk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.hm = load i64, ptr %i.hk, align 8, !alias.scope !180, !noalias !178
  store i64 %i.hm, ptr %i.hl, align 8, !alias.scope !178, !noalias !180
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.hp = load i64, ptr %i.hn, align 8, !alias.scope !184, !noalias !182
  store i64 %i.hp, ptr %i.ho, align 8, !alias.scope !182, !noalias !184
  %i.hq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.hs = load i64, ptr %i.hq, align 8, !alias.scope !188, !noalias !186
  store i64 %i.hs, ptr %i.hr, align 8, !alias.scope !186, !noalias !188
  %i.ht = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 40
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.hv = load i64, ptr %i.ht, align 8, !alias.scope !192, !noalias !190
  store i64 %i.hv, ptr %i.hu, align 8, !alias.scope !190, !noalias !192
  %i.hw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 48
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.hy = load i64, ptr %i.hw, align 8, !alias.scope !196, !noalias !194
  store i64 %i.hy, ptr %i.hx, align 8, !alias.scope !194, !noalias !196
  %i.hz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 56 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.ib = load i64, ptr %i.hz, align 8, !alias.scope !200, !noalias !198
  store i64 %i.ib, ptr %i.ia, align 8, !alias.scope !198, !noalias !200
  %i.ic = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i341, i64 64
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i340, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i342.7 = icmp eq ptr %i.hz, %.0.lcssa.i.i.i.i.i.i.i329.pn
  br i1 %.not.i.i.i.i.i.i.i342.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346, label %.lr.ph.i.i.i.i.i.i.i339, !llvm.loop !202

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346: ; preds = %.lr.ph.i.i.i.i.i.i.i339.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i339, %middle.block2387, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i335
  %.0.lcssa.i.i.i.i.i.i.i344 = phi ptr [ %i.gl, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i335 ], [ %i.gt, %middle.block2387 ], [ %.lcssa3772.unr, %.lr.ph.i.i.i.i.i.i.i339.prol.loopexit ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i339 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i344, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.10, i64 noundef %i.gd) #28
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gj
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit347

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit347: ; preds = %bb.u, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346
  %.sroa.217.11 = phi ptr [ %i.if, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346 ], [ %.sroa.217.10, %bb.u ] ; 5 uses
  %.sroa.76.11 = phi ptr [ %i.ie, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346 ], [ %i.ga, %bb.u ] ; 3 uses
  %.sroa.01677.11 = phi ptr [ %i.gl, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i346 ], [ %.sroa.01677.10, %bb.u ] ; 7 uses
  %i.ig = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.x, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.x:                                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit347
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit347, %bb.x
  %i.ii = ptrtoint ptr %i.ig to i64               ; 2 uses
  %.not.i.i.i348 = icmp eq ptr %.sroa.76.11, %.sroa.217.11
  br i1 %.not.i.i.i348, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  store i64 %i.ii, ptr %.sroa.76.11, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit361

bb.z:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.ij = ptrtoint ptr %.sroa.217.11 to i64       ; 2 uses
  %i.ik = ptrtoint ptr %.sroa.01677.11 to i64     ; 3 uses
  %i.il = sub i64 %i.ij, %i.ik                    ; 4 uses
  %i.im = icmp eq i64 %i.il, 9223372036854775800
  br i1 %i.im, label %bb.aa, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i349

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i349: ; preds = %bb.z
  %i.in = ashr exact i64 %i.il, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i350 = tail call i64 @llvm.umax.i64(i64 %i.in, i64 1)
  %i.io = add nsw i64 %.sroa.speculated.i.i.i.i.i350, %i.in ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.in
  %i.iq = tail call i64 @llvm.umin.i64(i64 %i.io, i64 1152921504606846975)
  %i.ir = select i1 %i.ip, i64 1152921504606846975, i64 %i.iq ; 3 uses
  %.not.i.i.i.i.i351 = icmp ne i64 %i.ir, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i351)
  %i.is = shl nuw nsw i64 %i.ir, 3
  %i.it = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #27 ; 8 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.il
  store i64 %i.ii, ptr %i.iu, align 8
  %.not10.i.i.i.i.i.i.i352 = icmp eq ptr %.sroa.01677.11, %.sroa.217.11
  br i1 %.not10.i.i.i.i.i.i.i352, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i360, label %.lr.ph.i.i.i.i.i.i.i353.preheader

.lr.ph.i.i.i.i.i.i.i353.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i349
  %i.iv = ptrtoaddr ptr %i.it to i64
  %6 = sub i64 %i.ij, %i.ik
  %7 = add i64 %6, -8                             ; 2 uses
  %i.iw = lshr i64 %7, 3
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check2394 = icmp ult i64 %7, 56
  %i.iy = sub i64 %i.iv, %i.ik
  %diff.check2392 = icmp ult i64 %i.iy, 32
  %or.cond3584 = or i1 %min.iters.check2394, %diff.check2392
  br i1 %or.cond3584, label %.lr.ph.i.i.i.i.i.i.i353.preheader3769, label %vector.ph2395

vector.ph2395:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i353.preheader
  %n.vec2397 = and i64 %i.ix, 4611686018427387900 ; 3 uses
  %i.iz = shl i64 %n.vec2397, 3                   ; 2 uses
  %i.ja = getelementptr i8, ptr %i.it, i64 %i.iz  ; 2 uses
  %i.jb = getelementptr i8, ptr %.sroa.01677.11, i64 %i.iz
  br label %vector.body2398

vector.body2398:                                  ; preds = %vector.body2398, %vector.ph2395
  %index2399 = phi i64 [ 0, %vector.ph2395 ], [ %index.next2404, %vector.body2398 ] ; 2 uses
  %i.jc = shl i64 %index2399, 3                   ; 2 uses
  %next.gep2400 = getelementptr i8, ptr %i.it, i64 %i.jc ; 2 uses
  %next.gep2401 = getelementptr i8, ptr %.sroa.01677.11, i64 %i.jc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.jd = getelementptr i8, ptr %next.gep2401, i64 16
  %wide.load2402 = load <2 x i64>, ptr %next.gep2401, align 8, !alias.scope !206, !noalias !203
  %wide.load2403 = load <2 x i64>, ptr %i.jd, align 8, !alias.scope !206, !noalias !203
  %i.je = getelementptr i8, ptr %next.gep2400, i64 16
  store <2 x i64> %wide.load2402, ptr %next.gep2400, align 8, !alias.scope !203, !noalias !206
  store <2 x i64> %wide.load2403, ptr %i.je, align 8, !alias.scope !203, !noalias !206
  %index.next2404 = add nuw i64 %index2399, 4     ; 2 uses
  %i.jf = icmp eq i64 %index.next2404, %n.vec2397
  br i1 %i.jf, label %middle.block2405, label %vector.body2398, !llvm.loop !208

middle.block2405:                                 ; preds = %vector.body2398
  %cmp.n2406 = icmp eq i64 %i.ix, %n.vec2397
  br i1 %cmp.n2406, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i360, label %.lr.ph.i.i.i.i.i.i.i353.preheader3769

.lr.ph.i.i.i.i.i.i.i353.preheader3769:            ; preds = %.lr.ph.i.i.i.i.i.i.i353.preheader, %middle.block2405
  %.012.i.i.i.i.i.i.i354.ph = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i.i353.preheader ], [ %i.ja, %middle.block2405 ]
  %.0911.i.i.i.i.i.i.i355.ph = phi ptr [ %.sroa.01677.11, %.lr.ph.i.i.i.i.i.i.i353.preheader ], [ %i.jb, %middle.block2405 ]
  br label %.lr.ph.i.i.i.i.i.i.i353

.lr.ph.i.i.i.i.i.i.i353:                          ; preds = %.lr.ph.i.i.i.i.i.i.i353.preheader3769, %.lr.ph.i.i.i.i.i.i.i353
  %.012.i.i.i.i.i.i.i354 = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i.i.i353 ], [ %.012.i.i.i.i.i.i.i354.ph, %.lr.ph.i.i.i.i.i.i.i353.preheader3769 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i355 = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i.i.i353 ], [ %.0911.i.i.i.i.i.i.i355.ph, %.lr.ph.i.i.i.i.i.i.i353.preheader3769 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.jg = load i64, ptr %.0911.i.i.i.i.i.i.i355, align 8, !alias.scope !206, !noalias !203
  store i64 %i.jg, ptr %.012.i.i.i.i.i.i.i354, align 8, !alias.scope !203, !noalias !206
  %i.jh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i355, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i354, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i356 = icmp eq ptr %i.jh, %.sroa.217.11
  br i1 %.not.i.i.i.i.i.i.i356, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i360, label %.lr.ph.i.i.i.i.i.i.i353, !llvm.loop !209

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i360: ; preds = %.lr.ph.i.i.i.i.i.i.i353, %middle.block2405, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i349
  %.0.lcssa.i.i.i.i.i.i.i358 = phi ptr [ %i.it, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i349 ], [ %i.ja, %middle.block2405 ], [ %i.ji, %.lr.ph.i.i.i.i.i.i.i353 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.11, i64 noundef %i.il) #28
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.ir
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit361

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit361: ; preds = %bb.y, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i360
  %.sroa.217.12 = phi ptr [ %i.jj, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i360 ], [ %.sroa.217.11, %bb.y ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i358.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i358, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i360 ], [ %.sroa.76.11, %bb.y ] ; 4 uses
  %.sroa.01677.12 = phi ptr [ %i.it, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i360 ], [ %.sroa.01677.11, %bb.y ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i358.pn2411 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i358.pn to i64 ; 2 uses
  %.sroa.76.12 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i358.pn, i64 8 ; 2 uses
  %i.jk = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.66, i32 noundef 1, i32 noundef 9) #25 ; 2 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.ab, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.ab:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit361
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit361, %bb.ab
  %i.jm = ptrtoint ptr %i.jk to i64               ; 2 uses
  %.not.i.i.i362 = icmp eq ptr %.sroa.76.12, %.sroa.217.12
  br i1 %.not.i.i.i362, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  store i64 %i.jm, ptr %.sroa.76.12, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i358.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit375

bb.ad:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.jo = ptrtoint ptr %.sroa.217.12 to i64
  %i.jp = ptrtoint ptr %.sroa.01677.12 to i64     ; 3 uses
  %i.jq = sub i64 %i.jo, %i.jp                    ; 4 uses
  %i.jr = icmp eq i64 %i.jq, 9223372036854775800
  br i1 %i.jr, label %bb.ae, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i363

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i363: ; preds = %bb.ad
  %i.js = ashr exact i64 %i.jq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i364 = tail call i64 @llvm.umax.i64(i64 %i.js, i64 1)
  %i.jt = add nsw i64 %.sroa.speculated.i.i.i.i.i364, %i.js ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.js
  %i.jv = tail call i64 @llvm.umin.i64(i64 %i.jt, i64 1152921504606846975)
  %i.jw = select i1 %i.ju, i64 1152921504606846975, i64 %i.jv ; 3 uses
  %.not.i.i.i.i.i365 = icmp ne i64 %i.jw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i365)
  %i.jx = shl nuw nsw i64 %i.jw, 3
  %i.jy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #27 ; 8 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jq
  store i64 %i.jm, ptr %i.jz, align 8
  %.not10.i.i.i.i.i.i.i366 = icmp eq ptr %.sroa.01677.12, %.sroa.217.12
  br i1 %.not10.i.i.i.i.i.i.i366, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374, label %.lr.ph.i.i.i.i.i.i.i367.preheader

.lr.ph.i.i.i.i.i.i.i367.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i363
  %i.ka = ptrtoaddr ptr %i.jy to i64
  %i.kb = sub i64 %.0.lcssa.i.i.i.i.i.i.i358.pn2411, %i.jp ; 2 uses
  %i.kc = lshr i64 %i.kb, 3
  %i.kd = add nuw nsw i64 %i.kc, 1                ; 2 uses
  %min.iters.check2413 = icmp ult i64 %i.kb, 56
  %i.ke = sub i64 %i.ka, %i.jp
  %diff.check2410 = icmp ult i64 %i.ke, 32
  %or.cond3585 = or i1 %min.iters.check2413, %diff.check2410
  br i1 %or.cond3585, label %.lr.ph.i.i.i.i.i.i.i367.preheader3767, label %vector.ph2414

vector.ph2414:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i367.preheader
  %n.vec2416 = and i64 %i.kd, 4611686018427387900 ; 3 uses
  %i.kf = shl i64 %n.vec2416, 3                   ; 2 uses
  %i.kg = getelementptr i8, ptr %i.jy, i64 %i.kf  ; 2 uses
  %i.kh = getelementptr i8, ptr %.sroa.01677.12, i64 %i.kf
  br label %vector.body2417

vector.body2417:                                  ; preds = %vector.body2417, %vector.ph2414
  %index2418 = phi i64 [ 0, %vector.ph2414 ], [ %index.next2423, %vector.body2417 ] ; 2 uses
  %i.ki = shl i64 %index2418, 3                   ; 2 uses
  %next.gep2419 = getelementptr i8, ptr %i.jy, i64 %i.ki ; 2 uses
  %next.gep2420 = getelementptr i8, ptr %.sroa.01677.12, i64 %i.ki ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.kj = getelementptr i8, ptr %next.gep2420, i64 16
  %wide.load2421 = load <2 x i64>, ptr %next.gep2420, align 8, !alias.scope !213, !noalias !210
  %wide.load2422 = load <2 x i64>, ptr %i.kj, align 8, !alias.scope !213, !noalias !210
  %i.kk = getelementptr i8, ptr %next.gep2419, i64 16
  store <2 x i64> %wide.load2421, ptr %next.gep2419, align 8, !alias.scope !210, !noalias !213
  store <2 x i64> %wide.load2422, ptr %i.kk, align 8, !alias.scope !210, !noalias !213
  %index.next2423 = add nuw i64 %index2418, 4     ; 2 uses
  %i.kl = icmp eq i64 %index.next2423, %n.vec2416
  br i1 %i.kl, label %middle.block2424, label %vector.body2417, !llvm.loop !215

middle.block2424:                                 ; preds = %vector.body2417
  %cmp.n2425 = icmp eq i64 %i.kd, %n.vec2416
  br i1 %cmp.n2425, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374, label %.lr.ph.i.i.i.i.i.i.i367.preheader3767

.lr.ph.i.i.i.i.i.i.i367.preheader3767:            ; preds = %.lr.ph.i.i.i.i.i.i.i367.preheader, %middle.block2424
  %.012.i.i.i.i.i.i.i368.ph = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i.i367.preheader ], [ %i.kg, %middle.block2424 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i369.ph = phi ptr [ %.sroa.01677.12, %.lr.ph.i.i.i.i.i.i.i367.preheader ], [ %i.kh, %middle.block2424 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i369.ph3785 = ptrtoint ptr %.0911.i.i.i.i.i.i.i369.ph to i64
  %i.km = sub i64 %.0.lcssa.i.i.i.i.i.i.i358.pn2411, %.0911.i.i.i.i.i.i.i369.ph3785 ; 2 uses
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1
  %xtraiter3786 = and i64 %i.ko, 7                ; 2 uses
  %lcmp.mod3787.not = icmp eq i64 %xtraiter3786, 0
  br i1 %lcmp.mod3787.not, label %.lr.ph.i.i.i.i.i.i.i367.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i367.prol

.lr.ph.i.i.i.i.i.i.i367.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i367.preheader3767, %.lr.ph.i.i.i.i.i.i.i367.prol
  %.012.i.i.i.i.i.i.i368.prol = phi ptr [ %i.kr, %.lr.ph.i.i.i.i.i.i.i367.prol ], [ %.012.i.i.i.i.i.i.i368.ph, %.lr.ph.i.i.i.i.i.i.i367.preheader3767 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i369.prol = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i.i.i367.prol ], [ %.0911.i.i.i.i.i.i.i369.ph, %.lr.ph.i.i.i.i.i.i.i367.preheader3767 ] ; 2 uses
  %prol.iter3788 = phi i64 [ %prol.iter3788.next, %.lr.ph.i.i.i.i.i.i.i367.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i367.preheader3767 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.kp = load i64, ptr %.0911.i.i.i.i.i.i.i369.prol, align 8, !alias.scope !213, !noalias !210
  store i64 %i.kp, ptr %.012.i.i.i.i.i.i.i368.prol, align 8, !alias.scope !210, !noalias !213
  %i.kq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369.prol, i64 8 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368.prol, i64 8 ; 3 uses
  %prol.iter3788.next = add i64 %prol.iter3788, 1 ; 2 uses
  %prol.iter3788.cmp.not = icmp eq i64 %prol.iter3788.next, %xtraiter3786
  br i1 %prol.iter3788.cmp.not, label %.lr.ph.i.i.i.i.i.i.i367.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i367.prol, !llvm.loop !216

.lr.ph.i.i.i.i.i.i.i367.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i367.prol, %.lr.ph.i.i.i.i.i.i.i367.preheader3767
  %.lcssa3768.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i367.preheader3767 ], [ %i.kr, %.lr.ph.i.i.i.i.i.i.i367.prol ]
  %.012.i.i.i.i.i.i.i368.unr = phi ptr [ %.012.i.i.i.i.i.i.i368.ph, %.lr.ph.i.i.i.i.i.i.i367.preheader3767 ], [ %i.kr, %.lr.ph.i.i.i.i.i.i.i367.prol ]
  %.0911.i.i.i.i.i.i.i369.unr = phi ptr [ %.0911.i.i.i.i.i.i.i369.ph, %.lr.ph.i.i.i.i.i.i.i367.preheader3767 ], [ %i.kq, %.lr.ph.i.i.i.i.i.i.i367.prol ]
  %i.ks = icmp ult i64 %i.km, 56
  br i1 %i.ks, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374, label %.lr.ph.i.i.i.i.i.i.i367

.lr.ph.i.i.i.i.i.i.i367:                          ; preds = %.lr.ph.i.i.i.i.i.i.i367.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i367
  %.012.i.i.i.i.i.i.i368 = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i.i367 ], [ %.012.i.i.i.i.i.i.i368.unr, %.lr.ph.i.i.i.i.i.i.i367.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i369 = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i.i367 ], [ %.0911.i.i.i.i.i.i.i369.unr, %.lr.ph.i.i.i.i.i.i.i367.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.kt = load i64, ptr %.0911.i.i.i.i.i.i.i369, align 8, !alias.scope !213, !noalias !210
  store i64 %i.kt, ptr %.012.i.i.i.i.i.i.i368, align 8, !alias.scope !210, !noalias !213
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.kw = load i64, ptr %i.ku, align 8, !alias.scope !219, !noalias !217
  store i64 %i.kw, ptr %i.kv, align 8, !alias.scope !217, !noalias !219
  %i.kx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.kz = load i64, ptr %i.kx, align 8, !alias.scope !223, !noalias !221
  store i64 %i.kz, ptr %i.ky, align 8, !alias.scope !221, !noalias !223
  %i.la = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 24
  %i.lb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.lc = load i64, ptr %i.la, align 8, !alias.scope !227, !noalias !225
  store i64 %i.lc, ptr %i.lb, align 8, !alias.scope !225, !noalias !227
  %i.ld = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 32
  %i.le = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.lf = load i64, ptr %i.ld, align 8, !alias.scope !231, !noalias !229
  store i64 %i.lf, ptr %i.le, align 8, !alias.scope !229, !noalias !231
  %i.lg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 40
  %i.lh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.li = load i64, ptr %i.lg, align 8, !alias.scope !235, !noalias !233
  store i64 %i.li, ptr %i.lh, align 8, !alias.scope !233, !noalias !235
  %i.lj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 48
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.ll = load i64, ptr %i.lj, align 8, !alias.scope !239, !noalias !237
  store i64 %i.ll, ptr %i.lk, align 8, !alias.scope !237, !noalias !239
  %i.lm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 56 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.lo = load i64, ptr %i.lm, align 8, !alias.scope !243, !noalias !241
  store i64 %i.lo, ptr %i.ln, align 8, !alias.scope !241, !noalias !243
  %i.lp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 64
  %i.lq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i370.7 = icmp eq ptr %i.lm, %.0.lcssa.i.i.i.i.i.i.i358.pn
  br i1 %.not.i.i.i.i.i.i.i370.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374, label %.lr.ph.i.i.i.i.i.i.i367, !llvm.loop !245

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374: ; preds = %.lr.ph.i.i.i.i.i.i.i367.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i367, %middle.block2424, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i363
  %.0.lcssa.i.i.i.i.i.i.i372 = phi ptr [ %i.jy, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i363 ], [ %i.kg, %middle.block2424 ], [ %.lcssa3768.unr, %.lr.ph.i.i.i.i.i.i.i367.prol.loopexit ], [ %i.lq, %.lr.ph.i.i.i.i.i.i.i367 ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i372, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.12, i64 noundef %i.jq) #28
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jw
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit375

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit375: ; preds = %bb.ac, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374
  %.sroa.217.13 = phi ptr [ %i.ls, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374 ], [ %.sroa.217.12, %bb.ac ] ; 5 uses
  %.sroa.76.13 = phi ptr [ %i.lr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374 ], [ %i.jn, %bb.ac ] ; 3 uses
  %.sroa.01677.13 = phi ptr [ %i.jy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i374 ], [ %.sroa.01677.12, %bb.ac ] ; 7 uses
  %i.lt = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.67, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.af, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit376, !prof !5

bb.af:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit375
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit376

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit376: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit375, %bb.af
  %i.lv = ptrtoint ptr %i.lt to i64               ; 2 uses
  %.not.i.i.i377 = icmp eq ptr %.sroa.76.13, %.sroa.217.13
  br i1 %.not.i.i.i377, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit376
  store i64 %i.lv, ptr %.sroa.76.13, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit390

bb.ah:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit376
  %i.lw = ptrtoint ptr %.sroa.217.13 to i64       ; 2 uses
  %i.lx = ptrtoint ptr %.sroa.01677.13 to i64     ; 3 uses
  %i.ly = sub i64 %i.lw, %i.lx                    ; 4 uses
  %i.lz = icmp eq i64 %i.ly, 9223372036854775800
  br i1 %i.lz, label %bb.ai, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i378

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i378: ; preds = %bb.ah
  %i.ma = ashr exact i64 %i.ly, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i379 = tail call i64 @llvm.umax.i64(i64 %i.ma, i64 1)
  %i.mb = add nsw i64 %.sroa.speculated.i.i.i.i.i379, %i.ma ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.ma
  %i.md = tail call i64 @llvm.umin.i64(i64 %i.mb, i64 1152921504606846975)
  %i.me = select i1 %i.mc, i64 1152921504606846975, i64 %i.md ; 3 uses
  %.not.i.i.i.i.i380 = icmp ne i64 %i.me, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i380)
  %i.mf = shl nuw nsw i64 %i.me, 3
  %i.mg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #27 ; 8 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ly
  store i64 %i.lv, ptr %i.mh, align 8
  %.not10.i.i.i.i.i.i.i381 = icmp eq ptr %.sroa.01677.13, %.sroa.217.13
  br i1 %.not10.i.i.i.i.i.i.i381, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i389, label %.lr.ph.i.i.i.i.i.i.i382.preheader

.lr.ph.i.i.i.i.i.i.i382.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i378
  %i.mi = ptrtoaddr ptr %i.mg to i64
  %8 = sub i64 %i.lw, %i.lx
  %9 = add i64 %8, -8                             ; 2 uses
  %i.mj = lshr i64 %9, 3
  %i.mk = add nuw nsw i64 %i.mj, 1                ; 2 uses
  %min.iters.check2431 = icmp ult i64 %9, 56
  %i.ml = sub i64 %i.mi, %i.lx
  %diff.check2429 = icmp ult i64 %i.ml, 32
  %or.cond3586 = or i1 %min.iters.check2431, %diff.check2429
  br i1 %or.cond3586, label %.lr.ph.i.i.i.i.i.i.i382.preheader3765, label %vector.ph2432

vector.ph2432:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i382.preheader
  %n.vec2434 = and i64 %i.mk, 4611686018427387900 ; 3 uses
  %i.mm = shl i64 %n.vec2434, 3                   ; 2 uses
  %i.mn = getelementptr i8, ptr %i.mg, i64 %i.mm  ; 2 uses
  %i.mo = getelementptr i8, ptr %.sroa.01677.13, i64 %i.mm
  br label %vector.body2435

vector.body2435:                                  ; preds = %vector.body2435, %vector.ph2432
  %index2436 = phi i64 [ 0, %vector.ph2432 ], [ %index.next2441, %vector.body2435 ] ; 2 uses
  %i.mp = shl i64 %index2436, 3                   ; 2 uses
  %next.gep2437 = getelementptr i8, ptr %i.mg, i64 %i.mp ; 2 uses
  %next.gep2438 = getelementptr i8, ptr %.sroa.01677.13, i64 %i.mp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.mq = getelementptr i8, ptr %next.gep2438, i64 16
  %wide.load2439 = load <2 x i64>, ptr %next.gep2438, align 8, !alias.scope !249, !noalias !246
  %wide.load2440 = load <2 x i64>, ptr %i.mq, align 8, !alias.scope !249, !noalias !246
  %i.mr = getelementptr i8, ptr %next.gep2437, i64 16
  store <2 x i64> %wide.load2439, ptr %next.gep2437, align 8, !alias.scope !246, !noalias !249
  store <2 x i64> %wide.load2440, ptr %i.mr, align 8, !alias.scope !246, !noalias !249
  %index.next2441 = add nuw i64 %index2436, 4     ; 2 uses
  %i.ms = icmp eq i64 %index.next2441, %n.vec2434
  br i1 %i.ms, label %middle.block2442, label %vector.body2435, !llvm.loop !251

middle.block2442:                                 ; preds = %vector.body2435
  %cmp.n2443 = icmp eq i64 %i.mk, %n.vec2434
  br i1 %cmp.n2443, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i389, label %.lr.ph.i.i.i.i.i.i.i382.preheader3765

.lr.ph.i.i.i.i.i.i.i382.preheader3765:            ; preds = %.lr.ph.i.i.i.i.i.i.i382.preheader, %middle.block2442
  %.012.i.i.i.i.i.i.i383.ph = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.i.i.i382.preheader ], [ %i.mn, %middle.block2442 ]
  %.0911.i.i.i.i.i.i.i384.ph = phi ptr [ %.sroa.01677.13, %.lr.ph.i.i.i.i.i.i.i382.preheader ], [ %i.mo, %middle.block2442 ]
  br label %.lr.ph.i.i.i.i.i.i.i382

.lr.ph.i.i.i.i.i.i.i382:                          ; preds = %.lr.ph.i.i.i.i.i.i.i382.preheader3765, %.lr.ph.i.i.i.i.i.i.i382
  %.012.i.i.i.i.i.i.i383 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i382 ], [ %.012.i.i.i.i.i.i.i383.ph, %.lr.ph.i.i.i.i.i.i.i382.preheader3765 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i384 = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.i.i.i382 ], [ %.0911.i.i.i.i.i.i.i384.ph, %.lr.ph.i.i.i.i.i.i.i382.preheader3765 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.mt = load i64, ptr %.0911.i.i.i.i.i.i.i384, align 8, !alias.scope !249, !noalias !246
  store i64 %i.mt, ptr %.012.i.i.i.i.i.i.i383, align 8, !alias.scope !246, !noalias !249
  %i.mu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i384, i64 8 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i383, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i385 = icmp eq ptr %i.mu, %.sroa.217.13
  br i1 %.not.i.i.i.i.i.i.i385, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i389, label %.lr.ph.i.i.i.i.i.i.i382, !llvm.loop !252

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i389: ; preds = %.lr.ph.i.i.i.i.i.i.i382, %middle.block2442, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i378
  %.0.lcssa.i.i.i.i.i.i.i387 = phi ptr [ %i.mg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i378 ], [ %i.mn, %middle.block2442 ], [ %i.mv, %.lr.ph.i.i.i.i.i.i.i382 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.13, i64 noundef %i.ly) #28
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.me
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit390

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit390: ; preds = %bb.ag, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i389
  %.sroa.217.14 = phi ptr [ %i.mw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i389 ], [ %.sroa.217.13, %bb.ag ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i387.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i387, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i389 ], [ %.sroa.76.13, %bb.ag ] ; 4 uses
  %.sroa.01677.14 = phi ptr [ %i.mg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i389 ], [ %.sroa.01677.13, %bb.ag ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i387.pn2448 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i387.pn to i64 ; 2 uses
  %.sroa.76.14 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i387.pn, i64 8 ; 2 uses
  %i.mx = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.68, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.aj, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit391, !prof !5

bb.aj:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit390
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit391

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit391: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit390, %bb.aj
  %i.mz = ptrtoint ptr %i.mx to i64               ; 2 uses
  %.not.i.i.i392 = icmp eq ptr %.sroa.76.14, %.sroa.217.14
  br i1 %.not.i.i.i392, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit391
  store i64 %i.mz, ptr %.sroa.76.14, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i387.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit405

bb.al:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit391
  %i.nb = ptrtoint ptr %.sroa.217.14 to i64
  %i.nc = ptrtoint ptr %.sroa.01677.14 to i64     ; 3 uses
  %i.nd = sub i64 %i.nb, %i.nc                    ; 4 uses
  %i.ne = icmp eq i64 %i.nd, 9223372036854775800
  br i1 %i.ne, label %bb.am, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i393

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i393: ; preds = %bb.al
  %i.nf = ashr exact i64 %i.nd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i394 = tail call i64 @llvm.umax.i64(i64 %i.nf, i64 1)
  %i.ng = add nsw i64 %.sroa.speculated.i.i.i.i.i394, %i.nf ; 2 uses
  %i.nh = icmp ult i64 %i.ng, %i.nf
  %i.ni = tail call i64 @llvm.umin.i64(i64 %i.ng, i64 1152921504606846975)
  %i.nj = select i1 %i.nh, i64 1152921504606846975, i64 %i.ni ; 3 uses
  %.not.i.i.i.i.i395 = icmp ne i64 %i.nj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i395)
  %i.nk = shl nuw nsw i64 %i.nj, 3
  %i.nl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nk) #27 ; 8 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nd
  store i64 %i.mz, ptr %i.nm, align 8
  %.not10.i.i.i.i.i.i.i396 = icmp eq ptr %.sroa.01677.14, %.sroa.217.14
  br i1 %.not10.i.i.i.i.i.i.i396, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404, label %.lr.ph.i.i.i.i.i.i.i397.preheader

.lr.ph.i.i.i.i.i.i.i397.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i393
  %i.nn = ptrtoaddr ptr %i.nl to i64
  %i.no = sub i64 %.0.lcssa.i.i.i.i.i.i.i387.pn2448, %i.nc ; 2 uses
  %i.np = lshr i64 %i.no, 3
  %i.nq = add nuw nsw i64 %i.np, 1                ; 2 uses
  %min.iters.check2450 = icmp ult i64 %i.no, 56
  %i.nr = sub i64 %i.nn, %i.nc
  %diff.check2447 = icmp ult i64 %i.nr, 32
  %or.cond3587 = or i1 %min.iters.check2450, %diff.check2447
  br i1 %or.cond3587, label %.lr.ph.i.i.i.i.i.i.i397.preheader3763, label %vector.ph2451

vector.ph2451:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i397.preheader
  %n.vec2453 = and i64 %i.nq, 4611686018427387900 ; 3 uses
  %i.ns = shl i64 %n.vec2453, 3                   ; 2 uses
  %i.nt = getelementptr i8, ptr %i.nl, i64 %i.ns  ; 2 uses
  %i.nu = getelementptr i8, ptr %.sroa.01677.14, i64 %i.ns
  br label %vector.body2454

vector.body2454:                                  ; preds = %vector.body2454, %vector.ph2451
  %index2455 = phi i64 [ 0, %vector.ph2451 ], [ %index.next2460, %vector.body2454 ] ; 2 uses
  %i.nv = shl i64 %index2455, 3                   ; 2 uses
  %next.gep2456 = getelementptr i8, ptr %i.nl, i64 %i.nv ; 2 uses
  %next.gep2457 = getelementptr i8, ptr %.sroa.01677.14, i64 %i.nv ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.nw = getelementptr i8, ptr %next.gep2457, i64 16
  %wide.load2458 = load <2 x i64>, ptr %next.gep2457, align 8, !alias.scope !256, !noalias !253
  %wide.load2459 = load <2 x i64>, ptr %i.nw, align 8, !alias.scope !256, !noalias !253
  %i.nx = getelementptr i8, ptr %next.gep2456, i64 16
  store <2 x i64> %wide.load2458, ptr %next.gep2456, align 8, !alias.scope !253, !noalias !256
  store <2 x i64> %wide.load2459, ptr %i.nx, align 8, !alias.scope !253, !noalias !256
  %index.next2460 = add nuw i64 %index2455, 4     ; 2 uses
  %i.ny = icmp eq i64 %index.next2460, %n.vec2453
  br i1 %i.ny, label %middle.block2461, label %vector.body2454, !llvm.loop !258

middle.block2461:                                 ; preds = %vector.body2454
  %cmp.n2462 = icmp eq i64 %i.nq, %n.vec2453
  br i1 %cmp.n2462, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404, label %.lr.ph.i.i.i.i.i.i.i397.preheader3763

.lr.ph.i.i.i.i.i.i.i397.preheader3763:            ; preds = %.lr.ph.i.i.i.i.i.i.i397.preheader, %middle.block2461
  %.012.i.i.i.i.i.i.i398.ph = phi ptr [ %i.nl, %.lr.ph.i.i.i.i.i.i.i397.preheader ], [ %i.nt, %middle.block2461 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i399.ph = phi ptr [ %.sroa.01677.14, %.lr.ph.i.i.i.i.i.i.i397.preheader ], [ %i.nu, %middle.block2461 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i399.ph3789 = ptrtoint ptr %.0911.i.i.i.i.i.i.i399.ph to i64
  %i.nz = sub i64 %.0.lcssa.i.i.i.i.i.i.i387.pn2448, %.0911.i.i.i.i.i.i.i399.ph3789 ; 2 uses
  %i.oa = lshr i64 %i.nz, 3
  %i.ob = add nuw nsw i64 %i.oa, 1
  %xtraiter3790 = and i64 %i.ob, 7                ; 2 uses
  %lcmp.mod3791.not = icmp eq i64 %xtraiter3790, 0
  br i1 %lcmp.mod3791.not, label %.lr.ph.i.i.i.i.i.i.i397.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i397.prol

.lr.ph.i.i.i.i.i.i.i397.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i397.preheader3763, %.lr.ph.i.i.i.i.i.i.i397.prol
  %.012.i.i.i.i.i.i.i398.prol = phi ptr [ %i.oe, %.lr.ph.i.i.i.i.i.i.i397.prol ], [ %.012.i.i.i.i.i.i.i398.ph, %.lr.ph.i.i.i.i.i.i.i397.preheader3763 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i399.prol = phi ptr [ %i.od, %.lr.ph.i.i.i.i.i.i.i397.prol ], [ %.0911.i.i.i.i.i.i.i399.ph, %.lr.ph.i.i.i.i.i.i.i397.preheader3763 ] ; 2 uses
  %prol.iter3792 = phi i64 [ %prol.iter3792.next, %.lr.ph.i.i.i.i.i.i.i397.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i397.preheader3763 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.oc = load i64, ptr %.0911.i.i.i.i.i.i.i399.prol, align 8, !alias.scope !256, !noalias !253
  store i64 %i.oc, ptr %.012.i.i.i.i.i.i.i398.prol, align 8, !alias.scope !253, !noalias !256
  %i.od = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399.prol, i64 8 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398.prol, i64 8 ; 3 uses
  %prol.iter3792.next = add i64 %prol.iter3792, 1 ; 2 uses
  %prol.iter3792.cmp.not = icmp eq i64 %prol.iter3792.next, %xtraiter3790
  br i1 %prol.iter3792.cmp.not, label %.lr.ph.i.i.i.i.i.i.i397.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i397.prol, !llvm.loop !259

.lr.ph.i.i.i.i.i.i.i397.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i397.prol, %.lr.ph.i.i.i.i.i.i.i397.preheader3763
  %.lcssa3764.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i397.preheader3763 ], [ %i.oe, %.lr.ph.i.i.i.i.i.i.i397.prol ]
  %.012.i.i.i.i.i.i.i398.unr = phi ptr [ %.012.i.i.i.i.i.i.i398.ph, %.lr.ph.i.i.i.i.i.i.i397.preheader3763 ], [ %i.oe, %.lr.ph.i.i.i.i.i.i.i397.prol ]
  %.0911.i.i.i.i.i.i.i399.unr = phi ptr [ %.0911.i.i.i.i.i.i.i399.ph, %.lr.ph.i.i.i.i.i.i.i397.preheader3763 ], [ %i.od, %.lr.ph.i.i.i.i.i.i.i397.prol ]
  %i.of = icmp ult i64 %i.nz, 56
  br i1 %i.of, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404, label %.lr.ph.i.i.i.i.i.i.i397

.lr.ph.i.i.i.i.i.i.i397:                          ; preds = %.lr.ph.i.i.i.i.i.i.i397.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i397
  %.012.i.i.i.i.i.i.i398 = phi ptr [ %i.pd, %.lr.ph.i.i.i.i.i.i.i397 ], [ %.012.i.i.i.i.i.i.i398.unr, %.lr.ph.i.i.i.i.i.i.i397.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i399 = phi ptr [ %i.pc, %.lr.ph.i.i.i.i.i.i.i397 ], [ %.0911.i.i.i.i.i.i.i399.unr, %.lr.ph.i.i.i.i.i.i.i397.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.og = load i64, ptr %.0911.i.i.i.i.i.i.i399, align 8, !alias.scope !256, !noalias !253
  store i64 %i.og, ptr %.012.i.i.i.i.i.i.i398, align 8, !alias.scope !253, !noalias !256
  %i.oh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.oj = load i64, ptr %i.oh, align 8, !alias.scope !262, !noalias !260
  store i64 %i.oj, ptr %i.oi, align 8, !alias.scope !260, !noalias !262
  %i.ok = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.om = load i64, ptr %i.ok, align 8, !alias.scope !266, !noalias !264
  store i64 %i.om, ptr %i.ol, align 8, !alias.scope !264, !noalias !266
  %i.on = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399, i64 24
  %i.oo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.op = load i64, ptr %i.on, align 8, !alias.scope !270, !noalias !268
  store i64 %i.op, ptr %i.oo, align 8, !alias.scope !268, !noalias !270
  %i.oq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.os = load i64, ptr %i.oq, align 8, !alias.scope !274, !noalias !272
  store i64 %i.os, ptr %i.or, align 8, !alias.scope !272, !noalias !274
  %i.ot = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399, i64 40
  %i.ou = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ov = load i64, ptr %i.ot, align 8, !alias.scope !278, !noalias !276
  store i64 %i.ov, ptr %i.ou, align 8, !alias.scope !276, !noalias !278
  %i.ow = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399, i64 48
  %i.ox = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.oy = load i64, ptr %i.ow, align 8, !alias.scope !282, !noalias !280
  store i64 %i.oy, ptr %i.ox, align 8, !alias.scope !280, !noalias !282
  %i.oz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399, i64 56 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.pb = load i64, ptr %i.oz, align 8, !alias.scope !286, !noalias !284
  store i64 %i.pb, ptr %i.pa, align 8, !alias.scope !284, !noalias !286
  %i.pc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i399, i64 64
  %i.pd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i398, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i400.7 = icmp eq ptr %i.oz, %.0.lcssa.i.i.i.i.i.i.i387.pn
  br i1 %.not.i.i.i.i.i.i.i400.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404, label %.lr.ph.i.i.i.i.i.i.i397, !llvm.loop !288

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404: ; preds = %.lr.ph.i.i.i.i.i.i.i397.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i397, %middle.block2461, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i393
  %.0.lcssa.i.i.i.i.i.i.i402 = phi ptr [ %i.nl, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i393 ], [ %i.nt, %middle.block2461 ], [ %.lcssa3764.unr, %.lr.ph.i.i.i.i.i.i.i397.prol.loopexit ], [ %i.pd, %.lr.ph.i.i.i.i.i.i.i397 ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i402, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.14, i64 noundef %i.nd) #28
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nj
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit405

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit405: ; preds = %bb.ak, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404
  %.sroa.217.15 = phi ptr [ %i.pf, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404 ], [ %.sroa.217.14, %bb.ak ] ; 5 uses
  %.sroa.76.15 = phi ptr [ %i.pe, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404 ], [ %i.na, %bb.ak ] ; 3 uses
  %.sroa.01677.15 = phi ptr [ %i.nl, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i404 ], [ %.sroa.01677.14, %bb.ak ] ; 7 uses
  %i.pg = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.69, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %bb.an, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit406, !prof !5

bb.an:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit405
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit406

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit406: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit405, %bb.an
  %i.pi = ptrtoint ptr %i.pg to i64               ; 2 uses
  %.not.i.i.i407 = icmp eq ptr %.sroa.76.15, %.sroa.217.15
  br i1 %.not.i.i.i407, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit406
  store i64 %i.pi, ptr %.sroa.76.15, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit420

bb.ap:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit406
  %i.pj = ptrtoint ptr %.sroa.217.15 to i64       ; 2 uses
  %i.pk = ptrtoint ptr %.sroa.01677.15 to i64     ; 3 uses
  %i.pl = sub i64 %i.pj, %i.pk                    ; 4 uses
  %i.pm = icmp eq i64 %i.pl, 9223372036854775800
  br i1 %i.pm, label %bb.aq, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i408

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i408: ; preds = %bb.ap
  %i.pn = ashr exact i64 %i.pl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i409 = tail call i64 @llvm.umax.i64(i64 %i.pn, i64 1)
  %i.po = add nsw i64 %.sroa.speculated.i.i.i.i.i409, %i.pn ; 2 uses
  %i.pp = icmp ult i64 %i.po, %i.pn
  %i.pq = tail call i64 @llvm.umin.i64(i64 %i.po, i64 1152921504606846975)
  %i.pr = select i1 %i.pp, i64 1152921504606846975, i64 %i.pq ; 3 uses
  %.not.i.i.i.i.i410 = icmp ne i64 %i.pr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i410)
  %i.ps = shl nuw nsw i64 %i.pr, 3
  %i.pt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ps) #27 ; 8 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pl
  store i64 %i.pi, ptr %i.pu, align 8
  %.not10.i.i.i.i.i.i.i411 = icmp eq ptr %.sroa.01677.15, %.sroa.217.15
  br i1 %.not10.i.i.i.i.i.i.i411, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i419, label %.lr.ph.i.i.i.i.i.i.i412.preheader

.lr.ph.i.i.i.i.i.i.i412.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i408
  %i.pv = ptrtoaddr ptr %i.pt to i64
  %10 = sub i64 %i.pj, %i.pk
  %11 = add i64 %10, -8                           ; 2 uses
  %i.pw = lshr i64 %11, 3
  %i.px = add nuw nsw i64 %i.pw, 1                ; 2 uses
  %min.iters.check2468 = icmp ult i64 %11, 56
  %i.py = sub i64 %i.pv, %i.pk
  %diff.check2466 = icmp ult i64 %i.py, 32
  %or.cond3588 = or i1 %min.iters.check2468, %diff.check2466
  br i1 %or.cond3588, label %.lr.ph.i.i.i.i.i.i.i412.preheader3761, label %vector.ph2469

vector.ph2469:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i412.preheader
  %n.vec2471 = and i64 %i.px, 4611686018427387900 ; 3 uses
  %i.pz = shl i64 %n.vec2471, 3                   ; 2 uses
  %i.qa = getelementptr i8, ptr %i.pt, i64 %i.pz  ; 2 uses
  %i.qb = getelementptr i8, ptr %.sroa.01677.15, i64 %i.pz
  br label %vector.body2472

vector.body2472:                                  ; preds = %vector.body2472, %vector.ph2469
  %index2473 = phi i64 [ 0, %vector.ph2469 ], [ %index.next2478, %vector.body2472 ] ; 2 uses
  %i.qc = shl i64 %index2473, 3                   ; 2 uses
  %next.gep2474 = getelementptr i8, ptr %i.pt, i64 %i.qc ; 2 uses
  %next.gep2475 = getelementptr i8, ptr %.sroa.01677.15, i64 %i.qc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.qd = getelementptr i8, ptr %next.gep2475, i64 16
  %wide.load2476 = load <2 x i64>, ptr %next.gep2475, align 8, !alias.scope !292, !noalias !289
  %wide.load2477 = load <2 x i64>, ptr %i.qd, align 8, !alias.scope !292, !noalias !289
  %i.qe = getelementptr i8, ptr %next.gep2474, i64 16
  store <2 x i64> %wide.load2476, ptr %next.gep2474, align 8, !alias.scope !289, !noalias !292
  store <2 x i64> %wide.load2477, ptr %i.qe, align 8, !alias.scope !289, !noalias !292
  %index.next2478 = add nuw i64 %index2473, 4     ; 2 uses
  %i.qf = icmp eq i64 %index.next2478, %n.vec2471
  br i1 %i.qf, label %middle.block2479, label %vector.body2472, !llvm.loop !294

middle.block2479:                                 ; preds = %vector.body2472
  %cmp.n2480 = icmp eq i64 %i.px, %n.vec2471
  br i1 %cmp.n2480, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i419, label %.lr.ph.i.i.i.i.i.i.i412.preheader3761

.lr.ph.i.i.i.i.i.i.i412.preheader3761:            ; preds = %.lr.ph.i.i.i.i.i.i.i412.preheader, %middle.block2479
  %.012.i.i.i.i.i.i.i413.ph = phi ptr [ %i.pt, %.lr.ph.i.i.i.i.i.i.i412.preheader ], [ %i.qa, %middle.block2479 ]
  %.0911.i.i.i.i.i.i.i414.ph = phi ptr [ %.sroa.01677.15, %.lr.ph.i.i.i.i.i.i.i412.preheader ], [ %i.qb, %middle.block2479 ]
  br label %.lr.ph.i.i.i.i.i.i.i412

.lr.ph.i.i.i.i.i.i.i412:                          ; preds = %.lr.ph.i.i.i.i.i.i.i412.preheader3761, %.lr.ph.i.i.i.i.i.i.i412
  %.012.i.i.i.i.i.i.i413 = phi ptr [ %i.qi, %.lr.ph.i.i.i.i.i.i.i412 ], [ %.012.i.i.i.i.i.i.i413.ph, %.lr.ph.i.i.i.i.i.i.i412.preheader3761 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i414 = phi ptr [ %i.qh, %.lr.ph.i.i.i.i.i.i.i412 ], [ %.0911.i.i.i.i.i.i.i414.ph, %.lr.ph.i.i.i.i.i.i.i412.preheader3761 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.qg = load i64, ptr %.0911.i.i.i.i.i.i.i414, align 8, !alias.scope !292, !noalias !289
  store i64 %i.qg, ptr %.012.i.i.i.i.i.i.i413, align 8, !alias.scope !289, !noalias !292
  %i.qh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i414, i64 8 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i413, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i415 = icmp eq ptr %i.qh, %.sroa.217.15
  br i1 %.not.i.i.i.i.i.i.i415, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i419, label %.lr.ph.i.i.i.i.i.i.i412, !llvm.loop !295

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i419: ; preds = %.lr.ph.i.i.i.i.i.i.i412, %middle.block2479, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i408
  %.0.lcssa.i.i.i.i.i.i.i417 = phi ptr [ %i.pt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i408 ], [ %i.qa, %middle.block2479 ], [ %i.qi, %.lr.ph.i.i.i.i.i.i.i412 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.15, i64 noundef %i.pl) #28
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.pr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit420

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit420: ; preds = %bb.ao, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i419
  %.sroa.217.16 = phi ptr [ %i.qj, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i419 ], [ %.sroa.217.15, %bb.ao ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i417.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i417, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i419 ], [ %.sroa.76.15, %bb.ao ] ; 4 uses
  %.sroa.01677.16 = phi ptr [ %i.pt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i419 ], [ %.sroa.01677.15, %bb.ao ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i417.pn2485 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i417.pn to i64 ; 2 uses
  %.sroa.76.16 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i417.pn, i64 8 ; 2 uses
  %i.qk = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.ql = icmp eq ptr %i.qk, null
  br i1 %i.ql, label %bb.ar, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit421, !prof !5

bb.ar:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit420
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit421

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit421: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit420, %bb.ar
  %i.qm = ptrtoint ptr %i.qk to i64               ; 2 uses
  %.not.i.i.i422 = icmp eq ptr %.sroa.76.16, %.sroa.217.16
  br i1 %.not.i.i.i422, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit421
  store i64 %i.qm, ptr %.sroa.76.16, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i417.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit435

bb.at:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit421
  %i.qo = ptrtoint ptr %.sroa.217.16 to i64
  %i.qp = ptrtoint ptr %.sroa.01677.16 to i64     ; 3 uses
  %i.qq = sub i64 %i.qo, %i.qp                    ; 4 uses
  %i.qr = icmp eq i64 %i.qq, 9223372036854775800
  br i1 %i.qr, label %bb.au, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i423

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i423: ; preds = %bb.at
  %i.qs = ashr exact i64 %i.qq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i424 = tail call i64 @llvm.umax.i64(i64 %i.qs, i64 1)
  %i.qt = add nsw i64 %.sroa.speculated.i.i.i.i.i424, %i.qs ; 2 uses
  %i.qu = icmp ult i64 %i.qt, %i.qs
  %i.qv = tail call i64 @llvm.umin.i64(i64 %i.qt, i64 1152921504606846975)
  %i.qw = select i1 %i.qu, i64 1152921504606846975, i64 %i.qv ; 3 uses
  %.not.i.i.i.i.i425 = icmp ne i64 %i.qw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i425)
  %i.qx = shl nuw nsw i64 %i.qw, 3
  %i.qy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qx) #27 ; 8 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qq
  store i64 %i.qm, ptr %i.qz, align 8
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %.sroa.01677.16, %.sroa.217.16
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i423
  %i.ra = ptrtoaddr ptr %i.qy to i64
  %i.rb = sub i64 %.0.lcssa.i.i.i.i.i.i.i417.pn2485, %i.qp ; 2 uses
  %i.rc = lshr i64 %i.rb, 3
  %i.rd = add nuw nsw i64 %i.rc, 1                ; 2 uses
  %min.iters.check2487 = icmp ult i64 %i.rb, 56
  %i.re = sub i64 %i.ra, %i.qp
  %diff.check2484 = icmp ult i64 %i.re, 32
  %or.cond3589 = or i1 %min.iters.check2487, %diff.check2484
  br i1 %or.cond3589, label %.lr.ph.i.i.i.i.i.i.i427.preheader3759, label %vector.ph2488

vector.ph2488:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %n.vec2490 = and i64 %i.rd, 4611686018427387900 ; 3 uses
  %i.rf = shl i64 %n.vec2490, 3                   ; 2 uses
  %i.rg = getelementptr i8, ptr %i.qy, i64 %i.rf  ; 2 uses
  %i.rh = getelementptr i8, ptr %.sroa.01677.16, i64 %i.rf
  br label %vector.body2491

vector.body2491:                                  ; preds = %vector.body2491, %vector.ph2488
  %index2492 = phi i64 [ 0, %vector.ph2488 ], [ %index.next2497, %vector.body2491 ] ; 2 uses
  %i.ri = shl i64 %index2492, 3                   ; 2 uses
  %next.gep2493 = getelementptr i8, ptr %i.qy, i64 %i.ri ; 2 uses
  %next.gep2494 = getelementptr i8, ptr %.sroa.01677.16, i64 %i.ri ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.rj = getelementptr i8, ptr %next.gep2494, i64 16
  %wide.load2495 = load <2 x i64>, ptr %next.gep2494, align 8, !alias.scope !299, !noalias !296
  %wide.load2496 = load <2 x i64>, ptr %i.rj, align 8, !alias.scope !299, !noalias !296
  %i.rk = getelementptr i8, ptr %next.gep2493, i64 16
  store <2 x i64> %wide.load2495, ptr %next.gep2493, align 8, !alias.scope !296, !noalias !299
  store <2 x i64> %wide.load2496, ptr %i.rk, align 8, !alias.scope !296, !noalias !299
  %index.next2497 = add nuw i64 %index2492, 4     ; 2 uses
  %i.rl = icmp eq i64 %index.next2497, %n.vec2490
  br i1 %i.rl, label %middle.block2498, label %vector.body2491, !llvm.loop !301

middle.block2498:                                 ; preds = %vector.body2491
  %cmp.n2499 = icmp eq i64 %i.rd, %n.vec2490
  br i1 %cmp.n2499, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434, label %.lr.ph.i.i.i.i.i.i.i427.preheader3759

.lr.ph.i.i.i.i.i.i.i427.preheader3759:            ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block2498
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.qy, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.rg, %middle.block2498 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %.sroa.01677.16, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.rh, %middle.block2498 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i429.ph3793 = ptrtoint ptr %.0911.i.i.i.i.i.i.i429.ph to i64
  %i.rm = sub i64 %.0.lcssa.i.i.i.i.i.i.i417.pn2485, %.0911.i.i.i.i.i.i.i429.ph3793 ; 2 uses
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = add nuw nsw i64 %i.rn, 1
  %xtraiter3794 = and i64 %i.ro, 7                ; 2 uses
  %lcmp.mod3795.not = icmp eq i64 %xtraiter3794, 0
  br i1 %lcmp.mod3795.not, label %.lr.ph.i.i.i.i.i.i.i427.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i427.prol

.lr.ph.i.i.i.i.i.i.i427.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader3759, %.lr.ph.i.i.i.i.i.i.i427.prol
  %.012.i.i.i.i.i.i.i428.prol = phi ptr [ %i.rr, %.lr.ph.i.i.i.i.i.i.i427.prol ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader3759 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429.prol = phi ptr [ %i.rq, %.lr.ph.i.i.i.i.i.i.i427.prol ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader3759 ] ; 2 uses
  %prol.iter3796 = phi i64 [ %prol.iter3796.next, %.lr.ph.i.i.i.i.i.i.i427.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i427.preheader3759 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.rp = load i64, ptr %.0911.i.i.i.i.i.i.i429.prol, align 8, !alias.scope !299, !noalias !296
  store i64 %i.rp, ptr %.012.i.i.i.i.i.i.i428.prol, align 8, !alias.scope !296, !noalias !299
  %i.rq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429.prol, i64 8 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428.prol, i64 8 ; 3 uses
  %prol.iter3796.next = add i64 %prol.iter3796, 1 ; 2 uses
  %prol.iter3796.cmp.not = icmp eq i64 %prol.iter3796.next, %xtraiter3794
  br i1 %prol.iter3796.cmp.not, label %.lr.ph.i.i.i.i.i.i.i427.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i427.prol, !llvm.loop !302

.lr.ph.i.i.i.i.i.i.i427.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i427.prol, %.lr.ph.i.i.i.i.i.i.i427.preheader3759
  %.lcssa3760.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i427.preheader3759 ], [ %i.rr, %.lr.ph.i.i.i.i.i.i.i427.prol ]
  %.012.i.i.i.i.i.i.i428.unr = phi ptr [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader3759 ], [ %i.rr, %.lr.ph.i.i.i.i.i.i.i427.prol ]
  %.0911.i.i.i.i.i.i.i429.unr = phi ptr [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader3759 ], [ %i.rq, %.lr.ph.i.i.i.i.i.i.i427.prol ]
  %i.rs = icmp ult i64 %i.rm, 56
  br i1 %i.rs, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434, label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.sq, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.unr, %.lr.ph.i.i.i.i.i.i.i427.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.sp, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.unr, %.lr.ph.i.i.i.i.i.i.i427.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.rt = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !alias.scope !299, !noalias !296
  store i64 %i.rt, ptr %.012.i.i.i.i.i.i.i428, align 8, !alias.scope !296, !noalias !299
  %i.ru = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.rw = load i64, ptr %i.ru, align 8, !alias.scope !305, !noalias !303
  store i64 %i.rw, ptr %i.rv, align 8, !alias.scope !303, !noalias !305
  %i.rx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 16
  %i.ry = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.rz = load i64, ptr %i.rx, align 8, !alias.scope !309, !noalias !307
  store i64 %i.rz, ptr %i.ry, align 8, !alias.scope !307, !noalias !309
  %i.sa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 24
  %i.sb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.sc = load i64, ptr %i.sa, align 8, !alias.scope !313, !noalias !311
  store i64 %i.sc, ptr %i.sb, align 8, !alias.scope !311, !noalias !313
  %i.sd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 32
  %i.se = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.sf = load i64, ptr %i.sd, align 8, !alias.scope !317, !noalias !315
  store i64 %i.sf, ptr %i.se, align 8, !alias.scope !315, !noalias !317
  %i.sg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 40
  %i.sh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.si = load i64, ptr %i.sg, align 8, !alias.scope !321, !noalias !319
  store i64 %i.si, ptr %i.sh, align 8, !alias.scope !319, !noalias !321
  %i.sj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 48
  %i.sk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.sl = load i64, ptr %i.sj, align 8, !alias.scope !325, !noalias !323
  store i64 %i.sl, ptr %i.sk, align 8, !alias.scope !323, !noalias !325
  %i.sm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 56 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.so = load i64, ptr %i.sm, align 8, !alias.scope !329, !noalias !327
  store i64 %i.so, ptr %i.sn, align 8, !alias.scope !327, !noalias !329
  %i.sp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 64
  %i.sq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i430.7 = icmp eq ptr %i.sm, %.0.lcssa.i.i.i.i.i.i.i417.pn
  br i1 %.not.i.i.i.i.i.i.i430.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !331

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434: ; preds = %.lr.ph.i.i.i.i.i.i.i427.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i427, %middle.block2498, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i423
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.qy, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i423 ], [ %i.rg, %middle.block2498 ], [ %.lcssa3760.unr, %.lr.ph.i.i.i.i.i.i.i427.prol.loopexit ], [ %i.sq, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.16, i64 noundef %i.qq) #28
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %i.qw
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit435

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit435: ; preds = %bb.as, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434
  %.sroa.217.17 = phi ptr [ %i.ss, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434 ], [ %.sroa.217.16, %bb.as ] ; 5 uses
  %.sroa.76.17 = phi ptr [ %i.sr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434 ], [ %i.qn, %bb.as ] ; 3 uses
  %.sroa.01677.17 = phi ptr [ %i.qy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i434 ], [ %.sroa.01677.16, %bb.as ] ; 7 uses
  %i.st = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.71, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %bb.av, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit436, !prof !5

bb.av:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit435
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit436

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit436: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit435, %bb.av
  %i.sv = ptrtoint ptr %i.st to i64               ; 2 uses
  %.not.i.i.i437 = icmp eq ptr %.sroa.76.17, %.sroa.217.17
  br i1 %.not.i.i.i437, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit436
  store i64 %i.sv, ptr %.sroa.76.17, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit450

bb.ax:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit436
  %i.sw = ptrtoint ptr %.sroa.217.17 to i64       ; 2 uses
  %i.sx = ptrtoint ptr %.sroa.01677.17 to i64     ; 3 uses
  %i.sy = sub i64 %i.sw, %i.sx                    ; 4 uses
  %i.sz = icmp eq i64 %i.sy, 9223372036854775800
  br i1 %i.sz, label %bb.ay, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i438

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i438: ; preds = %bb.ax
  %i.ta = ashr exact i64 %i.sy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i439 = tail call i64 @llvm.umax.i64(i64 %i.ta, i64 1)
  %i.tb = add nsw i64 %.sroa.speculated.i.i.i.i.i439, %i.ta ; 2 uses
  %i.tc = icmp ult i64 %i.tb, %i.ta
  %i.td = tail call i64 @llvm.umin.i64(i64 %i.tb, i64 1152921504606846975)
  %i.te = select i1 %i.tc, i64 1152921504606846975, i64 %i.td ; 3 uses
  %.not.i.i.i.i.i440 = icmp ne i64 %i.te, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i440)
  %i.tf = shl nuw nsw i64 %i.te, 3
  %i.tg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tf) #27 ; 8 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.sy
  store i64 %i.sv, ptr %i.th, align 8
  %.not10.i.i.i.i.i.i.i441 = icmp eq ptr %.sroa.01677.17, %.sroa.217.17
  br i1 %.not10.i.i.i.i.i.i.i441, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i449, label %.lr.ph.i.i.i.i.i.i.i442.preheader

.lr.ph.i.i.i.i.i.i.i442.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i438
  %i.ti = ptrtoaddr ptr %i.tg to i64
  %12 = sub i64 %i.sw, %i.sx
  %13 = add i64 %12, -8                           ; 2 uses
  %i.tj = lshr i64 %13, 3
  %i.tk = add nuw nsw i64 %i.tj, 1                ; 2 uses
  %min.iters.check2505 = icmp ult i64 %13, 56
  %i.tl = sub i64 %i.ti, %i.sx
  %diff.check2503 = icmp ult i64 %i.tl, 32
  %or.cond3590 = or i1 %min.iters.check2505, %diff.check2503
  br i1 %or.cond3590, label %.lr.ph.i.i.i.i.i.i.i442.preheader3757, label %vector.ph2506

vector.ph2506:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i442.preheader
  %n.vec2508 = and i64 %i.tk, 4611686018427387900 ; 3 uses
  %i.tm = shl i64 %n.vec2508, 3                   ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tg, i64 %i.tm  ; 2 uses
  %i.to = getelementptr i8, ptr %.sroa.01677.17, i64 %i.tm
  br label %vector.body2509

vector.body2509:                                  ; preds = %vector.body2509, %vector.ph2506
  %index2510 = phi i64 [ 0, %vector.ph2506 ], [ %index.next2515, %vector.body2509 ] ; 2 uses
  %i.tp = shl i64 %index2510, 3                   ; 2 uses
  %next.gep2511 = getelementptr i8, ptr %i.tg, i64 %i.tp ; 2 uses
  %next.gep2512 = getelementptr i8, ptr %.sroa.01677.17, i64 %i.tp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.tq = getelementptr i8, ptr %next.gep2512, i64 16
  %wide.load2513 = load <2 x i64>, ptr %next.gep2512, align 8, !alias.scope !335, !noalias !332
  %wide.load2514 = load <2 x i64>, ptr %i.tq, align 8, !alias.scope !335, !noalias !332
  %i.tr = getelementptr i8, ptr %next.gep2511, i64 16
  store <2 x i64> %wide.load2513, ptr %next.gep2511, align 8, !alias.scope !332, !noalias !335
  store <2 x i64> %wide.load2514, ptr %i.tr, align 8, !alias.scope !332, !noalias !335
  %index.next2515 = add nuw i64 %index2510, 4     ; 2 uses
  %i.ts = icmp eq i64 %index.next2515, %n.vec2508
  br i1 %i.ts, label %middle.block2516, label %vector.body2509, !llvm.loop !337

middle.block2516:                                 ; preds = %vector.body2509
  %cmp.n2517 = icmp eq i64 %i.tk, %n.vec2508
  br i1 %cmp.n2517, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i449, label %.lr.ph.i.i.i.i.i.i.i442.preheader3757

.lr.ph.i.i.i.i.i.i.i442.preheader3757:            ; preds = %.lr.ph.i.i.i.i.i.i.i442.preheader, %middle.block2516
  %.012.i.i.i.i.i.i.i443.ph = phi ptr [ %i.tg, %.lr.ph.i.i.i.i.i.i.i442.preheader ], [ %i.tn, %middle.block2516 ]
  %.0911.i.i.i.i.i.i.i444.ph = phi ptr [ %.sroa.01677.17, %.lr.ph.i.i.i.i.i.i.i442.preheader ], [ %i.to, %middle.block2516 ]
  br label %.lr.ph.i.i.i.i.i.i.i442

.lr.ph.i.i.i.i.i.i.i442:                          ; preds = %.lr.ph.i.i.i.i.i.i.i442.preheader3757, %.lr.ph.i.i.i.i.i.i.i442
  %.012.i.i.i.i.i.i.i443 = phi ptr [ %i.tv, %.lr.ph.i.i.i.i.i.i.i442 ], [ %.012.i.i.i.i.i.i.i443.ph, %.lr.ph.i.i.i.i.i.i.i442.preheader3757 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i444 = phi ptr [ %i.tu, %.lr.ph.i.i.i.i.i.i.i442 ], [ %.0911.i.i.i.i.i.i.i444.ph, %.lr.ph.i.i.i.i.i.i.i442.preheader3757 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.tt = load i64, ptr %.0911.i.i.i.i.i.i.i444, align 8, !alias.scope !335, !noalias !332
  store i64 %i.tt, ptr %.012.i.i.i.i.i.i.i443, align 8, !alias.scope !332, !noalias !335
  %i.tu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i444, i64 8 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i443, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i445 = icmp eq ptr %i.tu, %.sroa.217.17
  br i1 %.not.i.i.i.i.i.i.i445, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i449, label %.lr.ph.i.i.i.i.i.i.i442, !llvm.loop !338

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i449: ; preds = %.lr.ph.i.i.i.i.i.i.i442, %middle.block2516, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i438
  %.0.lcssa.i.i.i.i.i.i.i447 = phi ptr [ %i.tg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i438 ], [ %i.tn, %middle.block2516 ], [ %i.tv, %.lr.ph.i.i.i.i.i.i.i442 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.17, i64 noundef %i.sy) #28
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.te
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit450

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit450: ; preds = %bb.aw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i449
  %.sroa.217.18 = phi ptr [ %i.tw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i449 ], [ %.sroa.217.17, %bb.aw ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i447.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i447, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i449 ], [ %.sroa.76.17, %bb.aw ] ; 4 uses
  %.sroa.01677.18 = phi ptr [ %i.tg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i449 ], [ %.sroa.01677.17, %bb.aw ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i447.pn2522 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i447.pn to i64 ; 2 uses
  %.sroa.76.18 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i447.pn, i64 8 ; 2 uses
  %i.tx = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.72, i32 noundef 1, i32 noundef 3) #25 ; 2 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %bb.az, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit451, !prof !5

bb.az:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit450
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit451

_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit451: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit450, %bb.az
  %i.tz = ptrtoint ptr %i.tx to i64               ; 2 uses
  %.not.i.i.i452 = icmp eq ptr %.sroa.76.18, %.sroa.217.18
  br i1 %.not.i.i.i452, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit451
  store i64 %i.tz, ptr %.sroa.76.18, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i447.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit465

bb.bb:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit451
  %i.ub = ptrtoint ptr %.sroa.217.18 to i64
  %i.uc = ptrtoint ptr %.sroa.01677.18 to i64     ; 3 uses
  %i.ud = sub i64 %i.ub, %i.uc                    ; 4 uses
  %i.ue = icmp eq i64 %i.ud, 9223372036854775800
  br i1 %i.ue, label %bb.bc, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i453

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i453: ; preds = %bb.bb
  %i.uf = ashr exact i64 %i.ud, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i454 = tail call i64 @llvm.umax.i64(i64 %i.uf, i64 1)
  %i.ug = add nsw i64 %.sroa.speculated.i.i.i.i.i454, %i.uf ; 2 uses
  %i.uh = icmp ult i64 %i.ug, %i.uf
  %i.ui = tail call i64 @llvm.umin.i64(i64 %i.ug, i64 1152921504606846975)
  %i.uj = select i1 %i.uh, i64 1152921504606846975, i64 %i.ui ; 3 uses
  %.not.i.i.i.i.i455 = icmp ne i64 %i.uj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i455)
  %i.uk = shl nuw nsw i64 %i.uj, 3
  %i.ul = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uk) #27 ; 8 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.ud
  store i64 %i.tz, ptr %i.um, align 8
  %.not10.i.i.i.i.i.i.i456 = icmp eq ptr %.sroa.01677.18, %.sroa.217.18
  br i1 %.not10.i.i.i.i.i.i.i456, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464, label %.lr.ph.i.i.i.i.i.i.i457.preheader

.lr.ph.i.i.i.i.i.i.i457.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i453
  %i.un = ptrtoaddr ptr %i.ul to i64
  %i.uo = sub i64 %.0.lcssa.i.i.i.i.i.i.i447.pn2522, %i.uc ; 2 uses
  %i.up = lshr i64 %i.uo, 3
  %i.uq = add nuw nsw i64 %i.up, 1                ; 2 uses
  %min.iters.check2524 = icmp ult i64 %i.uo, 56
  %i.ur = sub i64 %i.un, %i.uc
  %diff.check2521 = icmp ult i64 %i.ur, 32
  %or.cond3591 = or i1 %min.iters.check2524, %diff.check2521
  br i1 %or.cond3591, label %.lr.ph.i.i.i.i.i.i.i457.preheader3755, label %vector.ph2525

vector.ph2525:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i457.preheader
  %n.vec2527 = and i64 %i.uq, 4611686018427387900 ; 3 uses
  %i.us = shl i64 %n.vec2527, 3                   ; 2 uses
  %i.ut = getelementptr i8, ptr %i.ul, i64 %i.us  ; 2 uses
  %i.uu = getelementptr i8, ptr %.sroa.01677.18, i64 %i.us
  br label %vector.body2528

vector.body2528:                                  ; preds = %vector.body2528, %vector.ph2525
  %index2529 = phi i64 [ 0, %vector.ph2525 ], [ %index.next2534, %vector.body2528 ] ; 2 uses
  %i.uv = shl i64 %index2529, 3                   ; 2 uses
  %next.gep2530 = getelementptr i8, ptr %i.ul, i64 %i.uv ; 2 uses
  %next.gep2531 = getelementptr i8, ptr %.sroa.01677.18, i64 %i.uv ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.uw = getelementptr i8, ptr %next.gep2531, i64 16
  %wide.load2532 = load <2 x i64>, ptr %next.gep2531, align 8, !alias.scope !342, !noalias !339
  %wide.load2533 = load <2 x i64>, ptr %i.uw, align 8, !alias.scope !342, !noalias !339
  %i.ux = getelementptr i8, ptr %next.gep2530, i64 16
  store <2 x i64> %wide.load2532, ptr %next.gep2530, align 8, !alias.scope !339, !noalias !342
  store <2 x i64> %wide.load2533, ptr %i.ux, align 8, !alias.scope !339, !noalias !342
  %index.next2534 = add nuw i64 %index2529, 4     ; 2 uses
  %i.uy = icmp eq i64 %index.next2534, %n.vec2527
  br i1 %i.uy, label %middle.block2535, label %vector.body2528, !llvm.loop !344

middle.block2535:                                 ; preds = %vector.body2528
  %cmp.n2536 = icmp eq i64 %i.uq, %n.vec2527
  br i1 %cmp.n2536, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464, label %.lr.ph.i.i.i.i.i.i.i457.preheader3755

.lr.ph.i.i.i.i.i.i.i457.preheader3755:            ; preds = %.lr.ph.i.i.i.i.i.i.i457.preheader, %middle.block2535
  %.012.i.i.i.i.i.i.i458.ph = phi ptr [ %i.ul, %.lr.ph.i.i.i.i.i.i.i457.preheader ], [ %i.ut, %middle.block2535 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i459.ph = phi ptr [ %.sroa.01677.18, %.lr.ph.i.i.i.i.i.i.i457.preheader ], [ %i.uu, %middle.block2535 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i459.ph3797 = ptrtoint ptr %.0911.i.i.i.i.i.i.i459.ph to i64
  %i.uz = sub i64 %.0.lcssa.i.i.i.i.i.i.i447.pn2522, %.0911.i.i.i.i.i.i.i459.ph3797 ; 2 uses
  %i.va = lshr i64 %i.uz, 3
  %i.vb = add nuw nsw i64 %i.va, 1
  %xtraiter3798 = and i64 %i.vb, 7                ; 2 uses
  %lcmp.mod3799.not = icmp eq i64 %xtraiter3798, 0
  br i1 %lcmp.mod3799.not, label %.lr.ph.i.i.i.i.i.i.i457.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i457.prol

.lr.ph.i.i.i.i.i.i.i457.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i457.preheader3755, %.lr.ph.i.i.i.i.i.i.i457.prol
  %.012.i.i.i.i.i.i.i458.prol = phi ptr [ %i.ve, %.lr.ph.i.i.i.i.i.i.i457.prol ], [ %.012.i.i.i.i.i.i.i458.ph, %.lr.ph.i.i.i.i.i.i.i457.preheader3755 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i459.prol = phi ptr [ %i.vd, %.lr.ph.i.i.i.i.i.i.i457.prol ], [ %.0911.i.i.i.i.i.i.i459.ph, %.lr.ph.i.i.i.i.i.i.i457.preheader3755 ] ; 2 uses
  %prol.iter3800 = phi i64 [ %prol.iter3800.next, %.lr.ph.i.i.i.i.i.i.i457.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i457.preheader3755 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.vc = load i64, ptr %.0911.i.i.i.i.i.i.i459.prol, align 8, !alias.scope !342, !noalias !339
  store i64 %i.vc, ptr %.012.i.i.i.i.i.i.i458.prol, align 8, !alias.scope !339, !noalias !342
  %i.vd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459.prol, i64 8 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458.prol, i64 8 ; 3 uses
  %prol.iter3800.next = add i64 %prol.iter3800, 1 ; 2 uses
  %prol.iter3800.cmp.not = icmp eq i64 %prol.iter3800.next, %xtraiter3798
  br i1 %prol.iter3800.cmp.not, label %.lr.ph.i.i.i.i.i.i.i457.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i457.prol, !llvm.loop !345

.lr.ph.i.i.i.i.i.i.i457.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i457.prol, %.lr.ph.i.i.i.i.i.i.i457.preheader3755
  %.lcssa3756.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i457.preheader3755 ], [ %i.ve, %.lr.ph.i.i.i.i.i.i.i457.prol ]
  %.012.i.i.i.i.i.i.i458.unr = phi ptr [ %.012.i.i.i.i.i.i.i458.ph, %.lr.ph.i.i.i.i.i.i.i457.preheader3755 ], [ %i.ve, %.lr.ph.i.i.i.i.i.i.i457.prol ]
  %.0911.i.i.i.i.i.i.i459.unr = phi ptr [ %.0911.i.i.i.i.i.i.i459.ph, %.lr.ph.i.i.i.i.i.i.i457.preheader3755 ], [ %i.vd, %.lr.ph.i.i.i.i.i.i.i457.prol ]
  %i.vf = icmp ult i64 %i.uz, 56
  br i1 %i.vf, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464, label %.lr.ph.i.i.i.i.i.i.i457

.lr.ph.i.i.i.i.i.i.i457:                          ; preds = %.lr.ph.i.i.i.i.i.i.i457.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i457
  %.012.i.i.i.i.i.i.i458 = phi ptr [ %i.wd, %.lr.ph.i.i.i.i.i.i.i457 ], [ %.012.i.i.i.i.i.i.i458.unr, %.lr.ph.i.i.i.i.i.i.i457.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i459 = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i.i.i457 ], [ %.0911.i.i.i.i.i.i.i459.unr, %.lr.ph.i.i.i.i.i.i.i457.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.vg = load i64, ptr %.0911.i.i.i.i.i.i.i459, align 8, !alias.scope !342, !noalias !339
  store i64 %i.vg, ptr %.012.i.i.i.i.i.i.i458, align 8, !alias.scope !339, !noalias !342
  %i.vh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459, i64 8
  %i.vi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.vj = load i64, ptr %i.vh, align 8, !alias.scope !348, !noalias !346
  store i64 %i.vj, ptr %i.vi, align 8, !alias.scope !346, !noalias !348
  %i.vk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459, i64 16
  %i.vl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.vm = load i64, ptr %i.vk, align 8, !alias.scope !352, !noalias !350
  store i64 %i.vm, ptr %i.vl, align 8, !alias.scope !350, !noalias !352
  %i.vn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459, i64 24
  %i.vo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.vp = load i64, ptr %i.vn, align 8, !alias.scope !356, !noalias !354
  store i64 %i.vp, ptr %i.vo, align 8, !alias.scope !354, !noalias !356
  %i.vq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459, i64 32
  %i.vr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.vs = load i64, ptr %i.vq, align 8, !alias.scope !360, !noalias !358
  store i64 %i.vs, ptr %i.vr, align 8, !alias.scope !358, !noalias !360
  %i.vt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459, i64 40
  %i.vu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.vv = load i64, ptr %i.vt, align 8, !alias.scope !364, !noalias !362
  store i64 %i.vv, ptr %i.vu, align 8, !alias.scope !362, !noalias !364
  %i.vw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459, i64 48
  %i.vx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.vy = load i64, ptr %i.vw, align 8, !alias.scope !368, !noalias !366
  store i64 %i.vy, ptr %i.vx, align 8, !alias.scope !366, !noalias !368
  %i.vz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459, i64 56 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.wb = load i64, ptr %i.vz, align 8, !alias.scope !372, !noalias !370
  store i64 %i.wb, ptr %i.wa, align 8, !alias.scope !370, !noalias !372
  %i.wc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i459, i64 64
  %i.wd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i458, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i460.7 = icmp eq ptr %i.vz, %.0.lcssa.i.i.i.i.i.i.i447.pn
  br i1 %.not.i.i.i.i.i.i.i460.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464, label %.lr.ph.i.i.i.i.i.i.i457, !llvm.loop !374

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464: ; preds = %.lr.ph.i.i.i.i.i.i.i457.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i457, %middle.block2535, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i453
  %.0.lcssa.i.i.i.i.i.i.i462 = phi ptr [ %i.ul, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i453 ], [ %i.ut, %middle.block2535 ], [ %.lcssa3756.unr, %.lr.ph.i.i.i.i.i.i.i457.prol.loopexit ], [ %i.wd, %.lr.ph.i.i.i.i.i.i.i457 ]
  %i.we = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i462, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.18, i64 noundef %i.ud) #28
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %i.uj
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit465

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit465: ; preds = %bb.ba, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464
  %.sroa.217.19 = phi ptr [ %i.wf, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464 ], [ %.sroa.217.18, %bb.ba ] ; 5 uses
  %.sroa.76.19 = phi ptr [ %i.we, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464 ], [ %i.ua, %bb.ba ] ; 3 uses
  %.sroa.01677.19 = phi ptr [ %i.ul, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i464 ], [ %.sroa.01677.18, %bb.ba ] ; 7 uses
  %i.wg = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.73, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, null
  br i1 %i.wh, label %bb.bd, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit466, !prof !5

bb.bd:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit465
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit466

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit466: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit465, %bb.bd
  %i.wi = ptrtoint ptr %i.wg to i64               ; 2 uses
  %.not.i.i.i467 = icmp eq ptr %.sroa.76.19, %.sroa.217.19
  br i1 %.not.i.i.i467, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit466
  store i64 %i.wi, ptr %.sroa.76.19, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit480

bb.bf:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit466
  %i.wj = ptrtoint ptr %.sroa.217.19 to i64       ; 2 uses
  %i.wk = ptrtoint ptr %.sroa.01677.19 to i64     ; 3 uses
  %i.wl = sub i64 %i.wj, %i.wk                    ; 4 uses
  %i.wm = icmp eq i64 %i.wl, 9223372036854775800
  br i1 %i.wm, label %bb.bg, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i468

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i468: ; preds = %bb.bf
  %i.wn = ashr exact i64 %i.wl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i469 = tail call i64 @llvm.umax.i64(i64 %i.wn, i64 1)
  %i.wo = add nsw i64 %.sroa.speculated.i.i.i.i.i469, %i.wn ; 2 uses
  %i.wp = icmp ult i64 %i.wo, %i.wn
  %i.wq = tail call i64 @llvm.umin.i64(i64 %i.wo, i64 1152921504606846975)
  %i.wr = select i1 %i.wp, i64 1152921504606846975, i64 %i.wq ; 3 uses
  %.not.i.i.i.i.i470 = icmp ne i64 %i.wr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i470)
  %i.ws = shl nuw nsw i64 %i.wr, 3
  %i.wt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ws) #27 ; 8 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wl
  store i64 %i.wi, ptr %i.wu, align 8
  %.not10.i.i.i.i.i.i.i471 = icmp eq ptr %.sroa.01677.19, %.sroa.217.19
  br i1 %.not10.i.i.i.i.i.i.i471, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i479, label %.lr.ph.i.i.i.i.i.i.i472.preheader

.lr.ph.i.i.i.i.i.i.i472.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i468
  %i.wv = ptrtoaddr ptr %i.wt to i64
  %14 = sub i64 %i.wj, %i.wk
  %15 = add i64 %14, -8                           ; 2 uses
  %i.ww = lshr i64 %15, 3
  %i.wx = add nuw nsw i64 %i.ww, 1                ; 2 uses
  %min.iters.check2542 = icmp ult i64 %15, 56
  %i.wy = sub i64 %i.wv, %i.wk
  %diff.check2540 = icmp ult i64 %i.wy, 32
  %or.cond3592 = or i1 %min.iters.check2542, %diff.check2540
  br i1 %or.cond3592, label %.lr.ph.i.i.i.i.i.i.i472.preheader3753, label %vector.ph2543

vector.ph2543:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i472.preheader
  %n.vec2545 = and i64 %i.wx, 4611686018427387900 ; 3 uses
  %i.wz = shl i64 %n.vec2545, 3                   ; 2 uses
  %i.xa = getelementptr i8, ptr %i.wt, i64 %i.wz  ; 2 uses
  %i.xb = getelementptr i8, ptr %.sroa.01677.19, i64 %i.wz
  br label %vector.body2546

vector.body2546:                                  ; preds = %vector.body2546, %vector.ph2543
  %index2547 = phi i64 [ 0, %vector.ph2543 ], [ %index.next2552, %vector.body2546 ] ; 2 uses
  %i.xc = shl i64 %index2547, 3                   ; 2 uses
  %next.gep2548 = getelementptr i8, ptr %i.wt, i64 %i.xc ; 2 uses
  %next.gep2549 = getelementptr i8, ptr %.sroa.01677.19, i64 %i.xc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.xd = getelementptr i8, ptr %next.gep2549, i64 16
  %wide.load2550 = load <2 x i64>, ptr %next.gep2549, align 8, !alias.scope !378, !noalias !375
  %wide.load2551 = load <2 x i64>, ptr %i.xd, align 8, !alias.scope !378, !noalias !375
  %i.xe = getelementptr i8, ptr %next.gep2548, i64 16
  store <2 x i64> %wide.load2550, ptr %next.gep2548, align 8, !alias.scope !375, !noalias !378
  store <2 x i64> %wide.load2551, ptr %i.xe, align 8, !alias.scope !375, !noalias !378
  %index.next2552 = add nuw i64 %index2547, 4     ; 2 uses
  %i.xf = icmp eq i64 %index.next2552, %n.vec2545
  br i1 %i.xf, label %middle.block2553, label %vector.body2546, !llvm.loop !380

middle.block2553:                                 ; preds = %vector.body2546
  %cmp.n2554 = icmp eq i64 %i.wx, %n.vec2545
  br i1 %cmp.n2554, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i479, label %.lr.ph.i.i.i.i.i.i.i472.preheader3753

.lr.ph.i.i.i.i.i.i.i472.preheader3753:            ; preds = %.lr.ph.i.i.i.i.i.i.i472.preheader, %middle.block2553
  %.012.i.i.i.i.i.i.i473.ph = phi ptr [ %i.wt, %.lr.ph.i.i.i.i.i.i.i472.preheader ], [ %i.xa, %middle.block2553 ]
  %.0911.i.i.i.i.i.i.i474.ph = phi ptr [ %.sroa.01677.19, %.lr.ph.i.i.i.i.i.i.i472.preheader ], [ %i.xb, %middle.block2553 ]
  br label %.lr.ph.i.i.i.i.i.i.i472

.lr.ph.i.i.i.i.i.i.i472:                          ; preds = %.lr.ph.i.i.i.i.i.i.i472.preheader3753, %.lr.ph.i.i.i.i.i.i.i472
  %.012.i.i.i.i.i.i.i473 = phi ptr [ %i.xi, %.lr.ph.i.i.i.i.i.i.i472 ], [ %.012.i.i.i.i.i.i.i473.ph, %.lr.ph.i.i.i.i.i.i.i472.preheader3753 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i474 = phi ptr [ %i.xh, %.lr.ph.i.i.i.i.i.i.i472 ], [ %.0911.i.i.i.i.i.i.i474.ph, %.lr.ph.i.i.i.i.i.i.i472.preheader3753 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.xg = load i64, ptr %.0911.i.i.i.i.i.i.i474, align 8, !alias.scope !378, !noalias !375
  store i64 %i.xg, ptr %.012.i.i.i.i.i.i.i473, align 8, !alias.scope !375, !noalias !378
  %i.xh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i474, i64 8 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i473, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i475 = icmp eq ptr %i.xh, %.sroa.217.19
  br i1 %.not.i.i.i.i.i.i.i475, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i479, label %.lr.ph.i.i.i.i.i.i.i472, !llvm.loop !381

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i479: ; preds = %.lr.ph.i.i.i.i.i.i.i472, %middle.block2553, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i468
  %.0.lcssa.i.i.i.i.i.i.i477 = phi ptr [ %i.wt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i468 ], [ %i.xa, %middle.block2553 ], [ %i.xi, %.lr.ph.i.i.i.i.i.i.i472 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.19, i64 noundef %i.wl) #28
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %i.wr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit480

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit480: ; preds = %bb.be, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i479
  %.sroa.217.20 = phi ptr [ %i.xj, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i479 ], [ %.sroa.217.19, %bb.be ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i477.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i477, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i479 ], [ %.sroa.76.19, %bb.be ] ; 4 uses
  %.sroa.01677.20 = phi ptr [ %i.wt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i479 ], [ %.sroa.01677.19, %bb.be ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i477.pn2559 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i477.pn to i64 ; 2 uses
  %.sroa.76.20 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i477.pn, i64 8 ; 2 uses
  %i.xk = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.74, i32 noundef 1, i32 noundef 10) #25 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, null
  br i1 %i.xl, label %bb.bh, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.bh:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit480
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit480, %bb.bh
  %i.xm = ptrtoint ptr %i.xk to i64               ; 2 uses
  %.not.i.i.i481 = icmp eq ptr %.sroa.76.20, %.sroa.217.20
  br i1 %.not.i.i.i481, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  store i64 %i.xm, ptr %.sroa.76.20, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i477.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit494

bb.bj:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.xo = ptrtoint ptr %.sroa.217.20 to i64
  %i.xp = ptrtoint ptr %.sroa.01677.20 to i64     ; 3 uses
  %i.xq = sub i64 %i.xo, %i.xp                    ; 4 uses
  %i.xr = icmp eq i64 %i.xq, 9223372036854775800
  br i1 %i.xr, label %bb.bk, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i482

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i482: ; preds = %bb.bj
  %i.xs = ashr exact i64 %i.xq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i483 = tail call i64 @llvm.umax.i64(i64 %i.xs, i64 1)
  %i.xt = add nsw i64 %.sroa.speculated.i.i.i.i.i483, %i.xs ; 2 uses
  %i.xu = icmp ult i64 %i.xt, %i.xs
  %i.xv = tail call i64 @llvm.umin.i64(i64 %i.xt, i64 1152921504606846975)
  %i.xw = select i1 %i.xu, i64 1152921504606846975, i64 %i.xv ; 3 uses
  %.not.i.i.i.i.i484 = icmp ne i64 %i.xw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i484)
  %i.xx = shl nuw nsw i64 %i.xw, 3
  %i.xy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xx) #27 ; 8 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.xq
  store i64 %i.xm, ptr %i.xz, align 8
  %.not10.i.i.i.i.i.i.i485 = icmp eq ptr %.sroa.01677.20, %.sroa.217.20
  br i1 %.not10.i.i.i.i.i.i.i485, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i486.preheader

.lr.ph.i.i.i.i.i.i.i486.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i482
  %i.ya = ptrtoaddr ptr %i.xy to i64
  %i.yb = sub i64 %.0.lcssa.i.i.i.i.i.i.i477.pn2559, %i.xp ; 2 uses
  %i.yc = lshr i64 %i.yb, 3
  %i.yd = add nuw nsw i64 %i.yc, 1                ; 2 uses
  %min.iters.check2561 = icmp ult i64 %i.yb, 56
  %i.ye = sub i64 %i.ya, %i.xp
  %diff.check2558 = icmp ult i64 %i.ye, 32
  %or.cond3593 = or i1 %min.iters.check2561, %diff.check2558
  br i1 %or.cond3593, label %.lr.ph.i.i.i.i.i.i.i486.preheader3751, label %vector.ph2562

vector.ph2562:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i486.preheader
  %n.vec2564 = and i64 %i.yd, 4611686018427387900 ; 3 uses
  %i.yf = shl i64 %n.vec2564, 3                   ; 2 uses
  %i.yg = getelementptr i8, ptr %i.xy, i64 %i.yf  ; 2 uses
  %i.yh = getelementptr i8, ptr %.sroa.01677.20, i64 %i.yf
  br label %vector.body2565

vector.body2565:                                  ; preds = %vector.body2565, %vector.ph2562
  %index2566 = phi i64 [ 0, %vector.ph2562 ], [ %index.next2571, %vector.body2565 ] ; 2 uses
  %i.yi = shl i64 %index2566, 3                   ; 2 uses
  %next.gep2567 = getelementptr i8, ptr %i.xy, i64 %i.yi ; 2 uses
  %next.gep2568 = getelementptr i8, ptr %.sroa.01677.20, i64 %i.yi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.yj = getelementptr i8, ptr %next.gep2568, i64 16
  %wide.load2569 = load <2 x i64>, ptr %next.gep2568, align 8, !alias.scope !385, !noalias !382
  %wide.load2570 = load <2 x i64>, ptr %i.yj, align 8, !alias.scope !385, !noalias !382
  %i.yk = getelementptr i8, ptr %next.gep2567, i64 16
  store <2 x i64> %wide.load2569, ptr %next.gep2567, align 8, !alias.scope !382, !noalias !385
  store <2 x i64> %wide.load2570, ptr %i.yk, align 8, !alias.scope !382, !noalias !385
  %index.next2571 = add nuw i64 %index2566, 4     ; 2 uses
  %i.yl = icmp eq i64 %index.next2571, %n.vec2564
  br i1 %i.yl, label %middle.block2572, label %vector.body2565, !llvm.loop !387

middle.block2572:                                 ; preds = %vector.body2565
  %cmp.n2573 = icmp eq i64 %i.yd, %n.vec2564
  br i1 %cmp.n2573, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i486.preheader3751

.lr.ph.i.i.i.i.i.i.i486.preheader3751:            ; preds = %.lr.ph.i.i.i.i.i.i.i486.preheader, %middle.block2572
  %.012.i.i.i.i.i.i.i487.ph = phi ptr [ %i.xy, %.lr.ph.i.i.i.i.i.i.i486.preheader ], [ %i.yg, %middle.block2572 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i488.ph = phi ptr [ %.sroa.01677.20, %.lr.ph.i.i.i.i.i.i.i486.preheader ], [ %i.yh, %middle.block2572 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i488.ph3801 = ptrtoint ptr %.0911.i.i.i.i.i.i.i488.ph to i64
  %i.ym = sub i64 %.0.lcssa.i.i.i.i.i.i.i477.pn2559, %.0911.i.i.i.i.i.i.i488.ph3801 ; 2 uses
  %i.yn = lshr i64 %i.ym, 3
  %i.yo = add nuw nsw i64 %i.yn, 1
  %xtraiter3802 = and i64 %i.yo, 7                ; 2 uses
  %lcmp.mod3803.not = icmp eq i64 %xtraiter3802, 0
  br i1 %lcmp.mod3803.not, label %.lr.ph.i.i.i.i.i.i.i486.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i486.prol

.lr.ph.i.i.i.i.i.i.i486.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i486.preheader3751, %.lr.ph.i.i.i.i.i.i.i486.prol
  %.012.i.i.i.i.i.i.i487.prol = phi ptr [ %i.yr, %.lr.ph.i.i.i.i.i.i.i486.prol ], [ %.012.i.i.i.i.i.i.i487.ph, %.lr.ph.i.i.i.i.i.i.i486.preheader3751 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i488.prol = phi ptr [ %i.yq, %.lr.ph.i.i.i.i.i.i.i486.prol ], [ %.0911.i.i.i.i.i.i.i488.ph, %.lr.ph.i.i.i.i.i.i.i486.preheader3751 ] ; 2 uses
  %prol.iter3804 = phi i64 [ %prol.iter3804.next, %.lr.ph.i.i.i.i.i.i.i486.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i486.preheader3751 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.yp = load i64, ptr %.0911.i.i.i.i.i.i.i488.prol, align 8, !alias.scope !385, !noalias !382
  store i64 %i.yp, ptr %.012.i.i.i.i.i.i.i487.prol, align 8, !alias.scope !382, !noalias !385
  %i.yq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488.prol, i64 8 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487.prol, i64 8 ; 3 uses
  %prol.iter3804.next = add i64 %prol.iter3804, 1 ; 2 uses
  %prol.iter3804.cmp.not = icmp eq i64 %prol.iter3804.next, %xtraiter3802
  br i1 %prol.iter3804.cmp.not, label %.lr.ph.i.i.i.i.i.i.i486.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i486.prol, !llvm.loop !388

.lr.ph.i.i.i.i.i.i.i486.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i486.prol, %.lr.ph.i.i.i.i.i.i.i486.preheader3751
  %.lcssa3752.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i486.preheader3751 ], [ %i.yr, %.lr.ph.i.i.i.i.i.i.i486.prol ]
  %.012.i.i.i.i.i.i.i487.unr = phi ptr [ %.012.i.i.i.i.i.i.i487.ph, %.lr.ph.i.i.i.i.i.i.i486.preheader3751 ], [ %i.yr, %.lr.ph.i.i.i.i.i.i.i486.prol ]
  %.0911.i.i.i.i.i.i.i488.unr = phi ptr [ %.0911.i.i.i.i.i.i.i488.ph, %.lr.ph.i.i.i.i.i.i.i486.preheader3751 ], [ %i.yq, %.lr.ph.i.i.i.i.i.i.i486.prol ]
  %i.ys = icmp ult i64 %i.ym, 56
  br i1 %i.ys, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i486

.lr.ph.i.i.i.i.i.i.i486:                          ; preds = %.lr.ph.i.i.i.i.i.i.i486.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i486
  %.012.i.i.i.i.i.i.i487 = phi ptr [ %i.zq, %.lr.ph.i.i.i.i.i.i.i486 ], [ %.012.i.i.i.i.i.i.i487.unr, %.lr.ph.i.i.i.i.i.i.i486.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i488 = phi ptr [ %i.zp, %.lr.ph.i.i.i.i.i.i.i486 ], [ %.0911.i.i.i.i.i.i.i488.unr, %.lr.ph.i.i.i.i.i.i.i486.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.yt = load i64, ptr %.0911.i.i.i.i.i.i.i488, align 8, !alias.scope !385, !noalias !382
  store i64 %i.yt, ptr %.012.i.i.i.i.i.i.i487, align 8, !alias.scope !382, !noalias !385
  %i.yu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488, i64 8
  %i.yv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.yw = load i64, ptr %i.yu, align 8, !alias.scope !391, !noalias !389
  store i64 %i.yw, ptr %i.yv, align 8, !alias.scope !389, !noalias !391
  %i.yx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488, i64 16
  %i.yy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.yz = load i64, ptr %i.yx, align 8, !alias.scope !395, !noalias !393
  store i64 %i.yz, ptr %i.yy, align 8, !alias.scope !393, !noalias !395
  %i.za = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488, i64 24
  %i.zb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.zc = load i64, ptr %i.za, align 8, !alias.scope !399, !noalias !397
  store i64 %i.zc, ptr %i.zb, align 8, !alias.scope !397, !noalias !399
  %i.zd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488, i64 32
  %i.ze = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.zf = load i64, ptr %i.zd, align 8, !alias.scope !403, !noalias !401
  store i64 %i.zf, ptr %i.ze, align 8, !alias.scope !401, !noalias !403
  %i.zg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488, i64 40
  %i.zh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.zi = load i64, ptr %i.zg, align 8, !alias.scope !407, !noalias !405
  store i64 %i.zi, ptr %i.zh, align 8, !alias.scope !405, !noalias !407
  %i.zj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488, i64 48
  %i.zk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.zl = load i64, ptr %i.zj, align 8, !alias.scope !411, !noalias !409
  store i64 %i.zl, ptr %i.zk, align 8, !alias.scope !409, !noalias !411
  %i.zm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488, i64 56 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.zo = load i64, ptr %i.zm, align 8, !alias.scope !415, !noalias !413
  store i64 %i.zo, ptr %i.zn, align 8, !alias.scope !413, !noalias !415
  %i.zp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i488, i64 64
  %i.zq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i487, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i489.7 = icmp eq ptr %i.zm, %.0.lcssa.i.i.i.i.i.i.i477.pn
  br i1 %.not.i.i.i.i.i.i.i489.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i486, !llvm.loop !417

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493: ; preds = %.lr.ph.i.i.i.i.i.i.i486.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i486, %middle.block2572, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i482
  %.0.lcssa.i.i.i.i.i.i.i491 = phi ptr [ %i.xy, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i482 ], [ %i.yg, %middle.block2572 ], [ %.lcssa3752.unr, %.lr.ph.i.i.i.i.i.i.i486.prol.loopexit ], [ %i.zq, %.lr.ph.i.i.i.i.i.i.i486 ]
  %i.zr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i491, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.20, i64 noundef %i.xq) #28
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %i.xw
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit494

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit494: ; preds = %bb.bi, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493
  %.sroa.217.21 = phi ptr [ %i.zs, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493 ], [ %.sroa.217.20, %bb.bi ] ; 5 uses
  %.sroa.76.21 = phi ptr [ %i.zr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493 ], [ %i.xn, %bb.bi ] ; 3 uses
  %.sroa.01677.21 = phi ptr [ %i.xy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i493 ], [ %.sroa.01677.20, %bb.bi ] ; 7 uses
  %i.zt = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.zu = icmp eq ptr %i.zt, null
  br i1 %i.zu, label %bb.bl, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit495, !prof !5

bb.bl:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit494
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit495

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit495: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit494, %bb.bl
  %i.zv = ptrtoint ptr %i.zt to i64               ; 2 uses
  %.not.i.i.i496 = icmp eq ptr %.sroa.76.21, %.sroa.217.21
  br i1 %.not.i.i.i496, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit495
  store i64 %i.zv, ptr %.sroa.76.21, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit509

bb.bn:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit495
  %i.zw = ptrtoint ptr %.sroa.217.21 to i64       ; 2 uses
  %i.zx = ptrtoint ptr %.sroa.01677.21 to i64     ; 3 uses
  %i.zy = sub i64 %i.zw, %i.zx                    ; 4 uses
  %i.zz = icmp eq i64 %i.zy, 9223372036854775800
  br i1 %i.zz, label %bb.bo, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i497

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i497: ; preds = %bb.bn
  %i.aaa = ashr exact i64 %i.zy, 3                ; 3 uses
  %.sroa.speculated.i.i.i.i.i498 = tail call i64 @llvm.umax.i64(i64 %i.aaa, i64 1)
  %i.aab = add nsw i64 %.sroa.speculated.i.i.i.i.i498, %i.aaa ; 2 uses
  %i.aac = icmp ult i64 %i.aab, %i.aaa
  %i.aad = tail call i64 @llvm.umin.i64(i64 %i.aab, i64 1152921504606846975)
  %i.aae = select i1 %i.aac, i64 1152921504606846975, i64 %i.aad ; 3 uses
  %.not.i.i.i.i.i499 = icmp ne i64 %i.aae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i499)
  %i.aaf = shl nuw nsw i64 %i.aae, 3
  %i.aag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaf) #27 ; 8 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.zy
  store i64 %i.zv, ptr %i.aah, align 8
  %.not10.i.i.i.i.i.i.i500 = icmp eq ptr %.sroa.01677.21, %.sroa.217.21
  br i1 %.not10.i.i.i.i.i.i.i500, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i508, label %.lr.ph.i.i.i.i.i.i.i501.preheader

.lr.ph.i.i.i.i.i.i.i501.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i497
  %i.aai = ptrtoaddr ptr %i.aag to i64
  %16 = sub i64 %i.zw, %i.zx
  %17 = add i64 %16, -8                           ; 2 uses
  %i.aaj = lshr i64 %17, 3
  %i.aak = add nuw nsw i64 %i.aaj, 1              ; 2 uses
  %min.iters.check2579 = icmp ult i64 %17, 56
  %i.aal = sub i64 %i.aai, %i.zx
  %diff.check2577 = icmp ult i64 %i.aal, 32
  %or.cond3594 = or i1 %min.iters.check2579, %diff.check2577
  br i1 %or.cond3594, label %.lr.ph.i.i.i.i.i.i.i501.preheader3749, label %vector.ph2580

vector.ph2580:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i501.preheader
  %n.vec2582 = and i64 %i.aak, 4611686018427387900 ; 3 uses
  %i.aam = shl i64 %n.vec2582, 3                  ; 2 uses
  %i.aan = getelementptr i8, ptr %i.aag, i64 %i.aam ; 2 uses
  %i.aao = getelementptr i8, ptr %.sroa.01677.21, i64 %i.aam
  br label %vector.body2583

vector.body2583:                                  ; preds = %vector.body2583, %vector.ph2580
  %index2584 = phi i64 [ 0, %vector.ph2580 ], [ %index.next2589, %vector.body2583 ] ; 2 uses
  %i.aap = shl i64 %index2584, 3                  ; 2 uses
  %next.gep2585 = getelementptr i8, ptr %i.aag, i64 %i.aap ; 2 uses
  %next.gep2586 = getelementptr i8, ptr %.sroa.01677.21, i64 %i.aap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.aaq = getelementptr i8, ptr %next.gep2586, i64 16
  %wide.load2587 = load <2 x i64>, ptr %next.gep2586, align 8, !alias.scope !421, !noalias !418
  %wide.load2588 = load <2 x i64>, ptr %i.aaq, align 8, !alias.scope !421, !noalias !418
  %i.aar = getelementptr i8, ptr %next.gep2585, i64 16
  store <2 x i64> %wide.load2587, ptr %next.gep2585, align 8, !alias.scope !418, !noalias !421
  store <2 x i64> %wide.load2588, ptr %i.aar, align 8, !alias.scope !418, !noalias !421
  %index.next2589 = add nuw i64 %index2584, 4     ; 2 uses
  %i.aas = icmp eq i64 %index.next2589, %n.vec2582
  br i1 %i.aas, label %middle.block2590, label %vector.body2583, !llvm.loop !423

middle.block2590:                                 ; preds = %vector.body2583
  %cmp.n2591 = icmp eq i64 %i.aak, %n.vec2582
  br i1 %cmp.n2591, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i508, label %.lr.ph.i.i.i.i.i.i.i501.preheader3749

.lr.ph.i.i.i.i.i.i.i501.preheader3749:            ; preds = %.lr.ph.i.i.i.i.i.i.i501.preheader, %middle.block2590
  %.012.i.i.i.i.i.i.i502.ph = phi ptr [ %i.aag, %.lr.ph.i.i.i.i.i.i.i501.preheader ], [ %i.aan, %middle.block2590 ]
  %.0911.i.i.i.i.i.i.i503.ph = phi ptr [ %.sroa.01677.21, %.lr.ph.i.i.i.i.i.i.i501.preheader ], [ %i.aao, %middle.block2590 ]
  br label %.lr.ph.i.i.i.i.i.i.i501

.lr.ph.i.i.i.i.i.i.i501:                          ; preds = %.lr.ph.i.i.i.i.i.i.i501.preheader3749, %.lr.ph.i.i.i.i.i.i.i501
  %.012.i.i.i.i.i.i.i502 = phi ptr [ %i.aav, %.lr.ph.i.i.i.i.i.i.i501 ], [ %.012.i.i.i.i.i.i.i502.ph, %.lr.ph.i.i.i.i.i.i.i501.preheader3749 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i503 = phi ptr [ %i.aau, %.lr.ph.i.i.i.i.i.i.i501 ], [ %.0911.i.i.i.i.i.i.i503.ph, %.lr.ph.i.i.i.i.i.i.i501.preheader3749 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.aat = load i64, ptr %.0911.i.i.i.i.i.i.i503, align 8, !alias.scope !421, !noalias !418
  store i64 %i.aat, ptr %.012.i.i.i.i.i.i.i502, align 8, !alias.scope !418, !noalias !421
  %i.aau = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i503, i64 8 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i502, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i504 = icmp eq ptr %i.aau, %.sroa.217.21
  br i1 %.not.i.i.i.i.i.i.i504, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i508, label %.lr.ph.i.i.i.i.i.i.i501, !llvm.loop !424

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i508: ; preds = %.lr.ph.i.i.i.i.i.i.i501, %middle.block2590, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i497
  %.0.lcssa.i.i.i.i.i.i.i506 = phi ptr [ %i.aag, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i497 ], [ %i.aan, %middle.block2590 ], [ %i.aav, %.lr.ph.i.i.i.i.i.i.i501 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.21, i64 noundef %i.zy) #28
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %i.aae
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit509

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit509: ; preds = %bb.bm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i508
  %.sroa.217.22 = phi ptr [ %i.aaw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i508 ], [ %.sroa.217.21, %bb.bm ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i506.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i506, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i508 ], [ %.sroa.76.21, %bb.bm ] ; 4 uses
  %.sroa.01677.22 = phi ptr [ %i.aag, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i508 ], [ %.sroa.01677.21, %bb.bm ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i506.pn2596 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i506.pn to i64 ; 2 uses
  %.sroa.76.22 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i506.pn, i64 8 ; 2 uses
  %i.aax = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.aay = icmp eq ptr %i.aax, null
  br i1 %i.aay, label %bb.bp, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit510, !prof !5

bb.bp:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit509
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit510

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit510: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit509, %bb.bp
  %i.aaz = ptrtoint ptr %i.aax to i64             ; 2 uses
  %.not.i.i.i511 = icmp eq ptr %.sroa.76.22, %.sroa.217.22
  br i1 %.not.i.i.i511, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit510
  store i64 %i.aaz, ptr %.sroa.76.22, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i506.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit524

bb.br:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit510
  %i.abb = ptrtoint ptr %.sroa.217.22 to i64
  %i.abc = ptrtoint ptr %.sroa.01677.22 to i64    ; 3 uses
  %i.abd = sub i64 %i.abb, %i.abc                 ; 4 uses
  %i.abe = icmp eq i64 %i.abd, 9223372036854775800
  br i1 %i.abe, label %bb.bs, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i512

bb.bs:                                            ; preds = %bb.br
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i512: ; preds = %bb.br
  %i.abf = ashr exact i64 %i.abd, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i513 = tail call i64 @llvm.umax.i64(i64 %i.abf, i64 1)
  %i.abg = add nsw i64 %.sroa.speculated.i.i.i.i.i513, %i.abf ; 2 uses
  %i.abh = icmp ult i64 %i.abg, %i.abf
  %i.abi = tail call i64 @llvm.umin.i64(i64 %i.abg, i64 1152921504606846975)
  %i.abj = select i1 %i.abh, i64 1152921504606846975, i64 %i.abi ; 3 uses
  %.not.i.i.i.i.i514 = icmp ne i64 %i.abj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i514)
  %i.abk = shl nuw nsw i64 %i.abj, 3
  %i.abl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abk) #27 ; 8 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.abd
  store i64 %i.aaz, ptr %i.abm, align 8
  %.not10.i.i.i.i.i.i.i515 = icmp eq ptr %.sroa.01677.22, %.sroa.217.22
  br i1 %.not10.i.i.i.i.i.i.i515, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523, label %.lr.ph.i.i.i.i.i.i.i516.preheader

.lr.ph.i.i.i.i.i.i.i516.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i512
  %i.abn = ptrtoaddr ptr %i.abl to i64
  %i.abo = sub i64 %.0.lcssa.i.i.i.i.i.i.i506.pn2596, %i.abc ; 2 uses
  %i.abp = lshr i64 %i.abo, 3
  %i.abq = add nuw nsw i64 %i.abp, 1              ; 2 uses
  %min.iters.check2598 = icmp ult i64 %i.abo, 56
  %i.abr = sub i64 %i.abn, %i.abc
  %diff.check2595 = icmp ult i64 %i.abr, 32
  %or.cond3595 = or i1 %min.iters.check2598, %diff.check2595
  br i1 %or.cond3595, label %.lr.ph.i.i.i.i.i.i.i516.preheader3747, label %vector.ph2599

vector.ph2599:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i516.preheader
  %n.vec2601 = and i64 %i.abq, 4611686018427387900 ; 3 uses
  %i.abs = shl i64 %n.vec2601, 3                  ; 2 uses
  %i.abt = getelementptr i8, ptr %i.abl, i64 %i.abs ; 2 uses
  %i.abu = getelementptr i8, ptr %.sroa.01677.22, i64 %i.abs
  br label %vector.body2602

vector.body2602:                                  ; preds = %vector.body2602, %vector.ph2599
  %index2603 = phi i64 [ 0, %vector.ph2599 ], [ %index.next2608, %vector.body2602 ] ; 2 uses
  %i.abv = shl i64 %index2603, 3                  ; 2 uses
  %next.gep2604 = getelementptr i8, ptr %i.abl, i64 %i.abv ; 2 uses
  %next.gep2605 = getelementptr i8, ptr %.sroa.01677.22, i64 %i.abv ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.abw = getelementptr i8, ptr %next.gep2605, i64 16
  %wide.load2606 = load <2 x i64>, ptr %next.gep2605, align 8, !alias.scope !428, !noalias !425
  %wide.load2607 = load <2 x i64>, ptr %i.abw, align 8, !alias.scope !428, !noalias !425
  %i.abx = getelementptr i8, ptr %next.gep2604, i64 16
  store <2 x i64> %wide.load2606, ptr %next.gep2604, align 8, !alias.scope !425, !noalias !428
  store <2 x i64> %wide.load2607, ptr %i.abx, align 8, !alias.scope !425, !noalias !428
  %index.next2608 = add nuw i64 %index2603, 4     ; 2 uses
  %i.aby = icmp eq i64 %index.next2608, %n.vec2601
  br i1 %i.aby, label %middle.block2609, label %vector.body2602, !llvm.loop !430

middle.block2609:                                 ; preds = %vector.body2602
  %cmp.n2610 = icmp eq i64 %i.abq, %n.vec2601
  br i1 %cmp.n2610, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523, label %.lr.ph.i.i.i.i.i.i.i516.preheader3747

.lr.ph.i.i.i.i.i.i.i516.preheader3747:            ; preds = %.lr.ph.i.i.i.i.i.i.i516.preheader, %middle.block2609
  %.012.i.i.i.i.i.i.i517.ph = phi ptr [ %i.abl, %.lr.ph.i.i.i.i.i.i.i516.preheader ], [ %i.abt, %middle.block2609 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i518.ph = phi ptr [ %.sroa.01677.22, %.lr.ph.i.i.i.i.i.i.i516.preheader ], [ %i.abu, %middle.block2609 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i518.ph3805 = ptrtoint ptr %.0911.i.i.i.i.i.i.i518.ph to i64
  %i.abz = sub i64 %.0.lcssa.i.i.i.i.i.i.i506.pn2596, %.0911.i.i.i.i.i.i.i518.ph3805 ; 2 uses
  %i.aca = lshr i64 %i.abz, 3
  %i.acb = add nuw nsw i64 %i.aca, 1
  %xtraiter3806 = and i64 %i.acb, 7               ; 2 uses
  %lcmp.mod3807.not = icmp eq i64 %xtraiter3806, 0
  br i1 %lcmp.mod3807.not, label %.lr.ph.i.i.i.i.i.i.i516.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i516.prol

.lr.ph.i.i.i.i.i.i.i516.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i516.preheader3747, %.lr.ph.i.i.i.i.i.i.i516.prol
  %.012.i.i.i.i.i.i.i517.prol = phi ptr [ %i.ace, %.lr.ph.i.i.i.i.i.i.i516.prol ], [ %.012.i.i.i.i.i.i.i517.ph, %.lr.ph.i.i.i.i.i.i.i516.preheader3747 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i518.prol = phi ptr [ %i.acd, %.lr.ph.i.i.i.i.i.i.i516.prol ], [ %.0911.i.i.i.i.i.i.i518.ph, %.lr.ph.i.i.i.i.i.i.i516.preheader3747 ] ; 2 uses
  %prol.iter3808 = phi i64 [ %prol.iter3808.next, %.lr.ph.i.i.i.i.i.i.i516.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i516.preheader3747 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.acc = load i64, ptr %.0911.i.i.i.i.i.i.i518.prol, align 8, !alias.scope !428, !noalias !425
  store i64 %i.acc, ptr %.012.i.i.i.i.i.i.i517.prol, align 8, !alias.scope !425, !noalias !428
  %i.acd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518.prol, i64 8 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517.prol, i64 8 ; 3 uses
  %prol.iter3808.next = add i64 %prol.iter3808, 1 ; 2 uses
  %prol.iter3808.cmp.not = icmp eq i64 %prol.iter3808.next, %xtraiter3806
  br i1 %prol.iter3808.cmp.not, label %.lr.ph.i.i.i.i.i.i.i516.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i516.prol, !llvm.loop !431

.lr.ph.i.i.i.i.i.i.i516.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i516.prol, %.lr.ph.i.i.i.i.i.i.i516.preheader3747
  %.lcssa3748.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i516.preheader3747 ], [ %i.ace, %.lr.ph.i.i.i.i.i.i.i516.prol ]
  %.012.i.i.i.i.i.i.i517.unr = phi ptr [ %.012.i.i.i.i.i.i.i517.ph, %.lr.ph.i.i.i.i.i.i.i516.preheader3747 ], [ %i.ace, %.lr.ph.i.i.i.i.i.i.i516.prol ]
  %.0911.i.i.i.i.i.i.i518.unr = phi ptr [ %.0911.i.i.i.i.i.i.i518.ph, %.lr.ph.i.i.i.i.i.i.i516.preheader3747 ], [ %i.acd, %.lr.ph.i.i.i.i.i.i.i516.prol ]
  %i.acf = icmp ult i64 %i.abz, 56
  br i1 %i.acf, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523, label %.lr.ph.i.i.i.i.i.i.i516

.lr.ph.i.i.i.i.i.i.i516:                          ; preds = %.lr.ph.i.i.i.i.i.i.i516.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i516
  %.012.i.i.i.i.i.i.i517 = phi ptr [ %i.add, %.lr.ph.i.i.i.i.i.i.i516 ], [ %.012.i.i.i.i.i.i.i517.unr, %.lr.ph.i.i.i.i.i.i.i516.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i518 = phi ptr [ %i.adc, %.lr.ph.i.i.i.i.i.i.i516 ], [ %.0911.i.i.i.i.i.i.i518.unr, %.lr.ph.i.i.i.i.i.i.i516.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.acg = load i64, ptr %.0911.i.i.i.i.i.i.i518, align 8, !alias.scope !428, !noalias !425
  store i64 %i.acg, ptr %.012.i.i.i.i.i.i.i517, align 8, !alias.scope !425, !noalias !428
  %i.ach = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.acj = load i64, ptr %i.ach, align 8, !alias.scope !434, !noalias !432
  store i64 %i.acj, ptr %i.aci, align 8, !alias.scope !432, !noalias !434
  %i.ack = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518, i64 16
  %i.acl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.acm = load i64, ptr %i.ack, align 8, !alias.scope !438, !noalias !436
  store i64 %i.acm, ptr %i.acl, align 8, !alias.scope !436, !noalias !438
  %i.acn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518, i64 24
  %i.aco = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.acp = load i64, ptr %i.acn, align 8, !alias.scope !442, !noalias !440
  store i64 %i.acp, ptr %i.aco, align 8, !alias.scope !440, !noalias !442
  %i.acq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518, i64 32
  %i.acr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.acs = load i64, ptr %i.acq, align 8, !alias.scope !446, !noalias !444
  store i64 %i.acs, ptr %i.acr, align 8, !alias.scope !444, !noalias !446
  %i.act = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518, i64 40
  %i.acu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.acv = load i64, ptr %i.act, align 8, !alias.scope !450, !noalias !448
  store i64 %i.acv, ptr %i.acu, align 8, !alias.scope !448, !noalias !450
  %i.acw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518, i64 48
  %i.acx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.acy = load i64, ptr %i.acw, align 8, !alias.scope !454, !noalias !452
  store i64 %i.acy, ptr %i.acx, align 8, !alias.scope !452, !noalias !454
  %i.acz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518, i64 56 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.adb = load i64, ptr %i.acz, align 8, !alias.scope !458, !noalias !456
  store i64 %i.adb, ptr %i.ada, align 8, !alias.scope !456, !noalias !458
  %i.adc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i518, i64 64
  %i.add = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i517, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i519.7 = icmp eq ptr %i.acz, %.0.lcssa.i.i.i.i.i.i.i506.pn
  br i1 %.not.i.i.i.i.i.i.i519.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523, label %.lr.ph.i.i.i.i.i.i.i516, !llvm.loop !460

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523: ; preds = %.lr.ph.i.i.i.i.i.i.i516.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i516, %middle.block2609, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i512
  %.0.lcssa.i.i.i.i.i.i.i521 = phi ptr [ %i.abl, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i512 ], [ %i.abt, %middle.block2609 ], [ %.lcssa3748.unr, %.lr.ph.i.i.i.i.i.i.i516.prol.loopexit ], [ %i.add, %.lr.ph.i.i.i.i.i.i.i516 ]
  %i.ade = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i521, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.22, i64 noundef %i.abd) #28
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %i.abj
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit524

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit524: ; preds = %bb.bq, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523
  %.sroa.217.23 = phi ptr [ %i.adf, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523 ], [ %.sroa.217.22, %bb.bq ] ; 5 uses
  %.sroa.76.23 = phi ptr [ %i.ade, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523 ], [ %i.aba, %bb.bq ] ; 3 uses
  %.sroa.01677.23 = phi ptr [ %i.abl, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i523 ], [ %.sroa.01677.22, %bb.bq ] ; 7 uses
  %i.adg = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.77, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.adh = icmp eq ptr %i.adg, null
  br i1 %i.adh, label %bb.bt, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit525, !prof !5

bb.bt:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit524
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit525

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit525: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit524, %bb.bt
  %i.adi = ptrtoint ptr %i.adg to i64             ; 2 uses
  %.not.i.i.i526 = icmp eq ptr %.sroa.76.23, %.sroa.217.23
  br i1 %.not.i.i.i526, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit525
  store i64 %i.adi, ptr %.sroa.76.23, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit539

bb.bv:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit525
  %i.adj = ptrtoint ptr %.sroa.217.23 to i64      ; 2 uses
  %i.adk = ptrtoint ptr %.sroa.01677.23 to i64    ; 3 uses
  %i.adl = sub i64 %i.adj, %i.adk                 ; 4 uses
  %i.adm = icmp eq i64 %i.adl, 9223372036854775800
  br i1 %i.adm, label %bb.bw, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i527

bb.bw:                                            ; preds = %bb.bv
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i527: ; preds = %bb.bv
  %i.adn = ashr exact i64 %i.adl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i528 = tail call i64 @llvm.umax.i64(i64 %i.adn, i64 1)
  %i.ado = add nsw i64 %.sroa.speculated.i.i.i.i.i528, %i.adn ; 2 uses
  %i.adp = icmp ult i64 %i.ado, %i.adn
  %i.adq = tail call i64 @llvm.umin.i64(i64 %i.ado, i64 1152921504606846975)
  %i.adr = select i1 %i.adp, i64 1152921504606846975, i64 %i.adq ; 3 uses
  %.not.i.i.i.i.i529 = icmp ne i64 %i.adr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i529)
  %i.ads = shl nuw nsw i64 %i.adr, 3
  %i.adt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ads) #27 ; 8 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.adl
  store i64 %i.adi, ptr %i.adu, align 8
  %.not10.i.i.i.i.i.i.i530 = icmp eq ptr %.sroa.01677.23, %.sroa.217.23
  br i1 %.not10.i.i.i.i.i.i.i530, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i538, label %.lr.ph.i.i.i.i.i.i.i531.preheader

.lr.ph.i.i.i.i.i.i.i531.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i527
  %i.adv = ptrtoaddr ptr %i.adt to i64
  %18 = sub i64 %i.adj, %i.adk
  %19 = add i64 %18, -8                           ; 2 uses
  %i.adw = lshr i64 %19, 3
  %i.adx = add nuw nsw i64 %i.adw, 1              ; 2 uses
  %min.iters.check2616 = icmp ult i64 %19, 56
  %i.ady = sub i64 %i.adv, %i.adk
  %diff.check2614 = icmp ult i64 %i.ady, 32
  %or.cond3596 = or i1 %min.iters.check2616, %diff.check2614
  br i1 %or.cond3596, label %.lr.ph.i.i.i.i.i.i.i531.preheader3745, label %vector.ph2617

vector.ph2617:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i531.preheader
  %n.vec2619 = and i64 %i.adx, 4611686018427387900 ; 3 uses
  %i.adz = shl i64 %n.vec2619, 3                  ; 2 uses
  %i.aea = getelementptr i8, ptr %i.adt, i64 %i.adz ; 2 uses
  %i.aeb = getelementptr i8, ptr %.sroa.01677.23, i64 %i.adz
  br label %vector.body2620

vector.body2620:                                  ; preds = %vector.body2620, %vector.ph2617
  %index2621 = phi i64 [ 0, %vector.ph2617 ], [ %index.next2626, %vector.body2620 ] ; 2 uses
  %i.aec = shl i64 %index2621, 3                  ; 2 uses
  %next.gep2622 = getelementptr i8, ptr %i.adt, i64 %i.aec ; 2 uses
  %next.gep2623 = getelementptr i8, ptr %.sroa.01677.23, i64 %i.aec ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.aed = getelementptr i8, ptr %next.gep2623, i64 16
  %wide.load2624 = load <2 x i64>, ptr %next.gep2623, align 8, !alias.scope !464, !noalias !461
  %wide.load2625 = load <2 x i64>, ptr %i.aed, align 8, !alias.scope !464, !noalias !461
  %i.aee = getelementptr i8, ptr %next.gep2622, i64 16
  store <2 x i64> %wide.load2624, ptr %next.gep2622, align 8, !alias.scope !461, !noalias !464
  store <2 x i64> %wide.load2625, ptr %i.aee, align 8, !alias.scope !461, !noalias !464
  %index.next2626 = add nuw i64 %index2621, 4     ; 2 uses
  %i.aef = icmp eq i64 %index.next2626, %n.vec2619
  br i1 %i.aef, label %middle.block2627, label %vector.body2620, !llvm.loop !466

middle.block2627:                                 ; preds = %vector.body2620
  %cmp.n2628 = icmp eq i64 %i.adx, %n.vec2619
  br i1 %cmp.n2628, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i538, label %.lr.ph.i.i.i.i.i.i.i531.preheader3745

.lr.ph.i.i.i.i.i.i.i531.preheader3745:            ; preds = %.lr.ph.i.i.i.i.i.i.i531.preheader, %middle.block2627
  %.012.i.i.i.i.i.i.i532.ph = phi ptr [ %i.adt, %.lr.ph.i.i.i.i.i.i.i531.preheader ], [ %i.aea, %middle.block2627 ]
  %.0911.i.i.i.i.i.i.i533.ph = phi ptr [ %.sroa.01677.23, %.lr.ph.i.i.i.i.i.i.i531.preheader ], [ %i.aeb, %middle.block2627 ]
  br label %.lr.ph.i.i.i.i.i.i.i531

.lr.ph.i.i.i.i.i.i.i531:                          ; preds = %.lr.ph.i.i.i.i.i.i.i531.preheader3745, %.lr.ph.i.i.i.i.i.i.i531
  %.012.i.i.i.i.i.i.i532 = phi ptr [ %i.aei, %.lr.ph.i.i.i.i.i.i.i531 ], [ %.012.i.i.i.i.i.i.i532.ph, %.lr.ph.i.i.i.i.i.i.i531.preheader3745 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i533 = phi ptr [ %i.aeh, %.lr.ph.i.i.i.i.i.i.i531 ], [ %.0911.i.i.i.i.i.i.i533.ph, %.lr.ph.i.i.i.i.i.i.i531.preheader3745 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.aeg = load i64, ptr %.0911.i.i.i.i.i.i.i533, align 8, !alias.scope !464, !noalias !461
  store i64 %i.aeg, ptr %.012.i.i.i.i.i.i.i532, align 8, !alias.scope !461, !noalias !464
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i533, i64 8 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i532, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i534 = icmp eq ptr %i.aeh, %.sroa.217.23
  br i1 %.not.i.i.i.i.i.i.i534, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i538, label %.lr.ph.i.i.i.i.i.i.i531, !llvm.loop !467

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i538: ; preds = %.lr.ph.i.i.i.i.i.i.i531, %middle.block2627, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i527
  %.0.lcssa.i.i.i.i.i.i.i536 = phi ptr [ %i.adt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i527 ], [ %i.aea, %middle.block2627 ], [ %i.aei, %.lr.ph.i.i.i.i.i.i.i531 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.23, i64 noundef %i.adl) #28
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %i.adr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit539

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit539: ; preds = %bb.bu, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i538
  %.sroa.217.24 = phi ptr [ %i.aej, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i538 ], [ %.sroa.217.23, %bb.bu ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i536.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i536, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i538 ], [ %.sroa.76.23, %bb.bu ] ; 4 uses
  %.sroa.01677.24 = phi ptr [ %i.adt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i538 ], [ %.sroa.01677.23, %bb.bu ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i536.pn2633 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i536.pn to i64 ; 2 uses
  %.sroa.76.24 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i536.pn, i64 8 ; 2 uses
  %i.aek = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.ael = icmp eq ptr %i.aek, null
  br i1 %i.ael, label %bb.bx, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit540, !prof !5

bb.bx:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit539
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit540

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit540: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit539, %bb.bx
  %i.aem = ptrtoint ptr %i.aek to i64             ; 2 uses
  %.not.i.i.i541 = icmp eq ptr %.sroa.76.24, %.sroa.217.24
  br i1 %.not.i.i.i541, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit540
  store i64 %i.aem, ptr %.sroa.76.24, align 8
  %i.aen = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i536.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit554

bb.bz:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit540
  %i.aeo = ptrtoint ptr %.sroa.217.24 to i64
  %i.aep = ptrtoint ptr %.sroa.01677.24 to i64    ; 3 uses
  %i.aeq = sub i64 %i.aeo, %i.aep                 ; 4 uses
  %i.aer = icmp eq i64 %i.aeq, 9223372036854775800
  br i1 %i.aer, label %bb.ca, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i542

bb.ca:                                            ; preds = %bb.bz
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i542: ; preds = %bb.bz
  %i.aes = ashr exact i64 %i.aeq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i543 = tail call i64 @llvm.umax.i64(i64 %i.aes, i64 1)
  %i.aet = add nsw i64 %.sroa.speculated.i.i.i.i.i543, %i.aes ; 2 uses
  %i.aeu = icmp ult i64 %i.aet, %i.aes
  %i.aev = tail call i64 @llvm.umin.i64(i64 %i.aet, i64 1152921504606846975)
  %i.aew = select i1 %i.aeu, i64 1152921504606846975, i64 %i.aev ; 3 uses
  %.not.i.i.i.i.i544 = icmp ne i64 %i.aew, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i544)
  %i.aex = shl nuw nsw i64 %i.aew, 3
  %i.aey = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aex) #27 ; 8 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.aeq
  store i64 %i.aem, ptr %i.aez, align 8
  %.not10.i.i.i.i.i.i.i545 = icmp eq ptr %.sroa.01677.24, %.sroa.217.24
  br i1 %.not10.i.i.i.i.i.i.i545, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553, label %.lr.ph.i.i.i.i.i.i.i546.preheader

.lr.ph.i.i.i.i.i.i.i546.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i542
  %i.afa = ptrtoaddr ptr %i.aey to i64
  %i.afb = sub i64 %.0.lcssa.i.i.i.i.i.i.i536.pn2633, %i.aep ; 2 uses
  %i.afc = lshr i64 %i.afb, 3
  %i.afd = add nuw nsw i64 %i.afc, 1              ; 2 uses
  %min.iters.check2635 = icmp ult i64 %i.afb, 56
  %i.afe = sub i64 %i.afa, %i.aep
  %diff.check2632 = icmp ult i64 %i.afe, 32
  %or.cond3597 = or i1 %min.iters.check2635, %diff.check2632
  br i1 %or.cond3597, label %.lr.ph.i.i.i.i.i.i.i546.preheader3743, label %vector.ph2636

vector.ph2636:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i546.preheader
  %n.vec2638 = and i64 %i.afd, 4611686018427387900 ; 3 uses
  %i.aff = shl i64 %n.vec2638, 3                  ; 2 uses
  %i.afg = getelementptr i8, ptr %i.aey, i64 %i.aff ; 2 uses
  %i.afh = getelementptr i8, ptr %.sroa.01677.24, i64 %i.aff
  br label %vector.body2639

vector.body2639:                                  ; preds = %vector.body2639, %vector.ph2636
  %index2640 = phi i64 [ 0, %vector.ph2636 ], [ %index.next2645, %vector.body2639 ] ; 2 uses
  %i.afi = shl i64 %index2640, 3                  ; 2 uses
  %next.gep2641 = getelementptr i8, ptr %i.aey, i64 %i.afi ; 2 uses
  %next.gep2642 = getelementptr i8, ptr %.sroa.01677.24, i64 %i.afi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.afj = getelementptr i8, ptr %next.gep2642, i64 16
  %wide.load2643 = load <2 x i64>, ptr %next.gep2642, align 8, !alias.scope !471, !noalias !468
  %wide.load2644 = load <2 x i64>, ptr %i.afj, align 8, !alias.scope !471, !noalias !468
  %i.afk = getelementptr i8, ptr %next.gep2641, i64 16
  store <2 x i64> %wide.load2643, ptr %next.gep2641, align 8, !alias.scope !468, !noalias !471
  store <2 x i64> %wide.load2644, ptr %i.afk, align 8, !alias.scope !468, !noalias !471
  %index.next2645 = add nuw i64 %index2640, 4     ; 2 uses
  %i.afl = icmp eq i64 %index.next2645, %n.vec2638
  br i1 %i.afl, label %middle.block2646, label %vector.body2639, !llvm.loop !473

middle.block2646:                                 ; preds = %vector.body2639
  %cmp.n2647 = icmp eq i64 %i.afd, %n.vec2638
  br i1 %cmp.n2647, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553, label %.lr.ph.i.i.i.i.i.i.i546.preheader3743

.lr.ph.i.i.i.i.i.i.i546.preheader3743:            ; preds = %.lr.ph.i.i.i.i.i.i.i546.preheader, %middle.block2646
  %.012.i.i.i.i.i.i.i547.ph = phi ptr [ %i.aey, %.lr.ph.i.i.i.i.i.i.i546.preheader ], [ %i.afg, %middle.block2646 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i548.ph = phi ptr [ %.sroa.01677.24, %.lr.ph.i.i.i.i.i.i.i546.preheader ], [ %i.afh, %middle.block2646 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i548.ph3809 = ptrtoint ptr %.0911.i.i.i.i.i.i.i548.ph to i64
  %i.afm = sub i64 %.0.lcssa.i.i.i.i.i.i.i536.pn2633, %.0911.i.i.i.i.i.i.i548.ph3809 ; 2 uses
  %i.afn = lshr i64 %i.afm, 3
  %i.afo = add nuw nsw i64 %i.afn, 1
  %xtraiter3810 = and i64 %i.afo, 7               ; 2 uses
  %lcmp.mod3811.not = icmp eq i64 %xtraiter3810, 0
  br i1 %lcmp.mod3811.not, label %.lr.ph.i.i.i.i.i.i.i546.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i546.prol

.lr.ph.i.i.i.i.i.i.i546.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i546.preheader3743, %.lr.ph.i.i.i.i.i.i.i546.prol
  %.012.i.i.i.i.i.i.i547.prol = phi ptr [ %i.afr, %.lr.ph.i.i.i.i.i.i.i546.prol ], [ %.012.i.i.i.i.i.i.i547.ph, %.lr.ph.i.i.i.i.i.i.i546.preheader3743 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i548.prol = phi ptr [ %i.afq, %.lr.ph.i.i.i.i.i.i.i546.prol ], [ %.0911.i.i.i.i.i.i.i548.ph, %.lr.ph.i.i.i.i.i.i.i546.preheader3743 ] ; 2 uses
  %prol.iter3812 = phi i64 [ %prol.iter3812.next, %.lr.ph.i.i.i.i.i.i.i546.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i546.preheader3743 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.afp = load i64, ptr %.0911.i.i.i.i.i.i.i548.prol, align 8, !alias.scope !471, !noalias !468
  store i64 %i.afp, ptr %.012.i.i.i.i.i.i.i547.prol, align 8, !alias.scope !468, !noalias !471
  %i.afq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548.prol, i64 8 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547.prol, i64 8 ; 3 uses
  %prol.iter3812.next = add i64 %prol.iter3812, 1 ; 2 uses
  %prol.iter3812.cmp.not = icmp eq i64 %prol.iter3812.next, %xtraiter3810
  br i1 %prol.iter3812.cmp.not, label %.lr.ph.i.i.i.i.i.i.i546.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i546.prol, !llvm.loop !474

.lr.ph.i.i.i.i.i.i.i546.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i546.prol, %.lr.ph.i.i.i.i.i.i.i546.preheader3743
  %.lcssa3744.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i546.preheader3743 ], [ %i.afr, %.lr.ph.i.i.i.i.i.i.i546.prol ]
  %.012.i.i.i.i.i.i.i547.unr = phi ptr [ %.012.i.i.i.i.i.i.i547.ph, %.lr.ph.i.i.i.i.i.i.i546.preheader3743 ], [ %i.afr, %.lr.ph.i.i.i.i.i.i.i546.prol ]
  %.0911.i.i.i.i.i.i.i548.unr = phi ptr [ %.0911.i.i.i.i.i.i.i548.ph, %.lr.ph.i.i.i.i.i.i.i546.preheader3743 ], [ %i.afq, %.lr.ph.i.i.i.i.i.i.i546.prol ]
  %i.afs = icmp ult i64 %i.afm, 56
  br i1 %i.afs, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553, label %.lr.ph.i.i.i.i.i.i.i546

.lr.ph.i.i.i.i.i.i.i546:                          ; preds = %.lr.ph.i.i.i.i.i.i.i546.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i546
  %.012.i.i.i.i.i.i.i547 = phi ptr [ %i.agq, %.lr.ph.i.i.i.i.i.i.i546 ], [ %.012.i.i.i.i.i.i.i547.unr, %.lr.ph.i.i.i.i.i.i.i546.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i548 = phi ptr [ %i.agp, %.lr.ph.i.i.i.i.i.i.i546 ], [ %.0911.i.i.i.i.i.i.i548.unr, %.lr.ph.i.i.i.i.i.i.i546.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.aft = load i64, ptr %.0911.i.i.i.i.i.i.i548, align 8, !alias.scope !471, !noalias !468
  store i64 %i.aft, ptr %.012.i.i.i.i.i.i.i547, align 8, !alias.scope !468, !noalias !471
  %i.afu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548, i64 8
  %i.afv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.afw = load i64, ptr %i.afu, align 8, !alias.scope !477, !noalias !475
  store i64 %i.afw, ptr %i.afv, align 8, !alias.scope !475, !noalias !477
  %i.afx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548, i64 16
  %i.afy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.afz = load i64, ptr %i.afx, align 8, !alias.scope !481, !noalias !479
  store i64 %i.afz, ptr %i.afy, align 8, !alias.scope !479, !noalias !481
  %i.aga = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548, i64 24
  %i.agb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.agc = load i64, ptr %i.aga, align 8, !alias.scope !485, !noalias !483
  store i64 %i.agc, ptr %i.agb, align 8, !alias.scope !483, !noalias !485
  %i.agd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548, i64 32
  %i.age = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.agf = load i64, ptr %i.agd, align 8, !alias.scope !489, !noalias !487
  store i64 %i.agf, ptr %i.age, align 8, !alias.scope !487, !noalias !489
  %i.agg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548, i64 40
  %i.agh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.agi = load i64, ptr %i.agg, align 8, !alias.scope !493, !noalias !491
  store i64 %i.agi, ptr %i.agh, align 8, !alias.scope !491, !noalias !493
  %i.agj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548, i64 48
  %i.agk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.agl = load i64, ptr %i.agj, align 8, !alias.scope !497, !noalias !495
  store i64 %i.agl, ptr %i.agk, align 8, !alias.scope !495, !noalias !497
  %i.agm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548, i64 56 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.ago = load i64, ptr %i.agm, align 8, !alias.scope !501, !noalias !499
  store i64 %i.ago, ptr %i.agn, align 8, !alias.scope !499, !noalias !501
  %i.agp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i548, i64 64
  %i.agq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i547, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i549.7 = icmp eq ptr %i.agm, %.0.lcssa.i.i.i.i.i.i.i536.pn
  br i1 %.not.i.i.i.i.i.i.i549.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553, label %.lr.ph.i.i.i.i.i.i.i546, !llvm.loop !503

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553: ; preds = %.lr.ph.i.i.i.i.i.i.i546.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i546, %middle.block2646, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i542
  %.0.lcssa.i.i.i.i.i.i.i551 = phi ptr [ %i.aey, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i542 ], [ %i.afg, %middle.block2646 ], [ %.lcssa3744.unr, %.lr.ph.i.i.i.i.i.i.i546.prol.loopexit ], [ %i.agq, %.lr.ph.i.i.i.i.i.i.i546 ]
  %i.agr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i551, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.24, i64 noundef %i.aeq) #28
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.aey, i64 %i.aew
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit554

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit554: ; preds = %bb.by, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553
  %.sroa.217.25 = phi ptr [ %i.ags, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553 ], [ %.sroa.217.24, %bb.by ] ; 5 uses
  %.sroa.76.25 = phi ptr [ %i.agr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553 ], [ %i.aen, %bb.by ] ; 3 uses
  %.sroa.01677.25 = phi ptr [ %i.aey, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i553 ], [ %.sroa.01677.24, %bb.by ] ; 7 uses
  %i.agt = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.79, i32 noundef 1, i32 noundef 9) #25 ; 2 uses
  %i.agu = icmp eq ptr %i.agt, null
  br i1 %i.agu, label %bb.cb, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit555, !prof !5

bb.cb:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit554
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit555

_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit555: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit554, %bb.cb
  %i.agv = ptrtoint ptr %i.agt to i64             ; 2 uses
  %.not.i.i.i556 = icmp eq ptr %.sroa.76.25, %.sroa.217.25
  br i1 %.not.i.i.i556, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit555
  store i64 %i.agv, ptr %.sroa.76.25, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit569

bb.cd:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit555
  %i.agw = ptrtoint ptr %.sroa.217.25 to i64      ; 2 uses
  %i.agx = ptrtoint ptr %.sroa.01677.25 to i64    ; 3 uses
  %i.agy = sub i64 %i.agw, %i.agx                 ; 4 uses
  %i.agz = icmp eq i64 %i.agy, 9223372036854775800
  br i1 %i.agz, label %bb.ce, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i557

bb.ce:                                            ; preds = %bb.cd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i557: ; preds = %bb.cd
  %i.aha = ashr exact i64 %i.agy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i558 = tail call i64 @llvm.umax.i64(i64 %i.aha, i64 1)
  %i.ahb = add nsw i64 %.sroa.speculated.i.i.i.i.i558, %i.aha ; 2 uses
  %i.ahc = icmp ult i64 %i.ahb, %i.aha
  %i.ahd = tail call i64 @llvm.umin.i64(i64 %i.ahb, i64 1152921504606846975)
  %i.ahe = select i1 %i.ahc, i64 1152921504606846975, i64 %i.ahd ; 3 uses
  %.not.i.i.i.i.i559 = icmp ne i64 %i.ahe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i559)
  %i.ahf = shl nuw nsw i64 %i.ahe, 3
  %i.ahg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahf) #27 ; 8 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 %i.agy
  store i64 %i.agv, ptr %i.ahh, align 8
  %.not10.i.i.i.i.i.i.i560 = icmp eq ptr %.sroa.01677.25, %.sroa.217.25
  br i1 %.not10.i.i.i.i.i.i.i560, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i568, label %.lr.ph.i.i.i.i.i.i.i561.preheader

.lr.ph.i.i.i.i.i.i.i561.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i557
  %i.ahi = ptrtoaddr ptr %i.ahg to i64
  %20 = sub i64 %i.agw, %i.agx
  %21 = add i64 %20, -8                           ; 2 uses
  %i.ahj = lshr i64 %21, 3
  %i.ahk = add nuw nsw i64 %i.ahj, 1              ; 2 uses
  %min.iters.check2653 = icmp ult i64 %21, 56
  %i.ahl = sub i64 %i.ahi, %i.agx
  %diff.check2651 = icmp ult i64 %i.ahl, 32
  %or.cond3598 = or i1 %min.iters.check2653, %diff.check2651
  br i1 %or.cond3598, label %.lr.ph.i.i.i.i.i.i.i561.preheader3741, label %vector.ph2654

vector.ph2654:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i561.preheader
  %n.vec2656 = and i64 %i.ahk, 4611686018427387900 ; 3 uses
  %i.ahm = shl i64 %n.vec2656, 3                  ; 2 uses
  %i.ahn = getelementptr i8, ptr %i.ahg, i64 %i.ahm ; 2 uses
  %i.aho = getelementptr i8, ptr %.sroa.01677.25, i64 %i.ahm
  br label %vector.body2657

vector.body2657:                                  ; preds = %vector.body2657, %vector.ph2654
  %index2658 = phi i64 [ 0, %vector.ph2654 ], [ %index.next2663, %vector.body2657 ] ; 2 uses
  %i.ahp = shl i64 %index2658, 3                  ; 2 uses
  %next.gep2659 = getelementptr i8, ptr %i.ahg, i64 %i.ahp ; 2 uses
  %next.gep2660 = getelementptr i8, ptr %.sroa.01677.25, i64 %i.ahp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.ahq = getelementptr i8, ptr %next.gep2660, i64 16
  %wide.load2661 = load <2 x i64>, ptr %next.gep2660, align 8, !alias.scope !507, !noalias !504
  %wide.load2662 = load <2 x i64>, ptr %i.ahq, align 8, !alias.scope !507, !noalias !504
  %i.ahr = getelementptr i8, ptr %next.gep2659, i64 16
  store <2 x i64> %wide.load2661, ptr %next.gep2659, align 8, !alias.scope !504, !noalias !507
  store <2 x i64> %wide.load2662, ptr %i.ahr, align 8, !alias.scope !504, !noalias !507
  %index.next2663 = add nuw i64 %index2658, 4     ; 2 uses
  %i.ahs = icmp eq i64 %index.next2663, %n.vec2656
  br i1 %i.ahs, label %middle.block2664, label %vector.body2657, !llvm.loop !509

middle.block2664:                                 ; preds = %vector.body2657
  %cmp.n2665 = icmp eq i64 %i.ahk, %n.vec2656
  br i1 %cmp.n2665, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i568, label %.lr.ph.i.i.i.i.i.i.i561.preheader3741

.lr.ph.i.i.i.i.i.i.i561.preheader3741:            ; preds = %.lr.ph.i.i.i.i.i.i.i561.preheader, %middle.block2664
  %.012.i.i.i.i.i.i.i562.ph = phi ptr [ %i.ahg, %.lr.ph.i.i.i.i.i.i.i561.preheader ], [ %i.ahn, %middle.block2664 ]
  %.0911.i.i.i.i.i.i.i563.ph = phi ptr [ %.sroa.01677.25, %.lr.ph.i.i.i.i.i.i.i561.preheader ], [ %i.aho, %middle.block2664 ]
  br label %.lr.ph.i.i.i.i.i.i.i561

.lr.ph.i.i.i.i.i.i.i561:                          ; preds = %.lr.ph.i.i.i.i.i.i.i561.preheader3741, %.lr.ph.i.i.i.i.i.i.i561
  %.012.i.i.i.i.i.i.i562 = phi ptr [ %i.ahv, %.lr.ph.i.i.i.i.i.i.i561 ], [ %.012.i.i.i.i.i.i.i562.ph, %.lr.ph.i.i.i.i.i.i.i561.preheader3741 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i563 = phi ptr [ %i.ahu, %.lr.ph.i.i.i.i.i.i.i561 ], [ %.0911.i.i.i.i.i.i.i563.ph, %.lr.ph.i.i.i.i.i.i.i561.preheader3741 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.aht = load i64, ptr %.0911.i.i.i.i.i.i.i563, align 8, !alias.scope !507, !noalias !504
  store i64 %i.aht, ptr %.012.i.i.i.i.i.i.i562, align 8, !alias.scope !504, !noalias !507
  %i.ahu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i563, i64 8 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i562, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i564 = icmp eq ptr %i.ahu, %.sroa.217.25
  br i1 %.not.i.i.i.i.i.i.i564, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i568, label %.lr.ph.i.i.i.i.i.i.i561, !llvm.loop !510

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i568: ; preds = %.lr.ph.i.i.i.i.i.i.i561, %middle.block2664, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i557
  %.0.lcssa.i.i.i.i.i.i.i566 = phi ptr [ %i.ahg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i557 ], [ %i.ahn, %middle.block2664 ], [ %i.ahv, %.lr.ph.i.i.i.i.i.i.i561 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.25, i64 noundef %i.agy) #28
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.ahe
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit569

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit569: ; preds = %bb.cc, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i568
  %.sroa.217.26 = phi ptr [ %i.ahw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i568 ], [ %.sroa.217.25, %bb.cc ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i566.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i566, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i568 ], [ %.sroa.76.25, %bb.cc ] ; 4 uses
  %.sroa.01677.26 = phi ptr [ %i.ahg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i568 ], [ %.sroa.01677.25, %bb.cc ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i566.pn2670 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i566.pn to i64 ; 2 uses
  %.sroa.76.26 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i566.pn, i64 8 ; 2 uses
  %i.ahx = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 11) #25 ; 2 uses
  %i.ahy = icmp eq ptr %i.ahx, null
  br i1 %i.ahy, label %bb.cf, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.cf:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit569
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit569, %bb.cf
  %i.ahz = ptrtoint ptr %i.ahx to i64             ; 2 uses
  %.not.i.i.i570 = icmp eq ptr %.sroa.76.26, %.sroa.217.26
  br i1 %.not.i.i.i570, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  store i64 %i.ahz, ptr %.sroa.76.26, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i566.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit583

bb.ch:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.aib = ptrtoint ptr %.sroa.217.26 to i64
  %i.aic = ptrtoint ptr %.sroa.01677.26 to i64    ; 3 uses
  %i.aid = sub i64 %i.aib, %i.aic                 ; 4 uses
  %i.aie = icmp eq i64 %i.aid, 9223372036854775800
  br i1 %i.aie, label %bb.ci, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i571

bb.ci:                                            ; preds = %bb.ch
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i571: ; preds = %bb.ch
  %i.aif = ashr exact i64 %i.aid, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i572 = tail call i64 @llvm.umax.i64(i64 %i.aif, i64 1)
  %i.aig = add nsw i64 %.sroa.speculated.i.i.i.i.i572, %i.aif ; 2 uses
  %i.aih = icmp ult i64 %i.aig, %i.aif
  %i.aii = tail call i64 @llvm.umin.i64(i64 %i.aig, i64 1152921504606846975)
  %i.aij = select i1 %i.aih, i64 1152921504606846975, i64 %i.aii ; 3 uses
  %.not.i.i.i.i.i573 = icmp ne i64 %i.aij, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i573)
  %i.aik = shl nuw nsw i64 %i.aij, 3
  %i.ail = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aik) #27 ; 8 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 %i.aid
  store i64 %i.ahz, ptr %i.aim, align 8
  %.not10.i.i.i.i.i.i.i574 = icmp eq ptr %.sroa.01677.26, %.sroa.217.26
  br i1 %.not10.i.i.i.i.i.i.i574, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582, label %.lr.ph.i.i.i.i.i.i.i575.preheader

.lr.ph.i.i.i.i.i.i.i575.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i571
  %i.ain = ptrtoaddr ptr %i.ail to i64
  %i.aio = sub i64 %.0.lcssa.i.i.i.i.i.i.i566.pn2670, %i.aic ; 2 uses
  %i.aip = lshr i64 %i.aio, 3
  %i.aiq = add nuw nsw i64 %i.aip, 1              ; 2 uses
  %min.iters.check2672 = icmp ult i64 %i.aio, 56
  %i.air = sub i64 %i.ain, %i.aic
  %diff.check2669 = icmp ult i64 %i.air, 32
  %or.cond3599 = or i1 %min.iters.check2672, %diff.check2669
  br i1 %or.cond3599, label %.lr.ph.i.i.i.i.i.i.i575.preheader3739, label %vector.ph2673

vector.ph2673:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i575.preheader
  %n.vec2675 = and i64 %i.aiq, 4611686018427387900 ; 3 uses
  %i.ais = shl i64 %n.vec2675, 3                  ; 2 uses
  %i.ait = getelementptr i8, ptr %i.ail, i64 %i.ais ; 2 uses
  %i.aiu = getelementptr i8, ptr %.sroa.01677.26, i64 %i.ais
  br label %vector.body2676

vector.body2676:                                  ; preds = %vector.body2676, %vector.ph2673
  %index2677 = phi i64 [ 0, %vector.ph2673 ], [ %index.next2682, %vector.body2676 ] ; 2 uses
  %i.aiv = shl i64 %index2677, 3                  ; 2 uses
  %next.gep2678 = getelementptr i8, ptr %i.ail, i64 %i.aiv ; 2 uses
  %next.gep2679 = getelementptr i8, ptr %.sroa.01677.26, i64 %i.aiv ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.aiw = getelementptr i8, ptr %next.gep2679, i64 16
  %wide.load2680 = load <2 x i64>, ptr %next.gep2679, align 8, !alias.scope !514, !noalias !511
  %wide.load2681 = load <2 x i64>, ptr %i.aiw, align 8, !alias.scope !514, !noalias !511
  %i.aix = getelementptr i8, ptr %next.gep2678, i64 16
  store <2 x i64> %wide.load2680, ptr %next.gep2678, align 8, !alias.scope !511, !noalias !514
  store <2 x i64> %wide.load2681, ptr %i.aix, align 8, !alias.scope !511, !noalias !514
  %index.next2682 = add nuw i64 %index2677, 4     ; 2 uses
  %i.aiy = icmp eq i64 %index.next2682, %n.vec2675
  br i1 %i.aiy, label %middle.block2683, label %vector.body2676, !llvm.loop !516

middle.block2683:                                 ; preds = %vector.body2676
  %cmp.n2684 = icmp eq i64 %i.aiq, %n.vec2675
  br i1 %cmp.n2684, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582, label %.lr.ph.i.i.i.i.i.i.i575.preheader3739

.lr.ph.i.i.i.i.i.i.i575.preheader3739:            ; preds = %.lr.ph.i.i.i.i.i.i.i575.preheader, %middle.block2683
  %.012.i.i.i.i.i.i.i576.ph = phi ptr [ %i.ail, %.lr.ph.i.i.i.i.i.i.i575.preheader ], [ %i.ait, %middle.block2683 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i577.ph = phi ptr [ %.sroa.01677.26, %.lr.ph.i.i.i.i.i.i.i575.preheader ], [ %i.aiu, %middle.block2683 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i577.ph3813 = ptrtoint ptr %.0911.i.i.i.i.i.i.i577.ph to i64
  %i.aiz = sub i64 %.0.lcssa.i.i.i.i.i.i.i566.pn2670, %.0911.i.i.i.i.i.i.i577.ph3813 ; 2 uses
  %i.aja = lshr i64 %i.aiz, 3
  %i.ajb = add nuw nsw i64 %i.aja, 1
  %xtraiter3814 = and i64 %i.ajb, 7               ; 2 uses
  %lcmp.mod3815.not = icmp eq i64 %xtraiter3814, 0
  br i1 %lcmp.mod3815.not, label %.lr.ph.i.i.i.i.i.i.i575.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i575.prol

.lr.ph.i.i.i.i.i.i.i575.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i575.preheader3739, %.lr.ph.i.i.i.i.i.i.i575.prol
  %.012.i.i.i.i.i.i.i576.prol = phi ptr [ %i.aje, %.lr.ph.i.i.i.i.i.i.i575.prol ], [ %.012.i.i.i.i.i.i.i576.ph, %.lr.ph.i.i.i.i.i.i.i575.preheader3739 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i577.prol = phi ptr [ %i.ajd, %.lr.ph.i.i.i.i.i.i.i575.prol ], [ %.0911.i.i.i.i.i.i.i577.ph, %.lr.ph.i.i.i.i.i.i.i575.preheader3739 ] ; 2 uses
  %prol.iter3816 = phi i64 [ %prol.iter3816.next, %.lr.ph.i.i.i.i.i.i.i575.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i575.preheader3739 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.ajc = load i64, ptr %.0911.i.i.i.i.i.i.i577.prol, align 8, !alias.scope !514, !noalias !511
  store i64 %i.ajc, ptr %.012.i.i.i.i.i.i.i576.prol, align 8, !alias.scope !511, !noalias !514
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577.prol, i64 8 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576.prol, i64 8 ; 3 uses
  %prol.iter3816.next = add i64 %prol.iter3816, 1 ; 2 uses
  %prol.iter3816.cmp.not = icmp eq i64 %prol.iter3816.next, %xtraiter3814
  br i1 %prol.iter3816.cmp.not, label %.lr.ph.i.i.i.i.i.i.i575.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i575.prol, !llvm.loop !517

.lr.ph.i.i.i.i.i.i.i575.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i575.prol, %.lr.ph.i.i.i.i.i.i.i575.preheader3739
  %.lcssa3740.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i575.preheader3739 ], [ %i.aje, %.lr.ph.i.i.i.i.i.i.i575.prol ]
  %.012.i.i.i.i.i.i.i576.unr = phi ptr [ %.012.i.i.i.i.i.i.i576.ph, %.lr.ph.i.i.i.i.i.i.i575.preheader3739 ], [ %i.aje, %.lr.ph.i.i.i.i.i.i.i575.prol ]
  %.0911.i.i.i.i.i.i.i577.unr = phi ptr [ %.0911.i.i.i.i.i.i.i577.ph, %.lr.ph.i.i.i.i.i.i.i575.preheader3739 ], [ %i.ajd, %.lr.ph.i.i.i.i.i.i.i575.prol ]
  %i.ajf = icmp ult i64 %i.aiz, 56
  br i1 %i.ajf, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582, label %.lr.ph.i.i.i.i.i.i.i575

.lr.ph.i.i.i.i.i.i.i575:                          ; preds = %.lr.ph.i.i.i.i.i.i.i575.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i575
  %.012.i.i.i.i.i.i.i576 = phi ptr [ %i.akd, %.lr.ph.i.i.i.i.i.i.i575 ], [ %.012.i.i.i.i.i.i.i576.unr, %.lr.ph.i.i.i.i.i.i.i575.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i577 = phi ptr [ %i.akc, %.lr.ph.i.i.i.i.i.i.i575 ], [ %.0911.i.i.i.i.i.i.i577.unr, %.lr.ph.i.i.i.i.i.i.i575.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.ajg = load i64, ptr %.0911.i.i.i.i.i.i.i577, align 8, !alias.scope !514, !noalias !511
  store i64 %i.ajg, ptr %.012.i.i.i.i.i.i.i576, align 8, !alias.scope !511, !noalias !514
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577, i64 8
  %i.aji = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.ajj = load i64, ptr %i.ajh, align 8, !alias.scope !520, !noalias !518
  store i64 %i.ajj, ptr %i.aji, align 8, !alias.scope !518, !noalias !520
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577, i64 16
  %i.ajl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ajm = load i64, ptr %i.ajk, align 8, !alias.scope !524, !noalias !522
  store i64 %i.ajm, ptr %i.ajl, align 8, !alias.scope !522, !noalias !524
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577, i64 24
  %i.ajo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.ajp = load i64, ptr %i.ajn, align 8, !alias.scope !528, !noalias !526
  store i64 %i.ajp, ptr %i.ajo, align 8, !alias.scope !526, !noalias !528
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577, i64 32
  %i.ajr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.ajs = load i64, ptr %i.ajq, align 8, !alias.scope !532, !noalias !530
  store i64 %i.ajs, ptr %i.ajr, align 8, !alias.scope !530, !noalias !532
  %i.ajt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577, i64 40
  %i.aju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.ajv = load i64, ptr %i.ajt, align 8, !alias.scope !536, !noalias !534
  store i64 %i.ajv, ptr %i.aju, align 8, !alias.scope !534, !noalias !536
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577, i64 48
  %i.ajx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.ajy = load i64, ptr %i.ajw, align 8, !alias.scope !540, !noalias !538
  store i64 %i.ajy, ptr %i.ajx, align 8, !alias.scope !538, !noalias !540
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577, i64 56 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.akb = load i64, ptr %i.ajz, align 8, !alias.scope !544, !noalias !542
  store i64 %i.akb, ptr %i.aka, align 8, !alias.scope !542, !noalias !544
  %i.akc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i577, i64 64
  %i.akd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i576, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i578.7 = icmp eq ptr %i.ajz, %.0.lcssa.i.i.i.i.i.i.i566.pn
  br i1 %.not.i.i.i.i.i.i.i578.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582, label %.lr.ph.i.i.i.i.i.i.i575, !llvm.loop !546

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582: ; preds = %.lr.ph.i.i.i.i.i.i.i575.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i575, %middle.block2683, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i571
  %.0.lcssa.i.i.i.i.i.i.i580 = phi ptr [ %i.ail, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i571 ], [ %i.ait, %middle.block2683 ], [ %.lcssa3740.unr, %.lr.ph.i.i.i.i.i.i.i575.prol.loopexit ], [ %i.akd, %.lr.ph.i.i.i.i.i.i.i575 ]
  %i.ake = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i580, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.26, i64 noundef %i.aid) #28
  %i.akf = getelementptr inbounds nuw [8 x i8], ptr %i.ail, i64 %i.aij
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit583

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit583: ; preds = %bb.cg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582
  %.sroa.217.27 = phi ptr [ %i.akf, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582 ], [ %.sroa.217.26, %bb.cg ] ; 5 uses
  %.sroa.76.27 = phi ptr [ %i.ake, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582 ], [ %i.aia, %bb.cg ] ; 3 uses
  %.sroa.01677.27 = phi ptr [ %i.ail, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i582 ], [ %.sroa.01677.26, %bb.cg ] ; 7 uses
  %i.akg = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.81, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.akh = icmp eq ptr %i.akg, null
  br i1 %i.akh, label %bb.cj, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit584, !prof !5

bb.cj:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit583
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit584

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit584: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit583, %bb.cj
  %i.aki = ptrtoint ptr %i.akg to i64             ; 2 uses
  %.not.i.i.i585 = icmp eq ptr %.sroa.76.27, %.sroa.217.27
  br i1 %.not.i.i.i585, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit584
  store i64 %i.aki, ptr %.sroa.76.27, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit598

bb.cl:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit584
  %i.akj = ptrtoint ptr %.sroa.217.27 to i64      ; 2 uses
  %i.akk = ptrtoint ptr %.sroa.01677.27 to i64    ; 3 uses
  %i.akl = sub i64 %i.akj, %i.akk                 ; 4 uses
  %i.akm = icmp eq i64 %i.akl, 9223372036854775800
  br i1 %i.akm, label %bb.cm, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i586

bb.cm:                                            ; preds = %bb.cl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i586: ; preds = %bb.cl
  %i.akn = ashr exact i64 %i.akl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i587 = tail call i64 @llvm.umax.i64(i64 %i.akn, i64 1)
  %i.ako = add nsw i64 %.sroa.speculated.i.i.i.i.i587, %i.akn ; 2 uses
  %i.akp = icmp ult i64 %i.ako, %i.akn
  %i.akq = tail call i64 @llvm.umin.i64(i64 %i.ako, i64 1152921504606846975)
  %i.akr = select i1 %i.akp, i64 1152921504606846975, i64 %i.akq ; 3 uses
  %.not.i.i.i.i.i588 = icmp ne i64 %i.akr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i588)
  %i.aks = shl nuw nsw i64 %i.akr, 3
  %i.akt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aks) #27 ; 8 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 %i.akl
  store i64 %i.aki, ptr %i.aku, align 8
  %.not10.i.i.i.i.i.i.i589 = icmp eq ptr %.sroa.01677.27, %.sroa.217.27
  br i1 %.not10.i.i.i.i.i.i.i589, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i590.preheader

.lr.ph.i.i.i.i.i.i.i590.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i586
  %i.akv = ptrtoaddr ptr %i.akt to i64
  %22 = sub i64 %i.akj, %i.akk
  %23 = add i64 %22, -8                           ; 2 uses
  %i.akw = lshr i64 %23, 3
  %i.akx = add nuw nsw i64 %i.akw, 1              ; 2 uses
  %min.iters.check2690 = icmp ult i64 %23, 56
  %i.aky = sub i64 %i.akv, %i.akk
  %diff.check2688 = icmp ult i64 %i.aky, 32
  %or.cond3600 = or i1 %min.iters.check2690, %diff.check2688
  br i1 %or.cond3600, label %.lr.ph.i.i.i.i.i.i.i590.preheader3737, label %vector.ph2691

vector.ph2691:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i590.preheader
  %n.vec2693 = and i64 %i.akx, 4611686018427387900 ; 3 uses
  %i.akz = shl i64 %n.vec2693, 3                  ; 2 uses
  %i.ala = getelementptr i8, ptr %i.akt, i64 %i.akz ; 2 uses
  %i.alb = getelementptr i8, ptr %.sroa.01677.27, i64 %i.akz
  br label %vector.body2694

vector.body2694:                                  ; preds = %vector.body2694, %vector.ph2691
  %index2695 = phi i64 [ 0, %vector.ph2691 ], [ %index.next2700, %vector.body2694 ] ; 2 uses
  %i.alc = shl i64 %index2695, 3                  ; 2 uses
  %next.gep2696 = getelementptr i8, ptr %i.akt, i64 %i.alc ; 2 uses
  %next.gep2697 = getelementptr i8, ptr %.sroa.01677.27, i64 %i.alc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.ald = getelementptr i8, ptr %next.gep2697, i64 16
  %wide.load2698 = load <2 x i64>, ptr %next.gep2697, align 8, !alias.scope !550, !noalias !547
  %wide.load2699 = load <2 x i64>, ptr %i.ald, align 8, !alias.scope !550, !noalias !547
  %i.ale = getelementptr i8, ptr %next.gep2696, i64 16
  store <2 x i64> %wide.load2698, ptr %next.gep2696, align 8, !alias.scope !547, !noalias !550
  store <2 x i64> %wide.load2699, ptr %i.ale, align 8, !alias.scope !547, !noalias !550
  %index.next2700 = add nuw i64 %index2695, 4     ; 2 uses
  %i.alf = icmp eq i64 %index.next2700, %n.vec2693
  br i1 %i.alf, label %middle.block2701, label %vector.body2694, !llvm.loop !552

middle.block2701:                                 ; preds = %vector.body2694
  %cmp.n2702 = icmp eq i64 %i.akx, %n.vec2693
  br i1 %cmp.n2702, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i590.preheader3737

.lr.ph.i.i.i.i.i.i.i590.preheader3737:            ; preds = %.lr.ph.i.i.i.i.i.i.i590.preheader, %middle.block2701
  %.012.i.i.i.i.i.i.i591.ph = phi ptr [ %i.akt, %.lr.ph.i.i.i.i.i.i.i590.preheader ], [ %i.ala, %middle.block2701 ]
  %.0911.i.i.i.i.i.i.i592.ph = phi ptr [ %.sroa.01677.27, %.lr.ph.i.i.i.i.i.i.i590.preheader ], [ %i.alb, %middle.block2701 ]
  br label %.lr.ph.i.i.i.i.i.i.i590

.lr.ph.i.i.i.i.i.i.i590:                          ; preds = %.lr.ph.i.i.i.i.i.i.i590.preheader3737, %.lr.ph.i.i.i.i.i.i.i590
  %.012.i.i.i.i.i.i.i591 = phi ptr [ %i.ali, %.lr.ph.i.i.i.i.i.i.i590 ], [ %.012.i.i.i.i.i.i.i591.ph, %.lr.ph.i.i.i.i.i.i.i590.preheader3737 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i592 = phi ptr [ %i.alh, %.lr.ph.i.i.i.i.i.i.i590 ], [ %.0911.i.i.i.i.i.i.i592.ph, %.lr.ph.i.i.i.i.i.i.i590.preheader3737 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.alg = load i64, ptr %.0911.i.i.i.i.i.i.i592, align 8, !alias.scope !550, !noalias !547
  store i64 %i.alg, ptr %.012.i.i.i.i.i.i.i591, align 8, !alias.scope !547, !noalias !550
  %i.alh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i592, i64 8 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i591, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i593 = icmp eq ptr %i.alh, %.sroa.217.27
  br i1 %.not.i.i.i.i.i.i.i593, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i597, label %.lr.ph.i.i.i.i.i.i.i590, !llvm.loop !553

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i597: ; preds = %.lr.ph.i.i.i.i.i.i.i590, %middle.block2701, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i586
  %.0.lcssa.i.i.i.i.i.i.i595 = phi ptr [ %i.akt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i586 ], [ %i.ala, %middle.block2701 ], [ %i.ali, %.lr.ph.i.i.i.i.i.i.i590 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.27, i64 noundef %i.akl) #28
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %i.akr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit598

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit598: ; preds = %bb.ck, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i597
  %.sroa.217.28 = phi ptr [ %i.alj, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i597 ], [ %.sroa.217.27, %bb.ck ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i595.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i595, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i597 ], [ %.sroa.76.27, %bb.ck ] ; 4 uses
  %.sroa.01677.28 = phi ptr [ %i.akt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i597 ], [ %.sroa.01677.27, %bb.ck ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i595.pn2707 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i595.pn to i64 ; 2 uses
  %.sroa.76.28 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i595.pn, i64 8 ; 2 uses
  %i.alk = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.82, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.all = icmp eq ptr %i.alk, null
  br i1 %i.all, label %bb.cn, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit599, !prof !5

bb.cn:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit598
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit599

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit599: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit598, %bb.cn
  %i.alm = ptrtoint ptr %i.alk to i64             ; 2 uses
  %.not.i.i.i600 = icmp eq ptr %.sroa.76.28, %.sroa.217.28
  br i1 %.not.i.i.i600, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit599
  store i64 %i.alm, ptr %.sroa.76.28, align 8
  %i.aln = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i595.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit613

bb.cp:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit599
  %i.alo = ptrtoint ptr %.sroa.217.28 to i64
  %i.alp = ptrtoint ptr %.sroa.01677.28 to i64    ; 3 uses
  %i.alq = sub i64 %i.alo, %i.alp                 ; 4 uses
  %i.alr = icmp eq i64 %i.alq, 9223372036854775800
  br i1 %i.alr, label %bb.cq, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i601

bb.cq:                                            ; preds = %bb.cp
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i601: ; preds = %bb.cp
  %i.als = ashr exact i64 %i.alq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i602 = tail call i64 @llvm.umax.i64(i64 %i.als, i64 1)
  %i.alt = add nsw i64 %.sroa.speculated.i.i.i.i.i602, %i.als ; 2 uses
  %i.alu = icmp ult i64 %i.alt, %i.als
  %i.alv = tail call i64 @llvm.umin.i64(i64 %i.alt, i64 1152921504606846975)
  %i.alw = select i1 %i.alu, i64 1152921504606846975, i64 %i.alv ; 3 uses
  %.not.i.i.i.i.i603 = icmp ne i64 %i.alw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i603)
  %i.alx = shl nuw nsw i64 %i.alw, 3
  %i.aly = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alx) #27 ; 8 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.alq
  store i64 %i.alm, ptr %i.alz, align 8
  %.not10.i.i.i.i.i.i.i604 = icmp eq ptr %.sroa.01677.28, %.sroa.217.28
  br i1 %.not10.i.i.i.i.i.i.i604, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612, label %.lr.ph.i.i.i.i.i.i.i605.preheader

.lr.ph.i.i.i.i.i.i.i605.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i601
  %i.ama = ptrtoaddr ptr %i.aly to i64
  %i.amb = sub i64 %.0.lcssa.i.i.i.i.i.i.i595.pn2707, %i.alp ; 2 uses
  %i.amc = lshr i64 %i.amb, 3
  %i.amd = add nuw nsw i64 %i.amc, 1              ; 2 uses
  %min.iters.check2709 = icmp ult i64 %i.amb, 56
  %i.ame = sub i64 %i.ama, %i.alp
  %diff.check2706 = icmp ult i64 %i.ame, 32
  %or.cond3601 = or i1 %min.iters.check2709, %diff.check2706
  br i1 %or.cond3601, label %.lr.ph.i.i.i.i.i.i.i605.preheader3735, label %vector.ph2710

vector.ph2710:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i605.preheader
  %n.vec2712 = and i64 %i.amd, 4611686018427387900 ; 3 uses
  %i.amf = shl i64 %n.vec2712, 3                  ; 2 uses
  %i.amg = getelementptr i8, ptr %i.aly, i64 %i.amf ; 2 uses
  %i.amh = getelementptr i8, ptr %.sroa.01677.28, i64 %i.amf
  br label %vector.body2713

vector.body2713:                                  ; preds = %vector.body2713, %vector.ph2710
  %index2714 = phi i64 [ 0, %vector.ph2710 ], [ %index.next2719, %vector.body2713 ] ; 2 uses
  %i.ami = shl i64 %index2714, 3                  ; 2 uses
  %next.gep2715 = getelementptr i8, ptr %i.aly, i64 %i.ami ; 2 uses
  %next.gep2716 = getelementptr i8, ptr %.sroa.01677.28, i64 %i.ami ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.amj = getelementptr i8, ptr %next.gep2716, i64 16
  %wide.load2717 = load <2 x i64>, ptr %next.gep2716, align 8, !alias.scope !557, !noalias !554
  %wide.load2718 = load <2 x i64>, ptr %i.amj, align 8, !alias.scope !557, !noalias !554
  %i.amk = getelementptr i8, ptr %next.gep2715, i64 16
  store <2 x i64> %wide.load2717, ptr %next.gep2715, align 8, !alias.scope !554, !noalias !557
  store <2 x i64> %wide.load2718, ptr %i.amk, align 8, !alias.scope !554, !noalias !557
  %index.next2719 = add nuw i64 %index2714, 4     ; 2 uses
  %i.aml = icmp eq i64 %index.next2719, %n.vec2712
  br i1 %i.aml, label %middle.block2720, label %vector.body2713, !llvm.loop !559

middle.block2720:                                 ; preds = %vector.body2713
  %cmp.n2721 = icmp eq i64 %i.amd, %n.vec2712
  br i1 %cmp.n2721, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612, label %.lr.ph.i.i.i.i.i.i.i605.preheader3735

.lr.ph.i.i.i.i.i.i.i605.preheader3735:            ; preds = %.lr.ph.i.i.i.i.i.i.i605.preheader, %middle.block2720
  %.012.i.i.i.i.i.i.i606.ph = phi ptr [ %i.aly, %.lr.ph.i.i.i.i.i.i.i605.preheader ], [ %i.amg, %middle.block2720 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i607.ph = phi ptr [ %.sroa.01677.28, %.lr.ph.i.i.i.i.i.i.i605.preheader ], [ %i.amh, %middle.block2720 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i607.ph3817 = ptrtoint ptr %.0911.i.i.i.i.i.i.i607.ph to i64
  %i.amm = sub i64 %.0.lcssa.i.i.i.i.i.i.i595.pn2707, %.0911.i.i.i.i.i.i.i607.ph3817 ; 2 uses
  %i.amn = lshr i64 %i.amm, 3
  %i.amo = add nuw nsw i64 %i.amn, 1
  %xtraiter3818 = and i64 %i.amo, 7               ; 2 uses
  %lcmp.mod3819.not = icmp eq i64 %xtraiter3818, 0
  br i1 %lcmp.mod3819.not, label %.lr.ph.i.i.i.i.i.i.i605.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i605.prol

.lr.ph.i.i.i.i.i.i.i605.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i605.preheader3735, %.lr.ph.i.i.i.i.i.i.i605.prol
  %.012.i.i.i.i.i.i.i606.prol = phi ptr [ %i.amr, %.lr.ph.i.i.i.i.i.i.i605.prol ], [ %.012.i.i.i.i.i.i.i606.ph, %.lr.ph.i.i.i.i.i.i.i605.preheader3735 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i607.prol = phi ptr [ %i.amq, %.lr.ph.i.i.i.i.i.i.i605.prol ], [ %.0911.i.i.i.i.i.i.i607.ph, %.lr.ph.i.i.i.i.i.i.i605.preheader3735 ] ; 2 uses
  %prol.iter3820 = phi i64 [ %prol.iter3820.next, %.lr.ph.i.i.i.i.i.i.i605.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i605.preheader3735 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.amp = load i64, ptr %.0911.i.i.i.i.i.i.i607.prol, align 8, !alias.scope !557, !noalias !554
  store i64 %i.amp, ptr %.012.i.i.i.i.i.i.i606.prol, align 8, !alias.scope !554, !noalias !557
  %i.amq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607.prol, i64 8 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606.prol, i64 8 ; 3 uses
  %prol.iter3820.next = add i64 %prol.iter3820, 1 ; 2 uses
  %prol.iter3820.cmp.not = icmp eq i64 %prol.iter3820.next, %xtraiter3818
  br i1 %prol.iter3820.cmp.not, label %.lr.ph.i.i.i.i.i.i.i605.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i605.prol, !llvm.loop !560

.lr.ph.i.i.i.i.i.i.i605.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i605.prol, %.lr.ph.i.i.i.i.i.i.i605.preheader3735
  %.lcssa3736.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i605.preheader3735 ], [ %i.amr, %.lr.ph.i.i.i.i.i.i.i605.prol ]
  %.012.i.i.i.i.i.i.i606.unr = phi ptr [ %.012.i.i.i.i.i.i.i606.ph, %.lr.ph.i.i.i.i.i.i.i605.preheader3735 ], [ %i.amr, %.lr.ph.i.i.i.i.i.i.i605.prol ]
  %.0911.i.i.i.i.i.i.i607.unr = phi ptr [ %.0911.i.i.i.i.i.i.i607.ph, %.lr.ph.i.i.i.i.i.i.i605.preheader3735 ], [ %i.amq, %.lr.ph.i.i.i.i.i.i.i605.prol ]
  %i.ams = icmp ult i64 %i.amm, 56
  br i1 %i.ams, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612, label %.lr.ph.i.i.i.i.i.i.i605

.lr.ph.i.i.i.i.i.i.i605:                          ; preds = %.lr.ph.i.i.i.i.i.i.i605.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i605
  %.012.i.i.i.i.i.i.i606 = phi ptr [ %i.anq, %.lr.ph.i.i.i.i.i.i.i605 ], [ %.012.i.i.i.i.i.i.i606.unr, %.lr.ph.i.i.i.i.i.i.i605.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i607 = phi ptr [ %i.anp, %.lr.ph.i.i.i.i.i.i.i605 ], [ %.0911.i.i.i.i.i.i.i607.unr, %.lr.ph.i.i.i.i.i.i.i605.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.amt = load i64, ptr %.0911.i.i.i.i.i.i.i607, align 8, !alias.scope !557, !noalias !554
  store i64 %i.amt, ptr %.012.i.i.i.i.i.i.i606, align 8, !alias.scope !554, !noalias !557
  %i.amu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 8
  %i.amv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.amw = load i64, ptr %i.amu, align 8, !alias.scope !563, !noalias !561
  store i64 %i.amw, ptr %i.amv, align 8, !alias.scope !561, !noalias !563
  %i.amx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 16
  %i.amy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.amz = load i64, ptr %i.amx, align 8, !alias.scope !567, !noalias !565
  store i64 %i.amz, ptr %i.amy, align 8, !alias.scope !565, !noalias !567
  %i.ana = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 24
  %i.anb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.anc = load i64, ptr %i.ana, align 8, !alias.scope !571, !noalias !569
  store i64 %i.anc, ptr %i.anb, align 8, !alias.scope !569, !noalias !571
  %i.and = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 32
  %i.ane = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.anf = load i64, ptr %i.and, align 8, !alias.scope !575, !noalias !573
  store i64 %i.anf, ptr %i.ane, align 8, !alias.scope !573, !noalias !575
  %i.ang = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 40
  %i.anh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.ani = load i64, ptr %i.ang, align 8, !alias.scope !579, !noalias !577
  store i64 %i.ani, ptr %i.anh, align 8, !alias.scope !577, !noalias !579
  %i.anj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 48
  %i.ank = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.anl = load i64, ptr %i.anj, align 8, !alias.scope !583, !noalias !581
  store i64 %i.anl, ptr %i.ank, align 8, !alias.scope !581, !noalias !583
  %i.anm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 56 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.ano = load i64, ptr %i.anm, align 8, !alias.scope !587, !noalias !585
  store i64 %i.ano, ptr %i.ann, align 8, !alias.scope !585, !noalias !587
  %i.anp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 64
  %i.anq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i608.7 = icmp eq ptr %i.anm, %.0.lcssa.i.i.i.i.i.i.i595.pn
  br i1 %.not.i.i.i.i.i.i.i608.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612, label %.lr.ph.i.i.i.i.i.i.i605, !llvm.loop !589

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612: ; preds = %.lr.ph.i.i.i.i.i.i.i605.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i605, %middle.block2720, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i601
  %.0.lcssa.i.i.i.i.i.i.i610 = phi ptr [ %i.aly, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i601 ], [ %i.amg, %middle.block2720 ], [ %.lcssa3736.unr, %.lr.ph.i.i.i.i.i.i.i605.prol.loopexit ], [ %i.anq, %.lr.ph.i.i.i.i.i.i.i605 ]
  %i.anr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i610, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.28, i64 noundef %i.alq) #28
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.aly, i64 %i.alw
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit613

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit613: ; preds = %bb.co, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612
  %.sroa.217.29 = phi ptr [ %i.ans, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612 ], [ %.sroa.217.28, %bb.co ] ; 5 uses
  %.sroa.76.29 = phi ptr [ %i.anr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612 ], [ %i.aln, %bb.co ] ; 3 uses
  %.sroa.01677.29 = phi ptr [ %i.aly, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i612 ], [ %.sroa.01677.28, %bb.co ] ; 7 uses
  %i.ant = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.83, i32 noundef 1, i32 noundef 10) #25 ; 2 uses
  %i.anu = icmp eq ptr %i.ant, null
  br i1 %i.anu, label %bb.cr, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit614, !prof !5

bb.cr:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit613
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit614

_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit614: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit613, %bb.cr
  %i.anv = ptrtoint ptr %i.ant to i64             ; 2 uses
  %.not.i.i.i615 = icmp eq ptr %.sroa.76.29, %.sroa.217.29
  br i1 %.not.i.i.i615, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit614
  store i64 %i.anv, ptr %.sroa.76.29, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit628

bb.ct:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit614
  %i.anw = ptrtoint ptr %.sroa.217.29 to i64      ; 2 uses
  %i.anx = ptrtoint ptr %.sroa.01677.29 to i64    ; 3 uses
  %i.any = sub i64 %i.anw, %i.anx                 ; 4 uses
  %i.anz = icmp eq i64 %i.any, 9223372036854775800
  br i1 %i.anz, label %bb.cu, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i616

bb.cu:                                            ; preds = %bb.ct
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i616: ; preds = %bb.ct
  %i.aoa = ashr exact i64 %i.any, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i617 = tail call i64 @llvm.umax.i64(i64 %i.aoa, i64 1)
  %i.aob = add nsw i64 %.sroa.speculated.i.i.i.i.i617, %i.aoa ; 2 uses
  %i.aoc = icmp ult i64 %i.aob, %i.aoa
  %i.aod = tail call i64 @llvm.umin.i64(i64 %i.aob, i64 1152921504606846975)
  %i.aoe = select i1 %i.aoc, i64 1152921504606846975, i64 %i.aod ; 3 uses
  %.not.i.i.i.i.i618 = icmp ne i64 %i.aoe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i618)
  %i.aof = shl nuw nsw i64 %i.aoe, 3
  %i.aog = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aof) #27 ; 8 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 %i.any
  store i64 %i.anv, ptr %i.aoh, align 8
  %.not10.i.i.i.i.i.i.i619 = icmp eq ptr %.sroa.01677.29, %.sroa.217.29
  br i1 %.not10.i.i.i.i.i.i.i619, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i627, label %.lr.ph.i.i.i.i.i.i.i620.preheader

.lr.ph.i.i.i.i.i.i.i620.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i616
  %i.aoi = ptrtoaddr ptr %i.aog to i64
  %24 = sub i64 %i.anw, %i.anx
  %25 = add i64 %24, -8                           ; 2 uses
  %i.aoj = lshr i64 %25, 3
  %i.aok = add nuw nsw i64 %i.aoj, 1              ; 2 uses
  %min.iters.check2727 = icmp ult i64 %25, 56
  %i.aol = sub i64 %i.aoi, %i.anx
  %diff.check2725 = icmp ult i64 %i.aol, 32
  %or.cond3602 = or i1 %min.iters.check2727, %diff.check2725
  br i1 %or.cond3602, label %.lr.ph.i.i.i.i.i.i.i620.preheader3733, label %vector.ph2728

vector.ph2728:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i620.preheader
  %n.vec2730 = and i64 %i.aok, 4611686018427387900 ; 3 uses
  %i.aom = shl i64 %n.vec2730, 3                  ; 2 uses
  %i.aon = getelementptr i8, ptr %i.aog, i64 %i.aom ; 2 uses
  %i.aoo = getelementptr i8, ptr %.sroa.01677.29, i64 %i.aom
  br label %vector.body2731

vector.body2731:                                  ; preds = %vector.body2731, %vector.ph2728
  %index2732 = phi i64 [ 0, %vector.ph2728 ], [ %index.next2737, %vector.body2731 ] ; 2 uses
  %i.aop = shl i64 %index2732, 3                  ; 2 uses
  %next.gep2733 = getelementptr i8, ptr %i.aog, i64 %i.aop ; 2 uses
  %next.gep2734 = getelementptr i8, ptr %.sroa.01677.29, i64 %i.aop ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.aoq = getelementptr i8, ptr %next.gep2734, i64 16
  %wide.load2735 = load <2 x i64>, ptr %next.gep2734, align 8, !alias.scope !593, !noalias !590
  %wide.load2736 = load <2 x i64>, ptr %i.aoq, align 8, !alias.scope !593, !noalias !590
  %i.aor = getelementptr i8, ptr %next.gep2733, i64 16
  store <2 x i64> %wide.load2735, ptr %next.gep2733, align 8, !alias.scope !590, !noalias !593
  store <2 x i64> %wide.load2736, ptr %i.aor, align 8, !alias.scope !590, !noalias !593
  %index.next2737 = add nuw i64 %index2732, 4     ; 2 uses
  %i.aos = icmp eq i64 %index.next2737, %n.vec2730
  br i1 %i.aos, label %middle.block2738, label %vector.body2731, !llvm.loop !595

middle.block2738:                                 ; preds = %vector.body2731
  %cmp.n2739 = icmp eq i64 %i.aok, %n.vec2730
  br i1 %cmp.n2739, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i627, label %.lr.ph.i.i.i.i.i.i.i620.preheader3733

.lr.ph.i.i.i.i.i.i.i620.preheader3733:            ; preds = %.lr.ph.i.i.i.i.i.i.i620.preheader, %middle.block2738
  %.012.i.i.i.i.i.i.i621.ph = phi ptr [ %i.aog, %.lr.ph.i.i.i.i.i.i.i620.preheader ], [ %i.aon, %middle.block2738 ]
  %.0911.i.i.i.i.i.i.i622.ph = phi ptr [ %.sroa.01677.29, %.lr.ph.i.i.i.i.i.i.i620.preheader ], [ %i.aoo, %middle.block2738 ]
  br label %.lr.ph.i.i.i.i.i.i.i620

.lr.ph.i.i.i.i.i.i.i620:                          ; preds = %.lr.ph.i.i.i.i.i.i.i620.preheader3733, %.lr.ph.i.i.i.i.i.i.i620
  %.012.i.i.i.i.i.i.i621 = phi ptr [ %i.aov, %.lr.ph.i.i.i.i.i.i.i620 ], [ %.012.i.i.i.i.i.i.i621.ph, %.lr.ph.i.i.i.i.i.i.i620.preheader3733 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i622 = phi ptr [ %i.aou, %.lr.ph.i.i.i.i.i.i.i620 ], [ %.0911.i.i.i.i.i.i.i622.ph, %.lr.ph.i.i.i.i.i.i.i620.preheader3733 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.aot = load i64, ptr %.0911.i.i.i.i.i.i.i622, align 8, !alias.scope !593, !noalias !590
  store i64 %i.aot, ptr %.012.i.i.i.i.i.i.i621, align 8, !alias.scope !590, !noalias !593
  %i.aou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i622, i64 8 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i621, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i623 = icmp eq ptr %i.aou, %.sroa.217.29
  br i1 %.not.i.i.i.i.i.i.i623, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i627, label %.lr.ph.i.i.i.i.i.i.i620, !llvm.loop !596

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i627: ; preds = %.lr.ph.i.i.i.i.i.i.i620, %middle.block2738, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i616
  %.0.lcssa.i.i.i.i.i.i.i625 = phi ptr [ %i.aog, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i616 ], [ %i.aon, %middle.block2738 ], [ %i.aov, %.lr.ph.i.i.i.i.i.i.i620 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.29, i64 noundef %i.any) #28
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.aog, i64 %i.aoe
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit628

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit628: ; preds = %bb.cs, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i627
  %.sroa.217.30 = phi ptr [ %i.aow, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i627 ], [ %.sroa.217.29, %bb.cs ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i625.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i625, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i627 ], [ %.sroa.76.29, %bb.cs ] ; 4 uses
  %.sroa.01677.30 = phi ptr [ %i.aog, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i627 ], [ %.sroa.01677.29, %bb.cs ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i625.pn2744 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i625.pn to i64 ; 2 uses
  %.sroa.76.30 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i625.pn, i64 8 ; 2 uses
  %i.aox = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.84, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.aoy = icmp eq ptr %i.aox, null
  br i1 %i.aoy, label %bb.cv, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit629, !prof !5

bb.cv:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit628
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit629

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit629: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit628, %bb.cv
  %i.aoz = ptrtoint ptr %i.aox to i64             ; 2 uses
  %.not.i.i.i630 = icmp eq ptr %.sroa.76.30, %.sroa.217.30
  br i1 %.not.i.i.i630, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit629
  store i64 %i.aoz, ptr %.sroa.76.30, align 8
  %i.apa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i625.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit643

bb.cx:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit629
  %i.apb = ptrtoint ptr %.sroa.217.30 to i64
  %i.apc = ptrtoint ptr %.sroa.01677.30 to i64    ; 3 uses
  %i.apd = sub i64 %i.apb, %i.apc                 ; 4 uses
  %i.ape = icmp eq i64 %i.apd, 9223372036854775800
  br i1 %i.ape, label %bb.cy, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i631

bb.cy:                                            ; preds = %bb.cx
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i631: ; preds = %bb.cx
  %i.apf = ashr exact i64 %i.apd, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i632 = tail call i64 @llvm.umax.i64(i64 %i.apf, i64 1)
  %i.apg = add nsw i64 %.sroa.speculated.i.i.i.i.i632, %i.apf ; 2 uses
  %i.aph = icmp ult i64 %i.apg, %i.apf
  %i.api = tail call i64 @llvm.umin.i64(i64 %i.apg, i64 1152921504606846975)
  %i.apj = select i1 %i.aph, i64 1152921504606846975, i64 %i.api ; 3 uses
  %.not.i.i.i.i.i633 = icmp ne i64 %i.apj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i633)
  %i.apk = shl nuw nsw i64 %i.apj, 3
  %i.apl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apk) #27 ; 8 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 %i.apd
  store i64 %i.aoz, ptr %i.apm, align 8
  %.not10.i.i.i.i.i.i.i634 = icmp eq ptr %.sroa.01677.30, %.sroa.217.30
  br i1 %.not10.i.i.i.i.i.i.i634, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642, label %.lr.ph.i.i.i.i.i.i.i635.preheader

.lr.ph.i.i.i.i.i.i.i635.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i631
  %i.apn = ptrtoaddr ptr %i.apl to i64
  %i.apo = sub i64 %.0.lcssa.i.i.i.i.i.i.i625.pn2744, %i.apc ; 2 uses
  %i.app = lshr i64 %i.apo, 3
  %i.apq = add nuw nsw i64 %i.app, 1              ; 2 uses
  %min.iters.check2746 = icmp ult i64 %i.apo, 56
  %i.apr = sub i64 %i.apn, %i.apc
  %diff.check2743 = icmp ult i64 %i.apr, 32
  %or.cond3603 = or i1 %min.iters.check2746, %diff.check2743
  br i1 %or.cond3603, label %.lr.ph.i.i.i.i.i.i.i635.preheader3731, label %vector.ph2747

vector.ph2747:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i635.preheader
  %n.vec2749 = and i64 %i.apq, 4611686018427387900 ; 3 uses
  %i.aps = shl i64 %n.vec2749, 3                  ; 2 uses
  %i.apt = getelementptr i8, ptr %i.apl, i64 %i.aps ; 2 uses
  %i.apu = getelementptr i8, ptr %.sroa.01677.30, i64 %i.aps
  br label %vector.body2750

vector.body2750:                                  ; preds = %vector.body2750, %vector.ph2747
  %index2751 = phi i64 [ 0, %vector.ph2747 ], [ %index.next2756, %vector.body2750 ] ; 2 uses
  %i.apv = shl i64 %index2751, 3                  ; 2 uses
  %next.gep2752 = getelementptr i8, ptr %i.apl, i64 %i.apv ; 2 uses
  %next.gep2753 = getelementptr i8, ptr %.sroa.01677.30, i64 %i.apv ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.apw = getelementptr i8, ptr %next.gep2753, i64 16
  %wide.load2754 = load <2 x i64>, ptr %next.gep2753, align 8, !alias.scope !600, !noalias !597
  %wide.load2755 = load <2 x i64>, ptr %i.apw, align 8, !alias.scope !600, !noalias !597
  %i.apx = getelementptr i8, ptr %next.gep2752, i64 16
  store <2 x i64> %wide.load2754, ptr %next.gep2752, align 8, !alias.scope !597, !noalias !600
  store <2 x i64> %wide.load2755, ptr %i.apx, align 8, !alias.scope !597, !noalias !600
  %index.next2756 = add nuw i64 %index2751, 4     ; 2 uses
  %i.apy = icmp eq i64 %index.next2756, %n.vec2749
  br i1 %i.apy, label %middle.block2757, label %vector.body2750, !llvm.loop !602

middle.block2757:                                 ; preds = %vector.body2750
  %cmp.n2758 = icmp eq i64 %i.apq, %n.vec2749
  br i1 %cmp.n2758, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642, label %.lr.ph.i.i.i.i.i.i.i635.preheader3731

.lr.ph.i.i.i.i.i.i.i635.preheader3731:            ; preds = %.lr.ph.i.i.i.i.i.i.i635.preheader, %middle.block2757
  %.012.i.i.i.i.i.i.i636.ph = phi ptr [ %i.apl, %.lr.ph.i.i.i.i.i.i.i635.preheader ], [ %i.apt, %middle.block2757 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i637.ph = phi ptr [ %.sroa.01677.30, %.lr.ph.i.i.i.i.i.i.i635.preheader ], [ %i.apu, %middle.block2757 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i637.ph3821 = ptrtoint ptr %.0911.i.i.i.i.i.i.i637.ph to i64
  %i.apz = sub i64 %.0.lcssa.i.i.i.i.i.i.i625.pn2744, %.0911.i.i.i.i.i.i.i637.ph3821 ; 2 uses
  %i.aqa = lshr i64 %i.apz, 3
  %i.aqb = add nuw nsw i64 %i.aqa, 1
  %xtraiter3822 = and i64 %i.aqb, 7               ; 2 uses
  %lcmp.mod3823.not = icmp eq i64 %xtraiter3822, 0
  br i1 %lcmp.mod3823.not, label %.lr.ph.i.i.i.i.i.i.i635.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i635.prol

.lr.ph.i.i.i.i.i.i.i635.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i635.preheader3731, %.lr.ph.i.i.i.i.i.i.i635.prol
  %.012.i.i.i.i.i.i.i636.prol = phi ptr [ %i.aqe, %.lr.ph.i.i.i.i.i.i.i635.prol ], [ %.012.i.i.i.i.i.i.i636.ph, %.lr.ph.i.i.i.i.i.i.i635.preheader3731 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i637.prol = phi ptr [ %i.aqd, %.lr.ph.i.i.i.i.i.i.i635.prol ], [ %.0911.i.i.i.i.i.i.i637.ph, %.lr.ph.i.i.i.i.i.i.i635.preheader3731 ] ; 2 uses
  %prol.iter3824 = phi i64 [ %prol.iter3824.next, %.lr.ph.i.i.i.i.i.i.i635.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i635.preheader3731 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.aqc = load i64, ptr %.0911.i.i.i.i.i.i.i637.prol, align 8, !alias.scope !600, !noalias !597
  store i64 %i.aqc, ptr %.012.i.i.i.i.i.i.i636.prol, align 8, !alias.scope !597, !noalias !600
  %i.aqd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637.prol, i64 8 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636.prol, i64 8 ; 3 uses
  %prol.iter3824.next = add i64 %prol.iter3824, 1 ; 2 uses
  %prol.iter3824.cmp.not = icmp eq i64 %prol.iter3824.next, %xtraiter3822
  br i1 %prol.iter3824.cmp.not, label %.lr.ph.i.i.i.i.i.i.i635.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i635.prol, !llvm.loop !603

.lr.ph.i.i.i.i.i.i.i635.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i635.prol, %.lr.ph.i.i.i.i.i.i.i635.preheader3731
  %.lcssa3732.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i635.preheader3731 ], [ %i.aqe, %.lr.ph.i.i.i.i.i.i.i635.prol ]
  %.012.i.i.i.i.i.i.i636.unr = phi ptr [ %.012.i.i.i.i.i.i.i636.ph, %.lr.ph.i.i.i.i.i.i.i635.preheader3731 ], [ %i.aqe, %.lr.ph.i.i.i.i.i.i.i635.prol ]
  %.0911.i.i.i.i.i.i.i637.unr = phi ptr [ %.0911.i.i.i.i.i.i.i637.ph, %.lr.ph.i.i.i.i.i.i.i635.preheader3731 ], [ %i.aqd, %.lr.ph.i.i.i.i.i.i.i635.prol ]
  %i.aqf = icmp ult i64 %i.apz, 56
  br i1 %i.aqf, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642, label %.lr.ph.i.i.i.i.i.i.i635

.lr.ph.i.i.i.i.i.i.i635:                          ; preds = %.lr.ph.i.i.i.i.i.i.i635.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i635
  %.012.i.i.i.i.i.i.i636 = phi ptr [ %i.ard, %.lr.ph.i.i.i.i.i.i.i635 ], [ %.012.i.i.i.i.i.i.i636.unr, %.lr.ph.i.i.i.i.i.i.i635.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i637 = phi ptr [ %i.arc, %.lr.ph.i.i.i.i.i.i.i635 ], [ %.0911.i.i.i.i.i.i.i637.unr, %.lr.ph.i.i.i.i.i.i.i635.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.aqg = load i64, ptr %.0911.i.i.i.i.i.i.i637, align 8, !alias.scope !600, !noalias !597
  store i64 %i.aqg, ptr %.012.i.i.i.i.i.i.i636, align 8, !alias.scope !597, !noalias !600
  %i.aqh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637, i64 8
  %i.aqi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.aqj = load i64, ptr %i.aqh, align 8, !alias.scope !606, !noalias !604
  store i64 %i.aqj, ptr %i.aqi, align 8, !alias.scope !604, !noalias !606
  %i.aqk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637, i64 16
  %i.aql = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.aqm = load i64, ptr %i.aqk, align 8, !alias.scope !610, !noalias !608
  store i64 %i.aqm, ptr %i.aql, align 8, !alias.scope !608, !noalias !610
  %i.aqn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637, i64 24
  %i.aqo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.aqp = load i64, ptr %i.aqn, align 8, !alias.scope !614, !noalias !612
  store i64 %i.aqp, ptr %i.aqo, align 8, !alias.scope !612, !noalias !614
  %i.aqq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637, i64 32
  %i.aqr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.aqs = load i64, ptr %i.aqq, align 8, !alias.scope !618, !noalias !616
  store i64 %i.aqs, ptr %i.aqr, align 8, !alias.scope !616, !noalias !618
  %i.aqt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637, i64 40
  %i.aqu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.aqv = load i64, ptr %i.aqt, align 8, !alias.scope !622, !noalias !620
  store i64 %i.aqv, ptr %i.aqu, align 8, !alias.scope !620, !noalias !622
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637, i64 48
  %i.aqx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.aqy = load i64, ptr %i.aqw, align 8, !alias.scope !626, !noalias !624
  store i64 %i.aqy, ptr %i.aqx, align 8, !alias.scope !624, !noalias !626
  %i.aqz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637, i64 56 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.arb = load i64, ptr %i.aqz, align 8, !alias.scope !630, !noalias !628
  store i64 %i.arb, ptr %i.ara, align 8, !alias.scope !628, !noalias !630
  %i.arc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i637, i64 64
  %i.ard = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i636, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i638.7 = icmp eq ptr %i.aqz, %.0.lcssa.i.i.i.i.i.i.i625.pn
  br i1 %.not.i.i.i.i.i.i.i638.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642, label %.lr.ph.i.i.i.i.i.i.i635, !llvm.loop !632

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642: ; preds = %.lr.ph.i.i.i.i.i.i.i635.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i635, %middle.block2757, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i631
  %.0.lcssa.i.i.i.i.i.i.i640 = phi ptr [ %i.apl, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i631 ], [ %i.apt, %middle.block2757 ], [ %.lcssa3732.unr, %.lr.ph.i.i.i.i.i.i.i635.prol.loopexit ], [ %i.ard, %.lr.ph.i.i.i.i.i.i.i635 ]
  %i.are = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i640, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.30, i64 noundef %i.apd) #28
  %i.arf = getelementptr inbounds nuw [8 x i8], ptr %i.apl, i64 %i.apj
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit643

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit643: ; preds = %bb.cw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642
  %.sroa.217.31 = phi ptr [ %i.arf, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642 ], [ %.sroa.217.30, %bb.cw ] ; 5 uses
  %.sroa.76.31 = phi ptr [ %i.are, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642 ], [ %i.apa, %bb.cw ] ; 3 uses
  %.sroa.01677.31 = phi ptr [ %i.apl, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i642 ], [ %.sroa.01677.30, %bb.cw ] ; 7 uses
  %i.arg = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.85, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.arh = icmp eq ptr %i.arg, null
  br i1 %i.arh, label %bb.cz, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit644, !prof !5

bb.cz:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit643
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit644

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit644: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit643, %bb.cz
  %i.ari = ptrtoint ptr %i.arg to i64             ; 2 uses
  %.not.i.i.i645 = icmp eq ptr %.sroa.76.31, %.sroa.217.31
  br i1 %.not.i.i.i645, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit644
  store i64 %i.ari, ptr %.sroa.76.31, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit658

bb.db:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit644
  %i.arj = ptrtoint ptr %.sroa.217.31 to i64      ; 2 uses
  %i.ark = ptrtoint ptr %.sroa.01677.31 to i64    ; 3 uses
  %i.arl = sub i64 %i.arj, %i.ark                 ; 4 uses
  %i.arm = icmp eq i64 %i.arl, 9223372036854775800
  br i1 %i.arm, label %bb.dc, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i646

bb.dc:                                            ; preds = %bb.db
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i646: ; preds = %bb.db
  %i.arn = ashr exact i64 %i.arl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i647 = tail call i64 @llvm.umax.i64(i64 %i.arn, i64 1)
  %i.aro = add nsw i64 %.sroa.speculated.i.i.i.i.i647, %i.arn ; 2 uses
  %i.arp = icmp ult i64 %i.aro, %i.arn
  %i.arq = tail call i64 @llvm.umin.i64(i64 %i.aro, i64 1152921504606846975)
  %i.arr = select i1 %i.arp, i64 1152921504606846975, i64 %i.arq ; 3 uses
  %.not.i.i.i.i.i648 = icmp ne i64 %i.arr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i648)
  %i.ars = shl nuw nsw i64 %i.arr, 3
  %i.art = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ars) #27 ; 8 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.arl
  store i64 %i.ari, ptr %i.aru, align 8
  %.not10.i.i.i.i.i.i.i649 = icmp eq ptr %.sroa.01677.31, %.sroa.217.31
  br i1 %.not10.i.i.i.i.i.i.i649, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i657, label %.lr.ph.i.i.i.i.i.i.i650.preheader

.lr.ph.i.i.i.i.i.i.i650.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i646
  %i.arv = ptrtoaddr ptr %i.art to i64
  %26 = sub i64 %i.arj, %i.ark
  %27 = add i64 %26, -8                           ; 2 uses
  %i.arw = lshr i64 %27, 3
  %i.arx = add nuw nsw i64 %i.arw, 1              ; 2 uses
  %min.iters.check2764 = icmp ult i64 %27, 56
  %i.ary = sub i64 %i.arv, %i.ark
  %diff.check2762 = icmp ult i64 %i.ary, 32
  %or.cond3604 = or i1 %min.iters.check2764, %diff.check2762
  br i1 %or.cond3604, label %.lr.ph.i.i.i.i.i.i.i650.preheader3729, label %vector.ph2765

vector.ph2765:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i650.preheader
  %n.vec2767 = and i64 %i.arx, 4611686018427387900 ; 3 uses
  %i.arz = shl i64 %n.vec2767, 3                  ; 2 uses
  %i.asa = getelementptr i8, ptr %i.art, i64 %i.arz ; 2 uses
  %i.asb = getelementptr i8, ptr %.sroa.01677.31, i64 %i.arz
  br label %vector.body2768

vector.body2768:                                  ; preds = %vector.body2768, %vector.ph2765
  %index2769 = phi i64 [ 0, %vector.ph2765 ], [ %index.next2774, %vector.body2768 ] ; 2 uses
  %i.asc = shl i64 %index2769, 3                  ; 2 uses
  %next.gep2770 = getelementptr i8, ptr %i.art, i64 %i.asc ; 2 uses
  %next.gep2771 = getelementptr i8, ptr %.sroa.01677.31, i64 %i.asc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.asd = getelementptr i8, ptr %next.gep2771, i64 16
  %wide.load2772 = load <2 x i64>, ptr %next.gep2771, align 8, !alias.scope !636, !noalias !633
  %wide.load2773 = load <2 x i64>, ptr %i.asd, align 8, !alias.scope !636, !noalias !633
  %i.ase = getelementptr i8, ptr %next.gep2770, i64 16
  store <2 x i64> %wide.load2772, ptr %next.gep2770, align 8, !alias.scope !633, !noalias !636
  store <2 x i64> %wide.load2773, ptr %i.ase, align 8, !alias.scope !633, !noalias !636
  %index.next2774 = add nuw i64 %index2769, 4     ; 2 uses
  %i.asf = icmp eq i64 %index.next2774, %n.vec2767
  br i1 %i.asf, label %middle.block2775, label %vector.body2768, !llvm.loop !638

middle.block2775:                                 ; preds = %vector.body2768
  %cmp.n2776 = icmp eq i64 %i.arx, %n.vec2767
  br i1 %cmp.n2776, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i657, label %.lr.ph.i.i.i.i.i.i.i650.preheader3729

.lr.ph.i.i.i.i.i.i.i650.preheader3729:            ; preds = %.lr.ph.i.i.i.i.i.i.i650.preheader, %middle.block2775
  %.012.i.i.i.i.i.i.i651.ph = phi ptr [ %i.art, %.lr.ph.i.i.i.i.i.i.i650.preheader ], [ %i.asa, %middle.block2775 ]
  %.0911.i.i.i.i.i.i.i652.ph = phi ptr [ %.sroa.01677.31, %.lr.ph.i.i.i.i.i.i.i650.preheader ], [ %i.asb, %middle.block2775 ]
  br label %.lr.ph.i.i.i.i.i.i.i650

.lr.ph.i.i.i.i.i.i.i650:                          ; preds = %.lr.ph.i.i.i.i.i.i.i650.preheader3729, %.lr.ph.i.i.i.i.i.i.i650
  %.012.i.i.i.i.i.i.i651 = phi ptr [ %i.asi, %.lr.ph.i.i.i.i.i.i.i650 ], [ %.012.i.i.i.i.i.i.i651.ph, %.lr.ph.i.i.i.i.i.i.i650.preheader3729 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i652 = phi ptr [ %i.ash, %.lr.ph.i.i.i.i.i.i.i650 ], [ %.0911.i.i.i.i.i.i.i652.ph, %.lr.ph.i.i.i.i.i.i.i650.preheader3729 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.asg = load i64, ptr %.0911.i.i.i.i.i.i.i652, align 8, !alias.scope !636, !noalias !633
  store i64 %i.asg, ptr %.012.i.i.i.i.i.i.i651, align 8, !alias.scope !633, !noalias !636
  %i.ash = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i652, i64 8 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i651, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i653 = icmp eq ptr %i.ash, %.sroa.217.31
  br i1 %.not.i.i.i.i.i.i.i653, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i657, label %.lr.ph.i.i.i.i.i.i.i650, !llvm.loop !639

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i657: ; preds = %.lr.ph.i.i.i.i.i.i.i650, %middle.block2775, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i646
  %.0.lcssa.i.i.i.i.i.i.i655 = phi ptr [ %i.art, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i646 ], [ %i.asa, %middle.block2775 ], [ %i.asi, %.lr.ph.i.i.i.i.i.i.i650 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.31, i64 noundef %i.arl) #28
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %i.art, i64 %i.arr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit658

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit658: ; preds = %bb.da, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i657
  %.sroa.217.32 = phi ptr [ %i.asj, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i657 ], [ %.sroa.217.31, %bb.da ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i655.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i655, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i657 ], [ %.sroa.76.31, %bb.da ] ; 4 uses
  %.sroa.01677.32 = phi ptr [ %i.art, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i657 ], [ %.sroa.01677.31, %bb.da ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i655.pn2781 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i655.pn to i64 ; 2 uses
  %.sroa.76.32 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i655.pn, i64 8 ; 2 uses
  %i.ask = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.86, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.asl = icmp eq ptr %i.ask, null
  br i1 %i.asl, label %bb.dd, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit659, !prof !5

bb.dd:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit658
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit659

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit659: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit658, %bb.dd
  %i.asm = ptrtoint ptr %i.ask to i64             ; 2 uses
  %.not.i.i.i660 = icmp eq ptr %.sroa.76.32, %.sroa.217.32
  br i1 %.not.i.i.i660, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit659
  store i64 %i.asm, ptr %.sroa.76.32, align 8
  %i.asn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i655.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit673

bb.df:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit659
  %i.aso = ptrtoint ptr %.sroa.217.32 to i64
  %i.asp = ptrtoint ptr %.sroa.01677.32 to i64    ; 3 uses
  %i.asq = sub i64 %i.aso, %i.asp                 ; 4 uses
  %i.asr = icmp eq i64 %i.asq, 9223372036854775800
  br i1 %i.asr, label %bb.dg, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i661

bb.dg:                                            ; preds = %bb.df
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i661: ; preds = %bb.df
  %i.ass = ashr exact i64 %i.asq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i662 = tail call i64 @llvm.umax.i64(i64 %i.ass, i64 1)
  %i.ast = add nsw i64 %.sroa.speculated.i.i.i.i.i662, %i.ass ; 2 uses
  %i.asu = icmp ult i64 %i.ast, %i.ass
  %i.asv = tail call i64 @llvm.umin.i64(i64 %i.ast, i64 1152921504606846975)
  %i.asw = select i1 %i.asu, i64 1152921504606846975, i64 %i.asv ; 3 uses
  %.not.i.i.i.i.i663 = icmp ne i64 %i.asw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i663)
  %i.asx = shl nuw nsw i64 %i.asw, 3
  %i.asy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asx) #27 ; 8 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 %i.asq
  store i64 %i.asm, ptr %i.asz, align 8
  %.not10.i.i.i.i.i.i.i664 = icmp eq ptr %.sroa.01677.32, %.sroa.217.32
  br i1 %.not10.i.i.i.i.i.i.i664, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672, label %.lr.ph.i.i.i.i.i.i.i665.preheader

.lr.ph.i.i.i.i.i.i.i665.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i661
  %i.ata = ptrtoaddr ptr %i.asy to i64
  %i.atb = sub i64 %.0.lcssa.i.i.i.i.i.i.i655.pn2781, %i.asp ; 2 uses
  %i.atc = lshr i64 %i.atb, 3
  %i.atd = add nuw nsw i64 %i.atc, 1              ; 2 uses
  %min.iters.check2783 = icmp ult i64 %i.atb, 56
  %i.ate = sub i64 %i.ata, %i.asp
  %diff.check2780 = icmp ult i64 %i.ate, 32
  %or.cond3605 = or i1 %min.iters.check2783, %diff.check2780
  br i1 %or.cond3605, label %.lr.ph.i.i.i.i.i.i.i665.preheader3727, label %vector.ph2784

vector.ph2784:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i665.preheader
  %n.vec2786 = and i64 %i.atd, 4611686018427387900 ; 3 uses
  %i.atf = shl i64 %n.vec2786, 3                  ; 2 uses
  %i.atg = getelementptr i8, ptr %i.asy, i64 %i.atf ; 2 uses
  %i.ath = getelementptr i8, ptr %.sroa.01677.32, i64 %i.atf
  br label %vector.body2787

vector.body2787:                                  ; preds = %vector.body2787, %vector.ph2784
  %index2788 = phi i64 [ 0, %vector.ph2784 ], [ %index.next2793, %vector.body2787 ] ; 2 uses
  %i.ati = shl i64 %index2788, 3                  ; 2 uses
  %next.gep2789 = getelementptr i8, ptr %i.asy, i64 %i.ati ; 2 uses
  %next.gep2790 = getelementptr i8, ptr %.sroa.01677.32, i64 %i.ati ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.atj = getelementptr i8, ptr %next.gep2790, i64 16
  %wide.load2791 = load <2 x i64>, ptr %next.gep2790, align 8, !alias.scope !643, !noalias !640
  %wide.load2792 = load <2 x i64>, ptr %i.atj, align 8, !alias.scope !643, !noalias !640
  %i.atk = getelementptr i8, ptr %next.gep2789, i64 16
  store <2 x i64> %wide.load2791, ptr %next.gep2789, align 8, !alias.scope !640, !noalias !643
  store <2 x i64> %wide.load2792, ptr %i.atk, align 8, !alias.scope !640, !noalias !643
  %index.next2793 = add nuw i64 %index2788, 4     ; 2 uses
  %i.atl = icmp eq i64 %index.next2793, %n.vec2786
  br i1 %i.atl, label %middle.block2794, label %vector.body2787, !llvm.loop !645

middle.block2794:                                 ; preds = %vector.body2787
  %cmp.n2795 = icmp eq i64 %i.atd, %n.vec2786
  br i1 %cmp.n2795, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672, label %.lr.ph.i.i.i.i.i.i.i665.preheader3727

.lr.ph.i.i.i.i.i.i.i665.preheader3727:            ; preds = %.lr.ph.i.i.i.i.i.i.i665.preheader, %middle.block2794
  %.012.i.i.i.i.i.i.i666.ph = phi ptr [ %i.asy, %.lr.ph.i.i.i.i.i.i.i665.preheader ], [ %i.atg, %middle.block2794 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i667.ph = phi ptr [ %.sroa.01677.32, %.lr.ph.i.i.i.i.i.i.i665.preheader ], [ %i.ath, %middle.block2794 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i667.ph3825 = ptrtoint ptr %.0911.i.i.i.i.i.i.i667.ph to i64
  %i.atm = sub i64 %.0.lcssa.i.i.i.i.i.i.i655.pn2781, %.0911.i.i.i.i.i.i.i667.ph3825 ; 2 uses
  %i.atn = lshr i64 %i.atm, 3
  %i.ato = add nuw nsw i64 %i.atn, 1
  %xtraiter3826 = and i64 %i.ato, 7               ; 2 uses
  %lcmp.mod3827.not = icmp eq i64 %xtraiter3826, 0
  br i1 %lcmp.mod3827.not, label %.lr.ph.i.i.i.i.i.i.i665.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i665.prol

.lr.ph.i.i.i.i.i.i.i665.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i665.preheader3727, %.lr.ph.i.i.i.i.i.i.i665.prol
  %.012.i.i.i.i.i.i.i666.prol = phi ptr [ %i.atr, %.lr.ph.i.i.i.i.i.i.i665.prol ], [ %.012.i.i.i.i.i.i.i666.ph, %.lr.ph.i.i.i.i.i.i.i665.preheader3727 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i667.prol = phi ptr [ %i.atq, %.lr.ph.i.i.i.i.i.i.i665.prol ], [ %.0911.i.i.i.i.i.i.i667.ph, %.lr.ph.i.i.i.i.i.i.i665.preheader3727 ] ; 2 uses
  %prol.iter3828 = phi i64 [ %prol.iter3828.next, %.lr.ph.i.i.i.i.i.i.i665.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i665.preheader3727 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.atp = load i64, ptr %.0911.i.i.i.i.i.i.i667.prol, align 8, !alias.scope !643, !noalias !640
  store i64 %i.atp, ptr %.012.i.i.i.i.i.i.i666.prol, align 8, !alias.scope !640, !noalias !643
  %i.atq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667.prol, i64 8 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666.prol, i64 8 ; 3 uses
  %prol.iter3828.next = add i64 %prol.iter3828, 1 ; 2 uses
  %prol.iter3828.cmp.not = icmp eq i64 %prol.iter3828.next, %xtraiter3826
  br i1 %prol.iter3828.cmp.not, label %.lr.ph.i.i.i.i.i.i.i665.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i665.prol, !llvm.loop !646

.lr.ph.i.i.i.i.i.i.i665.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i665.prol, %.lr.ph.i.i.i.i.i.i.i665.preheader3727
  %.lcssa3728.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i665.preheader3727 ], [ %i.atr, %.lr.ph.i.i.i.i.i.i.i665.prol ]
  %.012.i.i.i.i.i.i.i666.unr = phi ptr [ %.012.i.i.i.i.i.i.i666.ph, %.lr.ph.i.i.i.i.i.i.i665.preheader3727 ], [ %i.atr, %.lr.ph.i.i.i.i.i.i.i665.prol ]
  %.0911.i.i.i.i.i.i.i667.unr = phi ptr [ %.0911.i.i.i.i.i.i.i667.ph, %.lr.ph.i.i.i.i.i.i.i665.preheader3727 ], [ %i.atq, %.lr.ph.i.i.i.i.i.i.i665.prol ]
  %i.ats = icmp ult i64 %i.atm, 56
  br i1 %i.ats, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672, label %.lr.ph.i.i.i.i.i.i.i665

.lr.ph.i.i.i.i.i.i.i665:                          ; preds = %.lr.ph.i.i.i.i.i.i.i665.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i665
  %.012.i.i.i.i.i.i.i666 = phi ptr [ %i.auq, %.lr.ph.i.i.i.i.i.i.i665 ], [ %.012.i.i.i.i.i.i.i666.unr, %.lr.ph.i.i.i.i.i.i.i665.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i667 = phi ptr [ %i.aup, %.lr.ph.i.i.i.i.i.i.i665 ], [ %.0911.i.i.i.i.i.i.i667.unr, %.lr.ph.i.i.i.i.i.i.i665.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.att = load i64, ptr %.0911.i.i.i.i.i.i.i667, align 8, !alias.scope !643, !noalias !640
  store i64 %i.att, ptr %.012.i.i.i.i.i.i.i666, align 8, !alias.scope !640, !noalias !643
  %i.atu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667, i64 8
  %i.atv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.atw = load i64, ptr %i.atu, align 8, !alias.scope !649, !noalias !647
  store i64 %i.atw, ptr %i.atv, align 8, !alias.scope !647, !noalias !649
  %i.atx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667, i64 16
  %i.aty = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.atz = load i64, ptr %i.atx, align 8, !alias.scope !653, !noalias !651
  store i64 %i.atz, ptr %i.aty, align 8, !alias.scope !651, !noalias !653
  %i.aua = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667, i64 24
  %i.aub = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.auc = load i64, ptr %i.aua, align 8, !alias.scope !657, !noalias !655
  store i64 %i.auc, ptr %i.aub, align 8, !alias.scope !655, !noalias !657
  %i.aud = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667, i64 32
  %i.aue = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.auf = load i64, ptr %i.aud, align 8, !alias.scope !661, !noalias !659
  store i64 %i.auf, ptr %i.aue, align 8, !alias.scope !659, !noalias !661
  %i.aug = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667, i64 40
  %i.auh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.aui = load i64, ptr %i.aug, align 8, !alias.scope !665, !noalias !663
  store i64 %i.aui, ptr %i.auh, align 8, !alias.scope !663, !noalias !665
  %i.auj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667, i64 48
  %i.auk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.aul = load i64, ptr %i.auj, align 8, !alias.scope !669, !noalias !667
  store i64 %i.aul, ptr %i.auk, align 8, !alias.scope !667, !noalias !669
  %i.aum = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667, i64 56 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.auo = load i64, ptr %i.aum, align 8, !alias.scope !673, !noalias !671
  store i64 %i.auo, ptr %i.aun, align 8, !alias.scope !671, !noalias !673
  %i.aup = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i667, i64 64
  %i.auq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i666, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i668.7 = icmp eq ptr %i.aum, %.0.lcssa.i.i.i.i.i.i.i655.pn
  br i1 %.not.i.i.i.i.i.i.i668.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672, label %.lr.ph.i.i.i.i.i.i.i665, !llvm.loop !675

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672: ; preds = %.lr.ph.i.i.i.i.i.i.i665.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i665, %middle.block2794, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i661
  %.0.lcssa.i.i.i.i.i.i.i670 = phi ptr [ %i.asy, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i661 ], [ %i.atg, %middle.block2794 ], [ %.lcssa3728.unr, %.lr.ph.i.i.i.i.i.i.i665.prol.loopexit ], [ %i.auq, %.lr.ph.i.i.i.i.i.i.i665 ]
  %i.aur = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i670, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.32, i64 noundef %i.asq) #28
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.asy, i64 %i.asw
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit673

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit673: ; preds = %bb.de, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672
  %.sroa.217.33 = phi ptr [ %i.aus, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672 ], [ %.sroa.217.32, %bb.de ] ; 5 uses
  %.sroa.76.33 = phi ptr [ %i.aur, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672 ], [ %i.asn, %bb.de ] ; 3 uses
  %.sroa.01677.33 = phi ptr [ %i.asy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i672 ], [ %.sroa.01677.32, %bb.de ] ; 7 uses
  %i.aut = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.87, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.auu = icmp eq ptr %i.aut, null
  br i1 %i.auu, label %bb.dh, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit674, !prof !5

bb.dh:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit673
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit674

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit674: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit673, %bb.dh
  %i.auv = ptrtoint ptr %i.aut to i64             ; 2 uses
  %.not.i.i.i675 = icmp eq ptr %.sroa.76.33, %.sroa.217.33
  br i1 %.not.i.i.i675, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit674
  store i64 %i.auv, ptr %.sroa.76.33, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit688

bb.dj:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit674
  %i.auw = ptrtoint ptr %.sroa.217.33 to i64      ; 2 uses
  %i.aux = ptrtoint ptr %.sroa.01677.33 to i64    ; 3 uses
  %i.auy = sub i64 %i.auw, %i.aux                 ; 4 uses
  %i.auz = icmp eq i64 %i.auy, 9223372036854775800
  br i1 %i.auz, label %bb.dk, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i676

bb.dk:                                            ; preds = %bb.dj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i676: ; preds = %bb.dj
  %i.ava = ashr exact i64 %i.auy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i677 = tail call i64 @llvm.umax.i64(i64 %i.ava, i64 1)
  %i.avb = add nsw i64 %.sroa.speculated.i.i.i.i.i677, %i.ava ; 2 uses
  %i.avc = icmp ult i64 %i.avb, %i.ava
  %i.avd = tail call i64 @llvm.umin.i64(i64 %i.avb, i64 1152921504606846975)
  %i.ave = select i1 %i.avc, i64 1152921504606846975, i64 %i.avd ; 3 uses
  %.not.i.i.i.i.i678 = icmp ne i64 %i.ave, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i678)
  %i.avf = shl nuw nsw i64 %i.ave, 3
  %i.avg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avf) #27 ; 8 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 %i.auy
  store i64 %i.auv, ptr %i.avh, align 8
  %.not10.i.i.i.i.i.i.i679 = icmp eq ptr %.sroa.01677.33, %.sroa.217.33
  br i1 %.not10.i.i.i.i.i.i.i679, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i687, label %.lr.ph.i.i.i.i.i.i.i680.preheader

.lr.ph.i.i.i.i.i.i.i680.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i676
  %i.avi = ptrtoaddr ptr %i.avg to i64
  %28 = sub i64 %i.auw, %i.aux
  %29 = add i64 %28, -8                           ; 2 uses
  %i.avj = lshr i64 %29, 3
  %i.avk = add nuw nsw i64 %i.avj, 1              ; 2 uses
  %min.iters.check2801 = icmp ult i64 %29, 56
  %i.avl = sub i64 %i.avi, %i.aux
  %diff.check2799 = icmp ult i64 %i.avl, 32
  %or.cond3606 = or i1 %min.iters.check2801, %diff.check2799
  br i1 %or.cond3606, label %.lr.ph.i.i.i.i.i.i.i680.preheader3725, label %vector.ph2802

vector.ph2802:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i680.preheader
  %n.vec2804 = and i64 %i.avk, 4611686018427387900 ; 3 uses
  %i.avm = shl i64 %n.vec2804, 3                  ; 2 uses
  %i.avn = getelementptr i8, ptr %i.avg, i64 %i.avm ; 2 uses
  %i.avo = getelementptr i8, ptr %.sroa.01677.33, i64 %i.avm
  br label %vector.body2805

vector.body2805:                                  ; preds = %vector.body2805, %vector.ph2802
  %index2806 = phi i64 [ 0, %vector.ph2802 ], [ %index.next2811, %vector.body2805 ] ; 2 uses
  %i.avp = shl i64 %index2806, 3                  ; 2 uses
  %next.gep2807 = getelementptr i8, ptr %i.avg, i64 %i.avp ; 2 uses
  %next.gep2808 = getelementptr i8, ptr %.sroa.01677.33, i64 %i.avp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.avq = getelementptr i8, ptr %next.gep2808, i64 16
  %wide.load2809 = load <2 x i64>, ptr %next.gep2808, align 8, !alias.scope !679, !noalias !676
  %wide.load2810 = load <2 x i64>, ptr %i.avq, align 8, !alias.scope !679, !noalias !676
  %i.avr = getelementptr i8, ptr %next.gep2807, i64 16
  store <2 x i64> %wide.load2809, ptr %next.gep2807, align 8, !alias.scope !676, !noalias !679
  store <2 x i64> %wide.load2810, ptr %i.avr, align 8, !alias.scope !676, !noalias !679
  %index.next2811 = add nuw i64 %index2806, 4     ; 2 uses
  %i.avs = icmp eq i64 %index.next2811, %n.vec2804
  br i1 %i.avs, label %middle.block2812, label %vector.body2805, !llvm.loop !681

middle.block2812:                                 ; preds = %vector.body2805
  %cmp.n2813 = icmp eq i64 %i.avk, %n.vec2804
  br i1 %cmp.n2813, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i687, label %.lr.ph.i.i.i.i.i.i.i680.preheader3725

.lr.ph.i.i.i.i.i.i.i680.preheader3725:            ; preds = %.lr.ph.i.i.i.i.i.i.i680.preheader, %middle.block2812
  %.012.i.i.i.i.i.i.i681.ph = phi ptr [ %i.avg, %.lr.ph.i.i.i.i.i.i.i680.preheader ], [ %i.avn, %middle.block2812 ]
  %.0911.i.i.i.i.i.i.i682.ph = phi ptr [ %.sroa.01677.33, %.lr.ph.i.i.i.i.i.i.i680.preheader ], [ %i.avo, %middle.block2812 ]
  br label %.lr.ph.i.i.i.i.i.i.i680

.lr.ph.i.i.i.i.i.i.i680:                          ; preds = %.lr.ph.i.i.i.i.i.i.i680.preheader3725, %.lr.ph.i.i.i.i.i.i.i680
  %.012.i.i.i.i.i.i.i681 = phi ptr [ %i.avv, %.lr.ph.i.i.i.i.i.i.i680 ], [ %.012.i.i.i.i.i.i.i681.ph, %.lr.ph.i.i.i.i.i.i.i680.preheader3725 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i682 = phi ptr [ %i.avu, %.lr.ph.i.i.i.i.i.i.i680 ], [ %.0911.i.i.i.i.i.i.i682.ph, %.lr.ph.i.i.i.i.i.i.i680.preheader3725 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.avt = load i64, ptr %.0911.i.i.i.i.i.i.i682, align 8, !alias.scope !679, !noalias !676
  store i64 %i.avt, ptr %.012.i.i.i.i.i.i.i681, align 8, !alias.scope !676, !noalias !679
  %i.avu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i682, i64 8 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i681, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i683 = icmp eq ptr %i.avu, %.sroa.217.33
  br i1 %.not.i.i.i.i.i.i.i683, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i687, label %.lr.ph.i.i.i.i.i.i.i680, !llvm.loop !682

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i687: ; preds = %.lr.ph.i.i.i.i.i.i.i680, %middle.block2812, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i676
  %.0.lcssa.i.i.i.i.i.i.i685 = phi ptr [ %i.avg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i676 ], [ %i.avn, %middle.block2812 ], [ %i.avv, %.lr.ph.i.i.i.i.i.i.i680 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.33, i64 noundef %i.auy) #28
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %i.ave
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit688

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit688: ; preds = %bb.di, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i687
  %.sroa.217.34 = phi ptr [ %i.avw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i687 ], [ %.sroa.217.33, %bb.di ]
  %.0.lcssa.i.i.i.i.i.i.i685.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i685, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i687 ], [ %.sroa.76.33, %bb.di ]
  %.sroa.01677.34 = phi ptr [ %i.avg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i687 ], [ %.sroa.01677.33, %bb.di ] ; 3 uses
  %.sroa.76.34 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i685.pn, i64 8
  %i.avx = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.avy = icmp eq ptr %i.avx, null
  br i1 %i.avy, label %bb.dl, label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit703, !prof !5

bb.dl:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit688
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit703

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit703: ; preds = %bb.dl, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit688
  %i.avz = ptrtoint ptr %i.avx to i64
  %i.awa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27 ; 3 uses
  store i64 %i.avz, ptr %i.awa, align 8
  %i.awb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 3) #25 ; 2 uses
  %i.awc = icmp eq ptr %i.awb, null
  br i1 %i.awc, label %bb.dm, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit704, !prof !5

bb.dm:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit703
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit704

_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit704: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit703, %bb.dm
  %i.awd = ptrtoint ptr %i.awb to i64
  %i.awe = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 4 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  store i64 %i.awd, ptr %i.awf, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.awg = load i64, ptr %i.awa, align 8, !alias.scope !686, !noalias !683
  store i64 %i.awg, ptr %i.awe, align 8, !alias.scope !683, !noalias !686
  tail call void @_ZdlPvm(ptr noundef nonnull %i.awa, i64 noundef 8) #28
  %i.awh = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.awi = icmp eq ptr %i.awh, null
  br i1 %i.awi, label %bb.dn, label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit733, !prof !5

bb.dn:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit704
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit733

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit733: ; preds = %bb.dn, %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit704
  %i.awj = ptrtoint ptr %i.awh to i64
  %i.awk = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 6 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  store i64 %i.awj, ptr %i.awl, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.awk, ptr noundef nonnull align 8 dereferenceable(16) %i.awe, i64 16, i1 false), !alias.scope !688, !noalias !53
  tail call void @_ZdlPvm(ptr noundef nonnull %i.awe, i64 noundef 16) #28
  %.sroa.100.2 = getelementptr inbounds nuw i8, ptr %i.awk, i64 24
  %i.awm = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.awn = icmp eq ptr %i.awm, null
  br i1 %i.awn, label %bb.do, label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit748, !prof !5

bb.do:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit733
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit748

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit748: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit733, %bb.do
  %i.awo = ptrtoint ptr %i.awm to i64
  store i64 %i.awo, ptr %.sroa.100.2, align 8
  %i.awp = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.57, i32 noundef 1, i32 noundef 3) #25 ; 2 uses
  %i.awq = icmp eq ptr %i.awp, null
  br i1 %i.awq, label %bb.dp, label %.lr.ph.i.i.i.i.i.i.i755.preheader, !prof !5

bb.dp:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit748
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %.lr.ph.i.i.i.i.i.i.i755.preheader

.lr.ph.i.i.i.i.i.i.i755.preheader:                ; preds = %bb.dp, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit748
  %i.awr = ptrtoint ptr %i.awp to i64
  %i.aws = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27 ; 23 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 32
  store i64 %i.awr, ptr %i.awt, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %wide.load2821 = load <2 x i64>, ptr %i.awk, align 8, !alias.scope !695, !noalias !692
  store <2 x i64> %wide.load2821, ptr %i.aws, align 8, !alias.scope !692, !noalias !695
  %next.gep2820.1 = getelementptr inbounds nuw i8, ptr %i.aws, i64 16
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %wide.load2821.1 = load <2 x i64>, ptr %i.awu, align 8, !alias.scope !699, !noalias !697
  store <2 x i64> %wide.load2821.1, ptr %next.gep2820.1, align 8, !alias.scope !697, !noalias !699
  tail call void @_ZdlPvm(ptr noundef nonnull %i.awk, i64 noundef 32) #28
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aws, i64 64 ; 2 uses
  %.sroa.100.4 = getelementptr inbounds nuw i8, ptr %i.aws, i64 40
  %i.aww = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef 7) #25 ; 2 uses
  %i.awx = icmp eq ptr %i.aww, null
  br i1 %i.awx, label %bb.dq, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit764, !prof !5

bb.dq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i755.preheader
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit764

_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit764: ; preds = %bb.dq, %.lr.ph.i.i.i.i.i.i.i755.preheader
  %i.awy = ptrtoint ptr %i.aww to i64
  store i64 %i.awy, ptr %.sroa.100.4, align 8
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aws, i64 48
  %i.axa = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.59, i32 noundef 1, i32 noundef 7) #25 ; 2 uses
  %i.axb = icmp eq ptr %i.axa, null
  br i1 %i.axb, label %bb.dr, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit779, !prof !5

bb.dr:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit764
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit779

_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit779: ; preds = %bb.dr, %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit764
  %i.axc = ptrtoint ptr %i.axa to i64
  store i64 %i.axc, ptr %i.awz, align 8
  %.sroa.100.6 = getelementptr inbounds nuw i8, ptr %i.aws, i64 56
  %i.axd = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.axe = icmp eq ptr %i.axd, null
  br i1 %i.axe, label %bb.ds, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit794, !prof !5

bb.ds:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit779
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit794

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit794: ; preds = %bb.ds, %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit779
  %i.axf = ptrtoint ptr %i.axd to i64
  store i64 %i.axf, ptr %.sroa.100.6, align 8
  %i.axg = getelementptr inbounds nuw i8, ptr %i.aws, i64 64 ; 3 uses
  %i.axh = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.61, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.axi = icmp eq ptr %i.axh, null
  br i1 %i.axi, label %bb.dt, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit809, !prof !5

bb.dt:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit794
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit809

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit809: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit794, %bb.dt
  %i.axj = ptrtoint ptr %i.axh to i64             ; 2 uses
  %.not.i.i.i810 = icmp eq ptr %i.axg, %i.awv
  br i1 %.not.i.i.i810, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i811, label %bb.du

bb.du:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit809
  store i64 %i.axj, ptr %i.axg, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit823

end_hunk_2
begin_hunk_3_@_ZN4node11http_parser26CreatePerContextPropertiesEN2v85LocalINS1_6ObjectEEENS2_INS1_5ValueEEENS2_INS1_7ContextEEEPv:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i826: ; preds = %bb.dx
  %i.aza = ashr exact i64 %i.ayy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i827 = tail call i64 @llvm.umax.i64(i64 %i.aza, i64 1)
  %i.azb = add nsw i64 %.sroa.speculated.i.i.i.i.i827, %i.aza ; 2 uses
  %i.azc = icmp ult i64 %i.azb, %i.aza
  %i.azd = tail call i64 @llvm.umin.i64(i64 %i.azb, i64 1152921504606846975)
  %i.aze = select i1 %i.azc, i64 1152921504606846975, i64 %i.azd ; 3 uses
  %.not.i.i.i.i.i828 = icmp ne i64 %i.aze, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i828)
  %i.azf = shl nuw nsw i64 %i.aze, 3
  %i.azg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azf) #27 ; 8 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 %i.ayy
  store i64 %i.ayu, ptr %i.azh, align 8
  %.not10.i.i.i.i.i.i.i829 = icmp eq ptr %.sroa.01486.8, %.sroa.289.8
  br i1 %.not10.i.i.i.i.i.i.i829, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837, label %.lr.ph.i.i.i.i.i.i.i830.preheader

.lr.ph.i.i.i.i.i.i.i830.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i826
  %i.azi = ptrtoaddr ptr %i.azg to i64
  %i.azj = sub i64 %.0.lcssa.i.i.i.i.i.i.i820.pn2879, %i.ayx ; 2 uses
  %i.azk = lshr i64 %i.azj, 3
  %i.azl = add nuw nsw i64 %i.azk, 1              ; 2 uses
  %min.iters.check2881 = icmp ult i64 %i.azj, 56
  %i.azm = sub i64 %i.azi, %i.ayx
  %diff.check2878 = icmp ult i64 %i.azm, 32
  %or.cond3609 = or i1 %min.iters.check2881, %diff.check2878
  br i1 %or.cond3609, label %.lr.ph.i.i.i.i.i.i.i830.preheader3720, label %vector.ph2882

vector.ph2882:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i830.preheader
  %n.vec2884 = and i64 %i.azl, 4611686018427387900 ; 3 uses
  %i.azn = shl i64 %n.vec2884, 3                  ; 2 uses
  %i.azo = getelementptr i8, ptr %i.azg, i64 %i.azn ; 2 uses
  %i.azp = getelementptr i8, ptr %.sroa.01486.8, i64 %i.azn
  br label %vector.body2885

vector.body2885:                                  ; preds = %vector.body2885, %vector.ph2882
  %index2886 = phi i64 [ 0, %vector.ph2882 ], [ %index.next2891, %vector.body2885 ] ; 2 uses
  %i.azq = shl i64 %index2886, 3                  ; 2 uses
  %next.gep2887 = getelementptr i8, ptr %i.azg, i64 %i.azq ; 2 uses
  %next.gep2888 = getelementptr i8, ptr %.sroa.01486.8, i64 %i.azq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.azr = getelementptr i8, ptr %next.gep2888, i64 16
  %wide.load2889 = load <2 x i64>, ptr %next.gep2888, align 8, !alias.scope !741, !noalias !738
  %wide.load2890 = load <2 x i64>, ptr %i.azr, align 8, !alias.scope !741, !noalias !738
  %i.azs = getelementptr i8, ptr %next.gep2887, i64 16
  store <2 x i64> %wide.load2889, ptr %next.gep2887, align 8, !alias.scope !738, !noalias !741
  store <2 x i64> %wide.load2890, ptr %i.azs, align 8, !alias.scope !738, !noalias !741
  %index.next2891 = add nuw i64 %index2886, 4     ; 2 uses
  %i.azt = icmp eq i64 %index.next2891, %n.vec2884
  br i1 %i.azt, label %middle.block2892, label %vector.body2885, !llvm.loop !743

middle.block2892:                                 ; preds = %vector.body2885
  %cmp.n2893 = icmp eq i64 %i.azl, %n.vec2884
  br i1 %cmp.n2893, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837, label %.lr.ph.i.i.i.i.i.i.i830.preheader3720

.lr.ph.i.i.i.i.i.i.i830.preheader3720:            ; preds = %.lr.ph.i.i.i.i.i.i.i830.preheader, %middle.block2892
  %.012.i.i.i.i.i.i.i831.ph = phi ptr [ %i.azg, %.lr.ph.i.i.i.i.i.i.i830.preheader ], [ %i.azo, %middle.block2892 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i832.ph = phi ptr [ %.sroa.01486.8, %.lr.ph.i.i.i.i.i.i.i830.preheader ], [ %i.azp, %middle.block2892 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i832.ph3829 = ptrtoint ptr %.0911.i.i.i.i.i.i.i832.ph to i64
  %i.azu = sub i64 %.0.lcssa.i.i.i.i.i.i.i820.pn2879, %.0911.i.i.i.i.i.i.i832.ph3829 ; 2 uses
  %i.azv = lshr i64 %i.azu, 3
  %i.azw = add nuw nsw i64 %i.azv, 1
  %xtraiter3830 = and i64 %i.azw, 7               ; 2 uses
  %lcmp.mod3831.not = icmp eq i64 %xtraiter3830, 0
  br i1 %lcmp.mod3831.not, label %.lr.ph.i.i.i.i.i.i.i830.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i830.prol

.lr.ph.i.i.i.i.i.i.i830.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i830.preheader3720, %.lr.ph.i.i.i.i.i.i.i830.prol
  %.012.i.i.i.i.i.i.i831.prol = phi ptr [ %i.azz, %.lr.ph.i.i.i.i.i.i.i830.prol ], [ %.012.i.i.i.i.i.i.i831.ph, %.lr.ph.i.i.i.i.i.i.i830.preheader3720 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i832.prol = phi ptr [ %i.azy, %.lr.ph.i.i.i.i.i.i.i830.prol ], [ %.0911.i.i.i.i.i.i.i832.ph, %.lr.ph.i.i.i.i.i.i.i830.preheader3720 ] ; 2 uses
  %prol.iter3832 = phi i64 [ %prol.iter3832.next, %.lr.ph.i.i.i.i.i.i.i830.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i830.preheader3720 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.azx = load i64, ptr %.0911.i.i.i.i.i.i.i832.prol, align 8, !alias.scope !741, !noalias !738
  store i64 %i.azx, ptr %.012.i.i.i.i.i.i.i831.prol, align 8, !alias.scope !738, !noalias !741
  %i.azy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832.prol, i64 8 ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831.prol, i64 8 ; 3 uses
  %prol.iter3832.next = add i64 %prol.iter3832, 1 ; 2 uses
  %prol.iter3832.cmp.not = icmp eq i64 %prol.iter3832.next, %xtraiter3830
  br i1 %prol.iter3832.cmp.not, label %.lr.ph.i.i.i.i.i.i.i830.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i830.prol, !llvm.loop !744

.lr.ph.i.i.i.i.i.i.i830.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i830.prol, %.lr.ph.i.i.i.i.i.i.i830.preheader3720
  %.lcssa3721.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i830.preheader3720 ], [ %i.azz, %.lr.ph.i.i.i.i.i.i.i830.prol ]
  %.012.i.i.i.i.i.i.i831.unr = phi ptr [ %.012.i.i.i.i.i.i.i831.ph, %.lr.ph.i.i.i.i.i.i.i830.preheader3720 ], [ %i.azz, %.lr.ph.i.i.i.i.i.i.i830.prol ]
  %.0911.i.i.i.i.i.i.i832.unr = phi ptr [ %.0911.i.i.i.i.i.i.i832.ph, %.lr.ph.i.i.i.i.i.i.i830.preheader3720 ], [ %i.azy, %.lr.ph.i.i.i.i.i.i.i830.prol ]
  %i.baa = icmp ult i64 %i.azu, 56
  br i1 %i.baa, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837, label %.lr.ph.i.i.i.i.i.i.i830

.lr.ph.i.i.i.i.i.i.i830:                          ; preds = %.lr.ph.i.i.i.i.i.i.i830.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i830
  %.012.i.i.i.i.i.i.i831 = phi ptr [ %i.bay, %.lr.ph.i.i.i.i.i.i.i830 ], [ %.012.i.i.i.i.i.i.i831.unr, %.lr.ph.i.i.i.i.i.i.i830.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i832 = phi ptr [ %i.bax, %.lr.ph.i.i.i.i.i.i.i830 ], [ %.0911.i.i.i.i.i.i.i832.unr, %.lr.ph.i.i.i.i.i.i.i830.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.bab = load i64, ptr %.0911.i.i.i.i.i.i.i832, align 8, !alias.scope !741, !noalias !738
  store i64 %i.bab, ptr %.012.i.i.i.i.i.i.i831, align 8, !alias.scope !738, !noalias !741
  %i.bac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832, i64 8
  %i.bad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.bae = load i64, ptr %i.bac, align 8, !alias.scope !747, !noalias !745
  store i64 %i.bae, ptr %i.bad, align 8, !alias.scope !745, !noalias !747
  %i.baf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832, i64 16
  %i.bag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.bah = load i64, ptr %i.baf, align 8, !alias.scope !751, !noalias !749
  store i64 %i.bah, ptr %i.bag, align 8, !alias.scope !749, !noalias !751
  %i.bai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832, i64 24
  %i.baj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.bak = load i64, ptr %i.bai, align 8, !alias.scope !755, !noalias !753
  store i64 %i.bak, ptr %i.baj, align 8, !alias.scope !753, !noalias !755
  %i.bal = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832, i64 32
  %i.bam = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.ban = load i64, ptr %i.bal, align 8, !alias.scope !759, !noalias !757
  store i64 %i.ban, ptr %i.bam, align 8, !alias.scope !757, !noalias !759
  %i.bao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832, i64 40
  %i.bap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.baq = load i64, ptr %i.bao, align 8, !alias.scope !763, !noalias !761
  store i64 %i.baq, ptr %i.bap, align 8, !alias.scope !761, !noalias !763
  %i.bar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832, i64 48
  %i.bas = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.bat = load i64, ptr %i.bar, align 8, !alias.scope !767, !noalias !765
  store i64 %i.bat, ptr %i.bas, align 8, !alias.scope !765, !noalias !767
  %i.bau = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832, i64 56 ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.baw = load i64, ptr %i.bau, align 8, !alias.scope !771, !noalias !769
  store i64 %i.baw, ptr %i.bav, align 8, !alias.scope !769, !noalias !771
  %i.bax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i832, i64 64
  %i.bay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i831, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i833.7 = icmp eq ptr %i.bau, %.0.lcssa.i.i.i.i.i.i.i820.pn
  br i1 %.not.i.i.i.i.i.i.i833.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837, label %.lr.ph.i.i.i.i.i.i.i830, !llvm.loop !773

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837: ; preds = %.lr.ph.i.i.i.i.i.i.i830.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i830, %middle.block2892, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i826
  %.0.lcssa.i.i.i.i.i.i.i835 = phi ptr [ %i.azg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i826 ], [ %i.azo, %middle.block2892 ], [ %.lcssa3721.unr, %.lr.ph.i.i.i.i.i.i.i830.prol.loopexit ], [ %i.bay, %.lr.ph.i.i.i.i.i.i.i830 ]
  %i.baz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i835, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.8, i64 noundef %i.ayy) #28
  %i.bba = getelementptr inbounds nuw [8 x i8], ptr %i.azg, i64 %i.aze
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit838

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit838: ; preds = %bb.dw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837
  %.sroa.289.9 = phi ptr [ %i.bba, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837 ], [ %.sroa.289.8, %bb.dw ] ; 5 uses
  %.sroa.100.9 = phi ptr [ %i.baz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837 ], [ %i.ayv, %bb.dw ] ; 3 uses
  %.sroa.01486.9 = phi ptr [ %i.azg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i837 ], [ %.sroa.01486.8, %bb.dw ] ; 7 uses
  %i.bbb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.63, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.bbc = icmp eq ptr %i.bbb, null
  br i1 %i.bbc, label %bb.dz, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit839, !prof !5

bb.dz:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit838
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit839

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit839: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit838, %bb.dz
  %i.bbd = ptrtoint ptr %i.bbb to i64             ; 2 uses
  %.not.i.i.i840 = icmp eq ptr %.sroa.100.9, %.sroa.289.9
  br i1 %.not.i.i.i840, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit839
  store i64 %i.bbd, ptr %.sroa.100.9, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit853

bb.eb:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit839
  %i.bbe = ptrtoint ptr %.sroa.289.9 to i64       ; 2 uses
  %i.bbf = ptrtoint ptr %.sroa.01486.9 to i64     ; 3 uses
  %i.bbg = sub i64 %i.bbe, %i.bbf                 ; 4 uses
  %i.bbh = icmp eq i64 %i.bbg, 9223372036854775800
  br i1 %i.bbh, label %bb.ec, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i841

bb.ec:                                            ; preds = %bb.eb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i841: ; preds = %bb.eb
  %i.bbi = ashr exact i64 %i.bbg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i842 = tail call i64 @llvm.umax.i64(i64 %i.bbi, i64 1)
  %i.bbj = add nsw i64 %.sroa.speculated.i.i.i.i.i842, %i.bbi ; 2 uses
  %i.bbk = icmp ult i64 %i.bbj, %i.bbi
  %i.bbl = tail call i64 @llvm.umin.i64(i64 %i.bbj, i64 1152921504606846975)
  %i.bbm = select i1 %i.bbk, i64 1152921504606846975, i64 %i.bbl ; 3 uses
  %.not.i.i.i.i.i843 = icmp ne i64 %i.bbm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i843)
  %i.bbn = shl nuw nsw i64 %i.bbm, 3
  %i.bbo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbn) #27 ; 8 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %i.bbg
  store i64 %i.bbd, ptr %i.bbp, align 8
  %.not10.i.i.i.i.i.i.i844 = icmp eq ptr %.sroa.01486.9, %.sroa.289.9
  br i1 %.not10.i.i.i.i.i.i.i844, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i852, label %.lr.ph.i.i.i.i.i.i.i845.preheader

.lr.ph.i.i.i.i.i.i.i845.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i841
  %i.bbq = ptrtoaddr ptr %i.bbo to i64
  %30 = sub i64 %i.bbe, %i.bbf
  %31 = add i64 %30, -8                           ; 2 uses
  %i.bbr = lshr i64 %31, 3
  %i.bbs = add nuw nsw i64 %i.bbr, 1              ; 2 uses
  %min.iters.check2899 = icmp ult i64 %31, 56
  %i.bbt = sub i64 %i.bbq, %i.bbf
  %diff.check2897 = icmp ult i64 %i.bbt, 32
  %or.cond3610 = or i1 %min.iters.check2899, %diff.check2897
  br i1 %or.cond3610, label %.lr.ph.i.i.i.i.i.i.i845.preheader3718, label %vector.ph2900

vector.ph2900:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i845.preheader
  %n.vec2902 = and i64 %i.bbs, 4611686018427387900 ; 3 uses
  %i.bbu = shl i64 %n.vec2902, 3                  ; 2 uses
  %i.bbv = getelementptr i8, ptr %i.bbo, i64 %i.bbu ; 2 uses
  %i.bbw = getelementptr i8, ptr %.sroa.01486.9, i64 %i.bbu
  br label %vector.body2903

vector.body2903:                                  ; preds = %vector.body2903, %vector.ph2900
  %index2904 = phi i64 [ 0, %vector.ph2900 ], [ %index.next2909, %vector.body2903 ] ; 2 uses
  %i.bbx = shl i64 %index2904, 3                  ; 2 uses
  %next.gep2905 = getelementptr i8, ptr %i.bbo, i64 %i.bbx ; 2 uses
  %next.gep2906 = getelementptr i8, ptr %.sroa.01486.9, i64 %i.bbx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.bby = getelementptr i8, ptr %next.gep2906, i64 16
  %wide.load2907 = load <2 x i64>, ptr %next.gep2906, align 8, !alias.scope !777, !noalias !774
  %wide.load2908 = load <2 x i64>, ptr %i.bby, align 8, !alias.scope !777, !noalias !774
  %i.bbz = getelementptr i8, ptr %next.gep2905, i64 16
  store <2 x i64> %wide.load2907, ptr %next.gep2905, align 8, !alias.scope !774, !noalias !777
  store <2 x i64> %wide.load2908, ptr %i.bbz, align 8, !alias.scope !774, !noalias !777
  %index.next2909 = add nuw i64 %index2904, 4     ; 2 uses
  %i.bca = icmp eq i64 %index.next2909, %n.vec2902
  br i1 %i.bca, label %middle.block2910, label %vector.body2903, !llvm.loop !779

middle.block2910:                                 ; preds = %vector.body2903
  %cmp.n2911 = icmp eq i64 %i.bbs, %n.vec2902
  br i1 %cmp.n2911, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i852, label %.lr.ph.i.i.i.i.i.i.i845.preheader3718

.lr.ph.i.i.i.i.i.i.i845.preheader3718:            ; preds = %.lr.ph.i.i.i.i.i.i.i845.preheader, %middle.block2910
  %.012.i.i.i.i.i.i.i846.ph = phi ptr [ %i.bbo, %.lr.ph.i.i.i.i.i.i.i845.preheader ], [ %i.bbv, %middle.block2910 ]
  %.0911.i.i.i.i.i.i.i847.ph = phi ptr [ %.sroa.01486.9, %.lr.ph.i.i.i.i.i.i.i845.preheader ], [ %i.bbw, %middle.block2910 ]
  br label %.lr.ph.i.i.i.i.i.i.i845

.lr.ph.i.i.i.i.i.i.i845:                          ; preds = %.lr.ph.i.i.i.i.i.i.i845.preheader3718, %.lr.ph.i.i.i.i.i.i.i845
  %.012.i.i.i.i.i.i.i846 = phi ptr [ %i.bcd, %.lr.ph.i.i.i.i.i.i.i845 ], [ %.012.i.i.i.i.i.i.i846.ph, %.lr.ph.i.i.i.i.i.i.i845.preheader3718 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i847 = phi ptr [ %i.bcc, %.lr.ph.i.i.i.i.i.i.i845 ], [ %.0911.i.i.i.i.i.i.i847.ph, %.lr.ph.i.i.i.i.i.i.i845.preheader3718 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.bcb = load i64, ptr %.0911.i.i.i.i.i.i.i847, align 8, !alias.scope !777, !noalias !774
  store i64 %i.bcb, ptr %.012.i.i.i.i.i.i.i846, align 8, !alias.scope !774, !noalias !777
  %i.bcc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i847, i64 8 ; 2 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i846, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i848 = icmp eq ptr %i.bcc, %.sroa.289.9
  br i1 %.not.i.i.i.i.i.i.i848, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i852, label %.lr.ph.i.i.i.i.i.i.i845, !llvm.loop !780

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i852: ; preds = %.lr.ph.i.i.i.i.i.i.i845, %middle.block2910, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i841
  %.0.lcssa.i.i.i.i.i.i.i850 = phi ptr [ %i.bbo, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i841 ], [ %i.bbv, %middle.block2910 ], [ %i.bcd, %.lr.ph.i.i.i.i.i.i.i845 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.9, i64 noundef %i.bbg) #28
  %i.bce = getelementptr inbounds nuw [8 x i8], ptr %i.bbo, i64 %i.bbm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit853

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit853: ; preds = %bb.ea, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i852
  %.sroa.289.10 = phi ptr [ %i.bce, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i852 ], [ %.sroa.289.9, %bb.ea ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i850.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i850, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i852 ], [ %.sroa.100.9, %bb.ea ] ; 4 uses
  %.sroa.01486.10 = phi ptr [ %i.bbo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i852 ], [ %.sroa.01486.9, %bb.ea ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i850.pn2916 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i850.pn to i64 ; 2 uses
  %.sroa.100.10 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i850.pn, i64 8 ; 2 uses
  %i.bcf = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.bcg = icmp eq ptr %i.bcf, null
  br i1 %i.bcg, label %bb.ed, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit854, !prof !5

bb.ed:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit853
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit854

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit854: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit853, %bb.ed
  %i.bch = ptrtoint ptr %i.bcf to i64             ; 2 uses
  %.not.i.i.i855 = icmp eq ptr %.sroa.100.10, %.sroa.289.10
  br i1 %.not.i.i.i855, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit854
  store i64 %i.bch, ptr %.sroa.100.10, align 8
  %i.bci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i850.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit868

bb.ef:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit854
  %i.bcj = ptrtoint ptr %.sroa.289.10 to i64
  %i.bck = ptrtoint ptr %.sroa.01486.10 to i64    ; 3 uses
  %i.bcl = sub i64 %i.bcj, %i.bck                 ; 4 uses
  %i.bcm = icmp eq i64 %i.bcl, 9223372036854775800
  br i1 %i.bcm, label %bb.eg, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i856

bb.eg:                                            ; preds = %bb.ef
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i856: ; preds = %bb.ef
  %i.bcn = ashr exact i64 %i.bcl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i857 = tail call i64 @llvm.umax.i64(i64 %i.bcn, i64 1)
  %i.bco = add nsw i64 %.sroa.speculated.i.i.i.i.i857, %i.bcn ; 2 uses
  %i.bcp = icmp ult i64 %i.bco, %i.bcn
  %i.bcq = tail call i64 @llvm.umin.i64(i64 %i.bco, i64 1152921504606846975)
  %i.bcr = select i1 %i.bcp, i64 1152921504606846975, i64 %i.bcq ; 3 uses
  %.not.i.i.i.i.i858 = icmp ne i64 %i.bcr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i858)
  %i.bcs = shl nuw nsw i64 %i.bcr, 3
  %i.bct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bcs) #27 ; 8 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bcl
  store i64 %i.bch, ptr %i.bcu, align 8
  %.not10.i.i.i.i.i.i.i859 = icmp eq ptr %.sroa.01486.10, %.sroa.289.10
  br i1 %.not10.i.i.i.i.i.i.i859, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867, label %.lr.ph.i.i.i.i.i.i.i860.preheader

.lr.ph.i.i.i.i.i.i.i860.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i856
  %i.bcv = ptrtoaddr ptr %i.bct to i64
  %i.bcw = sub i64 %.0.lcssa.i.i.i.i.i.i.i850.pn2916, %i.bck ; 2 uses
  %i.bcx = lshr i64 %i.bcw, 3
  %i.bcy = add nuw nsw i64 %i.bcx, 1              ; 2 uses
  %min.iters.check2918 = icmp ult i64 %i.bcw, 56
  %i.bcz = sub i64 %i.bcv, %i.bck
  %diff.check2915 = icmp ult i64 %i.bcz, 32
  %or.cond3611 = or i1 %min.iters.check2918, %diff.check2915
  br i1 %or.cond3611, label %.lr.ph.i.i.i.i.i.i.i860.preheader3716, label %vector.ph2919

vector.ph2919:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i860.preheader
  %n.vec2921 = and i64 %i.bcy, 4611686018427387900 ; 3 uses
  %i.bda = shl i64 %n.vec2921, 3                  ; 2 uses
  %i.bdb = getelementptr i8, ptr %i.bct, i64 %i.bda ; 2 uses
  %i.bdc = getelementptr i8, ptr %.sroa.01486.10, i64 %i.bda
  br label %vector.body2922

vector.body2922:                                  ; preds = %vector.body2922, %vector.ph2919
  %index2923 = phi i64 [ 0, %vector.ph2919 ], [ %index.next2928, %vector.body2922 ] ; 2 uses
  %i.bdd = shl i64 %index2923, 3                  ; 2 uses
  %next.gep2924 = getelementptr i8, ptr %i.bct, i64 %i.bdd ; 2 uses
  %next.gep2925 = getelementptr i8, ptr %.sroa.01486.10, i64 %i.bdd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.bde = getelementptr i8, ptr %next.gep2925, i64 16
  %wide.load2926 = load <2 x i64>, ptr %next.gep2925, align 8, !alias.scope !784, !noalias !781
  %wide.load2927 = load <2 x i64>, ptr %i.bde, align 8, !alias.scope !784, !noalias !781
  %i.bdf = getelementptr i8, ptr %next.gep2924, i64 16
  store <2 x i64> %wide.load2926, ptr %next.gep2924, align 8, !alias.scope !781, !noalias !784
  store <2 x i64> %wide.load2927, ptr %i.bdf, align 8, !alias.scope !781, !noalias !784
  %index.next2928 = add nuw i64 %index2923, 4     ; 2 uses
  %i.bdg = icmp eq i64 %index.next2928, %n.vec2921
  br i1 %i.bdg, label %middle.block2929, label %vector.body2922, !llvm.loop !786

middle.block2929:                                 ; preds = %vector.body2922
  %cmp.n2930 = icmp eq i64 %i.bcy, %n.vec2921
  br i1 %cmp.n2930, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867, label %.lr.ph.i.i.i.i.i.i.i860.preheader3716

.lr.ph.i.i.i.i.i.i.i860.preheader3716:            ; preds = %.lr.ph.i.i.i.i.i.i.i860.preheader, %middle.block2929
  %.012.i.i.i.i.i.i.i861.ph = phi ptr [ %i.bct, %.lr.ph.i.i.i.i.i.i.i860.preheader ], [ %i.bdb, %middle.block2929 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i862.ph = phi ptr [ %.sroa.01486.10, %.lr.ph.i.i.i.i.i.i.i860.preheader ], [ %i.bdc, %middle.block2929 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i862.ph3833 = ptrtoint ptr %.0911.i.i.i.i.i.i.i862.ph to i64
  %i.bdh = sub i64 %.0.lcssa.i.i.i.i.i.i.i850.pn2916, %.0911.i.i.i.i.i.i.i862.ph3833 ; 2 uses
  %i.bdi = lshr i64 %i.bdh, 3
  %i.bdj = add nuw nsw i64 %i.bdi, 1
  %xtraiter3834 = and i64 %i.bdj, 7               ; 2 uses
  %lcmp.mod3835.not = icmp eq i64 %xtraiter3834, 0
  br i1 %lcmp.mod3835.not, label %.lr.ph.i.i.i.i.i.i.i860.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i860.prol

.lr.ph.i.i.i.i.i.i.i860.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i860.preheader3716, %.lr.ph.i.i.i.i.i.i.i860.prol
  %.012.i.i.i.i.i.i.i861.prol = phi ptr [ %i.bdm, %.lr.ph.i.i.i.i.i.i.i860.prol ], [ %.012.i.i.i.i.i.i.i861.ph, %.lr.ph.i.i.i.i.i.i.i860.preheader3716 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i862.prol = phi ptr [ %i.bdl, %.lr.ph.i.i.i.i.i.i.i860.prol ], [ %.0911.i.i.i.i.i.i.i862.ph, %.lr.ph.i.i.i.i.i.i.i860.preheader3716 ] ; 2 uses
  %prol.iter3836 = phi i64 [ %prol.iter3836.next, %.lr.ph.i.i.i.i.i.i.i860.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i860.preheader3716 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.bdk = load i64, ptr %.0911.i.i.i.i.i.i.i862.prol, align 8, !alias.scope !784, !noalias !781
  store i64 %i.bdk, ptr %.012.i.i.i.i.i.i.i861.prol, align 8, !alias.scope !781, !noalias !784
  %i.bdl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862.prol, i64 8 ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861.prol, i64 8 ; 3 uses
  %prol.iter3836.next = add i64 %prol.iter3836, 1 ; 2 uses
  %prol.iter3836.cmp.not = icmp eq i64 %prol.iter3836.next, %xtraiter3834
  br i1 %prol.iter3836.cmp.not, label %.lr.ph.i.i.i.i.i.i.i860.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i860.prol, !llvm.loop !787

.lr.ph.i.i.i.i.i.i.i860.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i860.prol, %.lr.ph.i.i.i.i.i.i.i860.preheader3716
  %.lcssa3717.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i860.preheader3716 ], [ %i.bdm, %.lr.ph.i.i.i.i.i.i.i860.prol ]
  %.012.i.i.i.i.i.i.i861.unr = phi ptr [ %.012.i.i.i.i.i.i.i861.ph, %.lr.ph.i.i.i.i.i.i.i860.preheader3716 ], [ %i.bdm, %.lr.ph.i.i.i.i.i.i.i860.prol ]
  %.0911.i.i.i.i.i.i.i862.unr = phi ptr [ %.0911.i.i.i.i.i.i.i862.ph, %.lr.ph.i.i.i.i.i.i.i860.preheader3716 ], [ %i.bdl, %.lr.ph.i.i.i.i.i.i.i860.prol ]
  %i.bdn = icmp ult i64 %i.bdh, 56
  br i1 %i.bdn, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867, label %.lr.ph.i.i.i.i.i.i.i860

.lr.ph.i.i.i.i.i.i.i860:                          ; preds = %.lr.ph.i.i.i.i.i.i.i860.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i860
  %.012.i.i.i.i.i.i.i861 = phi ptr [ %i.bel, %.lr.ph.i.i.i.i.i.i.i860 ], [ %.012.i.i.i.i.i.i.i861.unr, %.lr.ph.i.i.i.i.i.i.i860.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i862 = phi ptr [ %i.bek, %.lr.ph.i.i.i.i.i.i.i860 ], [ %.0911.i.i.i.i.i.i.i862.unr, %.lr.ph.i.i.i.i.i.i.i860.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.bdo = load i64, ptr %.0911.i.i.i.i.i.i.i862, align 8, !alias.scope !784, !noalias !781
  store i64 %i.bdo, ptr %.012.i.i.i.i.i.i.i861, align 8, !alias.scope !781, !noalias !784
  %i.bdp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862, i64 8
  %i.bdq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.bdr = load i64, ptr %i.bdp, align 8, !alias.scope !790, !noalias !788
  store i64 %i.bdr, ptr %i.bdq, align 8, !alias.scope !788, !noalias !790
  %i.bds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862, i64 16
  %i.bdt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.bdu = load i64, ptr %i.bds, align 8, !alias.scope !794, !noalias !792
  store i64 %i.bdu, ptr %i.bdt, align 8, !alias.scope !792, !noalias !794
  %i.bdv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862, i64 24
  %i.bdw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.bdx = load i64, ptr %i.bdv, align 8, !alias.scope !798, !noalias !796
  store i64 %i.bdx, ptr %i.bdw, align 8, !alias.scope !796, !noalias !798
  %i.bdy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862, i64 32
  %i.bdz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.bea = load i64, ptr %i.bdy, align 8, !alias.scope !802, !noalias !800
  store i64 %i.bea, ptr %i.bdz, align 8, !alias.scope !800, !noalias !802
  %i.beb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862, i64 40
  %i.bec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.bed = load i64, ptr %i.beb, align 8, !alias.scope !806, !noalias !804
  store i64 %i.bed, ptr %i.bec, align 8, !alias.scope !804, !noalias !806
  %i.bee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862, i64 48
  %i.bef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.beg = load i64, ptr %i.bee, align 8, !alias.scope !810, !noalias !808
  store i64 %i.beg, ptr %i.bef, align 8, !alias.scope !808, !noalias !810
  %i.beh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862, i64 56 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.bej = load i64, ptr %i.beh, align 8, !alias.scope !814, !noalias !812
  store i64 %i.bej, ptr %i.bei, align 8, !alias.scope !812, !noalias !814
  %i.bek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i862, i64 64
  %i.bel = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i861, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i863.7 = icmp eq ptr %i.beh, %.0.lcssa.i.i.i.i.i.i.i850.pn
  br i1 %.not.i.i.i.i.i.i.i863.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867, label %.lr.ph.i.i.i.i.i.i.i860, !llvm.loop !816

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867: ; preds = %.lr.ph.i.i.i.i.i.i.i860.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i860, %middle.block2929, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i856
  %.0.lcssa.i.i.i.i.i.i.i865 = phi ptr [ %i.bct, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i856 ], [ %i.bdb, %middle.block2929 ], [ %.lcssa3717.unr, %.lr.ph.i.i.i.i.i.i.i860.prol.loopexit ], [ %i.bel, %.lr.ph.i.i.i.i.i.i.i860 ]
  %i.bem = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i865, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.10, i64 noundef %i.bcl) #28
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %i.bct, i64 %i.bcr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit868

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit868: ; preds = %bb.ee, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867
  %.sroa.289.11 = phi ptr [ %i.ben, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867 ], [ %.sroa.289.10, %bb.ee ] ; 5 uses
  %.sroa.100.11 = phi ptr [ %i.bem, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867 ], [ %i.bci, %bb.ee ] ; 3 uses
  %.sroa.01486.11 = phi ptr [ %i.bct, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i867 ], [ %.sroa.01486.10, %bb.ee ] ; 7 uses
  %i.beo = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.65, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.bep = icmp eq ptr %i.beo, null
  br i1 %i.bep, label %bb.eh, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit869, !prof !5

bb.eh:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit868
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit869

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit869: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit868, %bb.eh
  %i.beq = ptrtoint ptr %i.beo to i64             ; 2 uses
  %.not.i.i.i870 = icmp eq ptr %.sroa.100.11, %.sroa.289.11
  br i1 %.not.i.i.i870, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit869
  store i64 %i.beq, ptr %.sroa.100.11, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit883

bb.ej:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit869
  %i.ber = ptrtoint ptr %.sroa.289.11 to i64      ; 2 uses
  %i.bes = ptrtoint ptr %.sroa.01486.11 to i64    ; 3 uses
  %i.bet = sub i64 %i.ber, %i.bes                 ; 4 uses
  %i.beu = icmp eq i64 %i.bet, 9223372036854775800
  br i1 %i.beu, label %bb.ek, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i871

bb.ek:                                            ; preds = %bb.ej
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i871: ; preds = %bb.ej
  %i.bev = ashr exact i64 %i.bet, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i872 = tail call i64 @llvm.umax.i64(i64 %i.bev, i64 1)
  %i.bew = add nsw i64 %.sroa.speculated.i.i.i.i.i872, %i.bev ; 2 uses
  %i.bex = icmp ult i64 %i.bew, %i.bev
  %i.bey = tail call i64 @llvm.umin.i64(i64 %i.bew, i64 1152921504606846975)
  %i.bez = select i1 %i.bex, i64 1152921504606846975, i64 %i.bey ; 3 uses
  %.not.i.i.i.i.i873 = icmp ne i64 %i.bez, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i873)
  %i.bfa = shl nuw nsw i64 %i.bez, 3
  %i.bfb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfa) #27 ; 8 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 %i.bet
  store i64 %i.beq, ptr %i.bfc, align 8
  %.not10.i.i.i.i.i.i.i874 = icmp eq ptr %.sroa.01486.11, %.sroa.289.11
  br i1 %.not10.i.i.i.i.i.i.i874, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i882, label %.lr.ph.i.i.i.i.i.i.i875.preheader

.lr.ph.i.i.i.i.i.i.i875.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i871
  %i.bfd = ptrtoaddr ptr %i.bfb to i64
  %32 = sub i64 %i.ber, %i.bes
  %33 = add i64 %32, -8                           ; 2 uses
  %i.bfe = lshr i64 %33, 3
  %i.bff = add nuw nsw i64 %i.bfe, 1              ; 2 uses
  %min.iters.check2936 = icmp ult i64 %33, 56
  %i.bfg = sub i64 %i.bfd, %i.bes
  %diff.check2934 = icmp ult i64 %i.bfg, 32
  %or.cond3612 = or i1 %min.iters.check2936, %diff.check2934
  br i1 %or.cond3612, label %.lr.ph.i.i.i.i.i.i.i875.preheader3714, label %vector.ph2937

vector.ph2937:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i875.preheader
  %n.vec2939 = and i64 %i.bff, 4611686018427387900 ; 3 uses
  %i.bfh = shl i64 %n.vec2939, 3                  ; 2 uses
  %i.bfi = getelementptr i8, ptr %i.bfb, i64 %i.bfh ; 2 uses
  %i.bfj = getelementptr i8, ptr %.sroa.01486.11, i64 %i.bfh
  br label %vector.body2940

vector.body2940:                                  ; preds = %vector.body2940, %vector.ph2937
  %index2941 = phi i64 [ 0, %vector.ph2937 ], [ %index.next2946, %vector.body2940 ] ; 2 uses
  %i.bfk = shl i64 %index2941, 3                  ; 2 uses
  %next.gep2942 = getelementptr i8, ptr %i.bfb, i64 %i.bfk ; 2 uses
  %next.gep2943 = getelementptr i8, ptr %.sroa.01486.11, i64 %i.bfk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.bfl = getelementptr i8, ptr %next.gep2943, i64 16
  %wide.load2944 = load <2 x i64>, ptr %next.gep2943, align 8, !alias.scope !820, !noalias !817
  %wide.load2945 = load <2 x i64>, ptr %i.bfl, align 8, !alias.scope !820, !noalias !817
  %i.bfm = getelementptr i8, ptr %next.gep2942, i64 16
  store <2 x i64> %wide.load2944, ptr %next.gep2942, align 8, !alias.scope !817, !noalias !820
  store <2 x i64> %wide.load2945, ptr %i.bfm, align 8, !alias.scope !817, !noalias !820
  %index.next2946 = add nuw i64 %index2941, 4     ; 2 uses
  %i.bfn = icmp eq i64 %index.next2946, %n.vec2939
  br i1 %i.bfn, label %middle.block2947, label %vector.body2940, !llvm.loop !822

middle.block2947:                                 ; preds = %vector.body2940
  %cmp.n2948 = icmp eq i64 %i.bff, %n.vec2939
  br i1 %cmp.n2948, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i882, label %.lr.ph.i.i.i.i.i.i.i875.preheader3714

.lr.ph.i.i.i.i.i.i.i875.preheader3714:            ; preds = %.lr.ph.i.i.i.i.i.i.i875.preheader, %middle.block2947
  %.012.i.i.i.i.i.i.i876.ph = phi ptr [ %i.bfb, %.lr.ph.i.i.i.i.i.i.i875.preheader ], [ %i.bfi, %middle.block2947 ]
  %.0911.i.i.i.i.i.i.i877.ph = phi ptr [ %.sroa.01486.11, %.lr.ph.i.i.i.i.i.i.i875.preheader ], [ %i.bfj, %middle.block2947 ]
  br label %.lr.ph.i.i.i.i.i.i.i875

.lr.ph.i.i.i.i.i.i.i875:                          ; preds = %.lr.ph.i.i.i.i.i.i.i875.preheader3714, %.lr.ph.i.i.i.i.i.i.i875
  %.012.i.i.i.i.i.i.i876 = phi ptr [ %i.bfq, %.lr.ph.i.i.i.i.i.i.i875 ], [ %.012.i.i.i.i.i.i.i876.ph, %.lr.ph.i.i.i.i.i.i.i875.preheader3714 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i877 = phi ptr [ %i.bfp, %.lr.ph.i.i.i.i.i.i.i875 ], [ %.0911.i.i.i.i.i.i.i877.ph, %.lr.ph.i.i.i.i.i.i.i875.preheader3714 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.bfo = load i64, ptr %.0911.i.i.i.i.i.i.i877, align 8, !alias.scope !820, !noalias !817
  store i64 %i.bfo, ptr %.012.i.i.i.i.i.i.i876, align 8, !alias.scope !817, !noalias !820
  %i.bfp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i877, i64 8 ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i876, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i878 = icmp eq ptr %i.bfp, %.sroa.289.11
  br i1 %.not.i.i.i.i.i.i.i878, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i882, label %.lr.ph.i.i.i.i.i.i.i875, !llvm.loop !823

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i882: ; preds = %.lr.ph.i.i.i.i.i.i.i875, %middle.block2947, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i871
  %.0.lcssa.i.i.i.i.i.i.i880 = phi ptr [ %i.bfb, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i871 ], [ %i.bfi, %middle.block2947 ], [ %i.bfq, %.lr.ph.i.i.i.i.i.i.i875 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.11, i64 noundef %i.bet) #28
  %i.bfr = getelementptr inbounds nuw [8 x i8], ptr %i.bfb, i64 %i.bez
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit883

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit883: ; preds = %bb.ei, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i882
  %.sroa.289.12 = phi ptr [ %i.bfr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i882 ], [ %.sroa.289.11, %bb.ei ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i880.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i880, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i882 ], [ %.sroa.100.11, %bb.ei ] ; 4 uses
  %.sroa.01486.12 = phi ptr [ %i.bfb, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i882 ], [ %.sroa.01486.11, %bb.ei ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i880.pn2953 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i880.pn to i64 ; 2 uses
  %.sroa.100.12 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i880.pn, i64 8 ; 2 uses
  %i.bfs = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.66, i32 noundef 1, i32 noundef 9) #25 ; 2 uses
  %i.bft = icmp eq ptr %i.bfs, null
  br i1 %i.bft, label %bb.el, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit884, !prof !5

bb.el:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit883
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit884

_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit884: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit883, %bb.el
  %i.bfu = ptrtoint ptr %i.bfs to i64             ; 2 uses
  %.not.i.i.i885 = icmp eq ptr %.sroa.100.12, %.sroa.289.12
  br i1 %.not.i.i.i885, label %bb.en, label %bb.em

bb.em:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit884
  store i64 %i.bfu, ptr %.sroa.100.12, align 8
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i880.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit898

bb.en:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit884
  %i.bfw = ptrtoint ptr %.sroa.289.12 to i64
  %i.bfx = ptrtoint ptr %.sroa.01486.12 to i64    ; 3 uses
  %i.bfy = sub i64 %i.bfw, %i.bfx                 ; 4 uses
  %i.bfz = icmp eq i64 %i.bfy, 9223372036854775800
  br i1 %i.bfz, label %bb.eo, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i886

bb.eo:                                            ; preds = %bb.en
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i886: ; preds = %bb.en
  %i.bga = ashr exact i64 %i.bfy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i887 = tail call i64 @llvm.umax.i64(i64 %i.bga, i64 1)
  %i.bgb = add nsw i64 %.sroa.speculated.i.i.i.i.i887, %i.bga ; 2 uses
  %i.bgc = icmp ult i64 %i.bgb, %i.bga
  %i.bgd = tail call i64 @llvm.umin.i64(i64 %i.bgb, i64 1152921504606846975)
  %i.bge = select i1 %i.bgc, i64 1152921504606846975, i64 %i.bgd ; 3 uses
  %.not.i.i.i.i.i888 = icmp ne i64 %i.bge, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i888)
  %i.bgf = shl nuw nsw i64 %i.bge, 3
  %i.bgg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bgf) #27 ; 8 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 %i.bfy
  store i64 %i.bfu, ptr %i.bgh, align 8
  %.not10.i.i.i.i.i.i.i889 = icmp eq ptr %.sroa.01486.12, %.sroa.289.12
  br i1 %.not10.i.i.i.i.i.i.i889, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897, label %.lr.ph.i.i.i.i.i.i.i890.preheader

.lr.ph.i.i.i.i.i.i.i890.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i886
  %i.bgi = ptrtoaddr ptr %i.bgg to i64
  %i.bgj = sub i64 %.0.lcssa.i.i.i.i.i.i.i880.pn2953, %i.bfx ; 2 uses
  %i.bgk = lshr i64 %i.bgj, 3
  %i.bgl = add nuw nsw i64 %i.bgk, 1              ; 2 uses
  %min.iters.check2955 = icmp ult i64 %i.bgj, 56
  %i.bgm = sub i64 %i.bgi, %i.bfx
  %diff.check2952 = icmp ult i64 %i.bgm, 32
  %or.cond3613 = or i1 %min.iters.check2955, %diff.check2952
  br i1 %or.cond3613, label %.lr.ph.i.i.i.i.i.i.i890.preheader3712, label %vector.ph2956

vector.ph2956:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i890.preheader
  %n.vec2958 = and i64 %i.bgl, 4611686018427387900 ; 3 uses
  %i.bgn = shl i64 %n.vec2958, 3                  ; 2 uses
  %i.bgo = getelementptr i8, ptr %i.bgg, i64 %i.bgn ; 2 uses
  %i.bgp = getelementptr i8, ptr %.sroa.01486.12, i64 %i.bgn
  br label %vector.body2959

vector.body2959:                                  ; preds = %vector.body2959, %vector.ph2956
  %index2960 = phi i64 [ 0, %vector.ph2956 ], [ %index.next2965, %vector.body2959 ] ; 2 uses
  %i.bgq = shl i64 %index2960, 3                  ; 2 uses
  %next.gep2961 = getelementptr i8, ptr %i.bgg, i64 %i.bgq ; 2 uses
  %next.gep2962 = getelementptr i8, ptr %.sroa.01486.12, i64 %i.bgq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.bgr = getelementptr i8, ptr %next.gep2962, i64 16
  %wide.load2963 = load <2 x i64>, ptr %next.gep2962, align 8, !alias.scope !827, !noalias !824
  %wide.load2964 = load <2 x i64>, ptr %i.bgr, align 8, !alias.scope !827, !noalias !824
  %i.bgs = getelementptr i8, ptr %next.gep2961, i64 16
  store <2 x i64> %wide.load2963, ptr %next.gep2961, align 8, !alias.scope !824, !noalias !827
  store <2 x i64> %wide.load2964, ptr %i.bgs, align 8, !alias.scope !824, !noalias !827
  %index.next2965 = add nuw i64 %index2960, 4     ; 2 uses
  %i.bgt = icmp eq i64 %index.next2965, %n.vec2958
  br i1 %i.bgt, label %middle.block2966, label %vector.body2959, !llvm.loop !829

middle.block2966:                                 ; preds = %vector.body2959
  %cmp.n2967 = icmp eq i64 %i.bgl, %n.vec2958
  br i1 %cmp.n2967, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897, label %.lr.ph.i.i.i.i.i.i.i890.preheader3712

.lr.ph.i.i.i.i.i.i.i890.preheader3712:            ; preds = %.lr.ph.i.i.i.i.i.i.i890.preheader, %middle.block2966
  %.012.i.i.i.i.i.i.i891.ph = phi ptr [ %i.bgg, %.lr.ph.i.i.i.i.i.i.i890.preheader ], [ %i.bgo, %middle.block2966 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i892.ph = phi ptr [ %.sroa.01486.12, %.lr.ph.i.i.i.i.i.i.i890.preheader ], [ %i.bgp, %middle.block2966 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i892.ph3837 = ptrtoint ptr %.0911.i.i.i.i.i.i.i892.ph to i64
  %i.bgu = sub i64 %.0.lcssa.i.i.i.i.i.i.i880.pn2953, %.0911.i.i.i.i.i.i.i892.ph3837 ; 2 uses
  %i.bgv = lshr i64 %i.bgu, 3
  %i.bgw = add nuw nsw i64 %i.bgv, 1
  %xtraiter3838 = and i64 %i.bgw, 7               ; 2 uses
  %lcmp.mod3839.not = icmp eq i64 %xtraiter3838, 0
  br i1 %lcmp.mod3839.not, label %.lr.ph.i.i.i.i.i.i.i890.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i890.prol

.lr.ph.i.i.i.i.i.i.i890.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i890.preheader3712, %.lr.ph.i.i.i.i.i.i.i890.prol
  %.012.i.i.i.i.i.i.i891.prol = phi ptr [ %i.bgz, %.lr.ph.i.i.i.i.i.i.i890.prol ], [ %.012.i.i.i.i.i.i.i891.ph, %.lr.ph.i.i.i.i.i.i.i890.preheader3712 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i892.prol = phi ptr [ %i.bgy, %.lr.ph.i.i.i.i.i.i.i890.prol ], [ %.0911.i.i.i.i.i.i.i892.ph, %.lr.ph.i.i.i.i.i.i.i890.preheader3712 ] ; 2 uses
  %prol.iter3840 = phi i64 [ %prol.iter3840.next, %.lr.ph.i.i.i.i.i.i.i890.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i890.preheader3712 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.bgx = load i64, ptr %.0911.i.i.i.i.i.i.i892.prol, align 8, !alias.scope !827, !noalias !824
  store i64 %i.bgx, ptr %.012.i.i.i.i.i.i.i891.prol, align 8, !alias.scope !824, !noalias !827
  %i.bgy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892.prol, i64 8 ; 2 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891.prol, i64 8 ; 3 uses
  %prol.iter3840.next = add i64 %prol.iter3840, 1 ; 2 uses
  %prol.iter3840.cmp.not = icmp eq i64 %prol.iter3840.next, %xtraiter3838
  br i1 %prol.iter3840.cmp.not, label %.lr.ph.i.i.i.i.i.i.i890.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i890.prol, !llvm.loop !830

.lr.ph.i.i.i.i.i.i.i890.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i890.prol, %.lr.ph.i.i.i.i.i.i.i890.preheader3712
  %.lcssa3713.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i890.preheader3712 ], [ %i.bgz, %.lr.ph.i.i.i.i.i.i.i890.prol ]
  %.012.i.i.i.i.i.i.i891.unr = phi ptr [ %.012.i.i.i.i.i.i.i891.ph, %.lr.ph.i.i.i.i.i.i.i890.preheader3712 ], [ %i.bgz, %.lr.ph.i.i.i.i.i.i.i890.prol ]
  %.0911.i.i.i.i.i.i.i892.unr = phi ptr [ %.0911.i.i.i.i.i.i.i892.ph, %.lr.ph.i.i.i.i.i.i.i890.preheader3712 ], [ %i.bgy, %.lr.ph.i.i.i.i.i.i.i890.prol ]
  %i.bha = icmp ult i64 %i.bgu, 56
  br i1 %i.bha, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897, label %.lr.ph.i.i.i.i.i.i.i890

.lr.ph.i.i.i.i.i.i.i890:                          ; preds = %.lr.ph.i.i.i.i.i.i.i890.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i890
  %.012.i.i.i.i.i.i.i891 = phi ptr [ %i.bhy, %.lr.ph.i.i.i.i.i.i.i890 ], [ %.012.i.i.i.i.i.i.i891.unr, %.lr.ph.i.i.i.i.i.i.i890.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i892 = phi ptr [ %i.bhx, %.lr.ph.i.i.i.i.i.i.i890 ], [ %.0911.i.i.i.i.i.i.i892.unr, %.lr.ph.i.i.i.i.i.i.i890.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.bhb = load i64, ptr %.0911.i.i.i.i.i.i.i892, align 8, !alias.scope !827, !noalias !824
  store i64 %i.bhb, ptr %.012.i.i.i.i.i.i.i891, align 8, !alias.scope !824, !noalias !827
  %i.bhc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892, i64 8
  %i.bhd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.bhe = load i64, ptr %i.bhc, align 8, !alias.scope !833, !noalias !831
  store i64 %i.bhe, ptr %i.bhd, align 8, !alias.scope !831, !noalias !833
  %i.bhf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892, i64 16
  %i.bhg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.bhh = load i64, ptr %i.bhf, align 8, !alias.scope !837, !noalias !835
  store i64 %i.bhh, ptr %i.bhg, align 8, !alias.scope !835, !noalias !837
  %i.bhi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892, i64 24
  %i.bhj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.bhk = load i64, ptr %i.bhi, align 8, !alias.scope !841, !noalias !839
  store i64 %i.bhk, ptr %i.bhj, align 8, !alias.scope !839, !noalias !841
  %i.bhl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892, i64 32
  %i.bhm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.bhn = load i64, ptr %i.bhl, align 8, !alias.scope !845, !noalias !843
  store i64 %i.bhn, ptr %i.bhm, align 8, !alias.scope !843, !noalias !845
  %i.bho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892, i64 40
  %i.bhp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.bhq = load i64, ptr %i.bho, align 8, !alias.scope !849, !noalias !847
  store i64 %i.bhq, ptr %i.bhp, align 8, !alias.scope !847, !noalias !849
  %i.bhr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892, i64 48
  %i.bhs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.bht = load i64, ptr %i.bhr, align 8, !alias.scope !853, !noalias !851
  store i64 %i.bht, ptr %i.bhs, align 8, !alias.scope !851, !noalias !853
  %i.bhu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892, i64 56 ; 2 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.bhw = load i64, ptr %i.bhu, align 8, !alias.scope !857, !noalias !855
  store i64 %i.bhw, ptr %i.bhv, align 8, !alias.scope !855, !noalias !857
  %i.bhx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i892, i64 64
  %i.bhy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i891, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i893.7 = icmp eq ptr %i.bhu, %.0.lcssa.i.i.i.i.i.i.i880.pn
  br i1 %.not.i.i.i.i.i.i.i893.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897, label %.lr.ph.i.i.i.i.i.i.i890, !llvm.loop !859

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897: ; preds = %.lr.ph.i.i.i.i.i.i.i890.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i890, %middle.block2966, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i886
  %.0.lcssa.i.i.i.i.i.i.i895 = phi ptr [ %i.bgg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i886 ], [ %i.bgo, %middle.block2966 ], [ %.lcssa3713.unr, %.lr.ph.i.i.i.i.i.i.i890.prol.loopexit ], [ %i.bhy, %.lr.ph.i.i.i.i.i.i.i890 ]
  %i.bhz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i895, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.12, i64 noundef %i.bfy) #28
  %i.bia = getelementptr inbounds nuw [8 x i8], ptr %i.bgg, i64 %i.bge
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit898

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit898: ; preds = %bb.em, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897
  %.sroa.289.13 = phi ptr [ %i.bia, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897 ], [ %.sroa.289.12, %bb.em ] ; 5 uses
  %.sroa.100.13 = phi ptr [ %i.bhz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897 ], [ %i.bfv, %bb.em ] ; 3 uses
  %.sroa.01486.13 = phi ptr [ %i.bgg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i897 ], [ %.sroa.01486.12, %bb.em ] ; 7 uses
  %i.bib = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.67, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.bic = icmp eq ptr %i.bib, null
  br i1 %i.bic, label %bb.ep, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit899, !prof !5

bb.ep:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit898
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit899

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit899: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit898, %bb.ep
  %i.bid = ptrtoint ptr %i.bib to i64             ; 2 uses
  %.not.i.i.i900 = icmp eq ptr %.sroa.100.13, %.sroa.289.13
  br i1 %.not.i.i.i900, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit899
  store i64 %i.bid, ptr %.sroa.100.13, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit913

bb.er:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit899
  %i.bie = ptrtoint ptr %.sroa.289.13 to i64      ; 2 uses
  %i.bif = ptrtoint ptr %.sroa.01486.13 to i64    ; 3 uses
  %i.big = sub i64 %i.bie, %i.bif                 ; 4 uses
  %i.bih = icmp eq i64 %i.big, 9223372036854775800
  br i1 %i.bih, label %bb.es, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i901

bb.es:                                            ; preds = %bb.er
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i901: ; preds = %bb.er
  %i.bii = ashr exact i64 %i.big, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i902 = tail call i64 @llvm.umax.i64(i64 %i.bii, i64 1)
  %i.bij = add nsw i64 %.sroa.speculated.i.i.i.i.i902, %i.bii ; 2 uses
  %i.bik = icmp ult i64 %i.bij, %i.bii
  %i.bil = tail call i64 @llvm.umin.i64(i64 %i.bij, i64 1152921504606846975)
  %i.bim = select i1 %i.bik, i64 1152921504606846975, i64 %i.bil ; 3 uses
  %.not.i.i.i.i.i903 = icmp ne i64 %i.bim, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i903)
  %i.bin = shl nuw nsw i64 %i.bim, 3
  %i.bio = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bin) #27 ; 8 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.big
  store i64 %i.bid, ptr %i.bip, align 8
  %.not10.i.i.i.i.i.i.i904 = icmp eq ptr %.sroa.01486.13, %.sroa.289.13
  br i1 %.not10.i.i.i.i.i.i.i904, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i912, label %.lr.ph.i.i.i.i.i.i.i905.preheader

.lr.ph.i.i.i.i.i.i.i905.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i901
  %i.biq = ptrtoaddr ptr %i.bio to i64
  %34 = sub i64 %i.bie, %i.bif
  %35 = add i64 %34, -8                           ; 2 uses
  %i.bir = lshr i64 %35, 3
  %i.bis = add nuw nsw i64 %i.bir, 1              ; 2 uses
  %min.iters.check2973 = icmp ult i64 %35, 56
  %i.bit = sub i64 %i.biq, %i.bif
  %diff.check2971 = icmp ult i64 %i.bit, 32
  %or.cond3614 = or i1 %min.iters.check2973, %diff.check2971
  br i1 %or.cond3614, label %.lr.ph.i.i.i.i.i.i.i905.preheader3710, label %vector.ph2974

vector.ph2974:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i905.preheader
  %n.vec2976 = and i64 %i.bis, 4611686018427387900 ; 3 uses
  %i.biu = shl i64 %n.vec2976, 3                  ; 2 uses
  %i.biv = getelementptr i8, ptr %i.bio, i64 %i.biu ; 2 uses
  %i.biw = getelementptr i8, ptr %.sroa.01486.13, i64 %i.biu
  br label %vector.body2977

vector.body2977:                                  ; preds = %vector.body2977, %vector.ph2974
  %index2978 = phi i64 [ 0, %vector.ph2974 ], [ %index.next2983, %vector.body2977 ] ; 2 uses
  %i.bix = shl i64 %index2978, 3                  ; 2 uses
  %next.gep2979 = getelementptr i8, ptr %i.bio, i64 %i.bix ; 2 uses
  %next.gep2980 = getelementptr i8, ptr %.sroa.01486.13, i64 %i.bix ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.biy = getelementptr i8, ptr %next.gep2980, i64 16
  %wide.load2981 = load <2 x i64>, ptr %next.gep2980, align 8, !alias.scope !863, !noalias !860
  %wide.load2982 = load <2 x i64>, ptr %i.biy, align 8, !alias.scope !863, !noalias !860
  %i.biz = getelementptr i8, ptr %next.gep2979, i64 16
  store <2 x i64> %wide.load2981, ptr %next.gep2979, align 8, !alias.scope !860, !noalias !863
  store <2 x i64> %wide.load2982, ptr %i.biz, align 8, !alias.scope !860, !noalias !863
  %index.next2983 = add nuw i64 %index2978, 4     ; 2 uses
  %i.bja = icmp eq i64 %index.next2983, %n.vec2976
  br i1 %i.bja, label %middle.block2984, label %vector.body2977, !llvm.loop !865

middle.block2984:                                 ; preds = %vector.body2977
  %cmp.n2985 = icmp eq i64 %i.bis, %n.vec2976
  br i1 %cmp.n2985, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i912, label %.lr.ph.i.i.i.i.i.i.i905.preheader3710

.lr.ph.i.i.i.i.i.i.i905.preheader3710:            ; preds = %.lr.ph.i.i.i.i.i.i.i905.preheader, %middle.block2984
  %.012.i.i.i.i.i.i.i906.ph = phi ptr [ %i.bio, %.lr.ph.i.i.i.i.i.i.i905.preheader ], [ %i.biv, %middle.block2984 ]
  %.0911.i.i.i.i.i.i.i907.ph = phi ptr [ %.sroa.01486.13, %.lr.ph.i.i.i.i.i.i.i905.preheader ], [ %i.biw, %middle.block2984 ]
  br label %.lr.ph.i.i.i.i.i.i.i905

.lr.ph.i.i.i.i.i.i.i905:                          ; preds = %.lr.ph.i.i.i.i.i.i.i905.preheader3710, %.lr.ph.i.i.i.i.i.i.i905
  %.012.i.i.i.i.i.i.i906 = phi ptr [ %i.bjd, %.lr.ph.i.i.i.i.i.i.i905 ], [ %.012.i.i.i.i.i.i.i906.ph, %.lr.ph.i.i.i.i.i.i.i905.preheader3710 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i907 = phi ptr [ %i.bjc, %.lr.ph.i.i.i.i.i.i.i905 ], [ %.0911.i.i.i.i.i.i.i907.ph, %.lr.ph.i.i.i.i.i.i.i905.preheader3710 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.bjb = load i64, ptr %.0911.i.i.i.i.i.i.i907, align 8, !alias.scope !863, !noalias !860
  store i64 %i.bjb, ptr %.012.i.i.i.i.i.i.i906, align 8, !alias.scope !860, !noalias !863
  %i.bjc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i907, i64 8 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i906, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i908 = icmp eq ptr %i.bjc, %.sroa.289.13
  br i1 %.not.i.i.i.i.i.i.i908, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i912, label %.lr.ph.i.i.i.i.i.i.i905, !llvm.loop !866

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i912: ; preds = %.lr.ph.i.i.i.i.i.i.i905, %middle.block2984, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i901
  %.0.lcssa.i.i.i.i.i.i.i910 = phi ptr [ %i.bio, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i901 ], [ %i.biv, %middle.block2984 ], [ %i.bjd, %.lr.ph.i.i.i.i.i.i.i905 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.13, i64 noundef %i.big) #28
  %i.bje = getelementptr inbounds nuw [8 x i8], ptr %i.bio, i64 %i.bim
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit913

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit913: ; preds = %bb.eq, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i912
  %.sroa.289.14 = phi ptr [ %i.bje, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i912 ], [ %.sroa.289.13, %bb.eq ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i910.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i910, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i912 ], [ %.sroa.100.13, %bb.eq ] ; 4 uses
  %.sroa.01486.14 = phi ptr [ %i.bio, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i912 ], [ %.sroa.01486.13, %bb.eq ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i910.pn2990 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i910.pn to i64 ; 2 uses
  %.sroa.100.14 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i910.pn, i64 8 ; 2 uses
  %i.bjf = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.68, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.bjg = icmp eq ptr %i.bjf, null
  br i1 %i.bjg, label %bb.et, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit914, !prof !5

bb.et:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit913
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit914

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit914: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit913, %bb.et
  %i.bjh = ptrtoint ptr %i.bjf to i64             ; 2 uses
  %.not.i.i.i915 = icmp eq ptr %.sroa.100.14, %.sroa.289.14
  br i1 %.not.i.i.i915, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit914
  store i64 %i.bjh, ptr %.sroa.100.14, align 8
  %i.bji = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i910.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit928

bb.ev:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit914
  %i.bjj = ptrtoint ptr %.sroa.289.14 to i64
  %i.bjk = ptrtoint ptr %.sroa.01486.14 to i64    ; 3 uses
  %i.bjl = sub i64 %i.bjj, %i.bjk                 ; 4 uses
  %i.bjm = icmp eq i64 %i.bjl, 9223372036854775800
  br i1 %i.bjm, label %bb.ew, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i916

bb.ew:                                            ; preds = %bb.ev
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i916: ; preds = %bb.ev
  %i.bjn = ashr exact i64 %i.bjl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i917 = tail call i64 @llvm.umax.i64(i64 %i.bjn, i64 1)
  %i.bjo = add nsw i64 %.sroa.speculated.i.i.i.i.i917, %i.bjn ; 2 uses
  %i.bjp = icmp ult i64 %i.bjo, %i.bjn
  %i.bjq = tail call i64 @llvm.umin.i64(i64 %i.bjo, i64 1152921504606846975)
  %i.bjr = select i1 %i.bjp, i64 1152921504606846975, i64 %i.bjq ; 3 uses
  %.not.i.i.i.i.i918 = icmp ne i64 %i.bjr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i918)
  %i.bjs = shl nuw nsw i64 %i.bjr, 3
  %i.bjt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjs) #27 ; 8 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 %i.bjl
  store i64 %i.bjh, ptr %i.bju, align 8
  %.not10.i.i.i.i.i.i.i919 = icmp eq ptr %.sroa.01486.14, %.sroa.289.14
  br i1 %.not10.i.i.i.i.i.i.i919, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927, label %.lr.ph.i.i.i.i.i.i.i920.preheader

.lr.ph.i.i.i.i.i.i.i920.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i916
  %i.bjv = ptrtoaddr ptr %i.bjt to i64
  %i.bjw = sub i64 %.0.lcssa.i.i.i.i.i.i.i910.pn2990, %i.bjk ; 2 uses
  %i.bjx = lshr i64 %i.bjw, 3
  %i.bjy = add nuw nsw i64 %i.bjx, 1              ; 2 uses
  %min.iters.check2992 = icmp ult i64 %i.bjw, 56
  %i.bjz = sub i64 %i.bjv, %i.bjk
  %diff.check2989 = icmp ult i64 %i.bjz, 32
  %or.cond3615 = or i1 %min.iters.check2992, %diff.check2989
  br i1 %or.cond3615, label %.lr.ph.i.i.i.i.i.i.i920.preheader3708, label %vector.ph2993

vector.ph2993:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i920.preheader
  %n.vec2995 = and i64 %i.bjy, 4611686018427387900 ; 3 uses
  %i.bka = shl i64 %n.vec2995, 3                  ; 2 uses
  %i.bkb = getelementptr i8, ptr %i.bjt, i64 %i.bka ; 2 uses
  %i.bkc = getelementptr i8, ptr %.sroa.01486.14, i64 %i.bka
  br label %vector.body2996

vector.body2996:                                  ; preds = %vector.body2996, %vector.ph2993
  %index2997 = phi i64 [ 0, %vector.ph2993 ], [ %index.next3002, %vector.body2996 ] ; 2 uses
  %i.bkd = shl i64 %index2997, 3                  ; 2 uses
  %next.gep2998 = getelementptr i8, ptr %i.bjt, i64 %i.bkd ; 2 uses
  %next.gep2999 = getelementptr i8, ptr %.sroa.01486.14, i64 %i.bkd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.bke = getelementptr i8, ptr %next.gep2999, i64 16
  %wide.load3000 = load <2 x i64>, ptr %next.gep2999, align 8, !alias.scope !870, !noalias !867
  %wide.load3001 = load <2 x i64>, ptr %i.bke, align 8, !alias.scope !870, !noalias !867
  %i.bkf = getelementptr i8, ptr %next.gep2998, i64 16
  store <2 x i64> %wide.load3000, ptr %next.gep2998, align 8, !alias.scope !867, !noalias !870
  store <2 x i64> %wide.load3001, ptr %i.bkf, align 8, !alias.scope !867, !noalias !870
  %index.next3002 = add nuw i64 %index2997, 4     ; 2 uses
  %i.bkg = icmp eq i64 %index.next3002, %n.vec2995
  br i1 %i.bkg, label %middle.block3003, label %vector.body2996, !llvm.loop !872

middle.block3003:                                 ; preds = %vector.body2996
  %cmp.n3004 = icmp eq i64 %i.bjy, %n.vec2995
  br i1 %cmp.n3004, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927, label %.lr.ph.i.i.i.i.i.i.i920.preheader3708

.lr.ph.i.i.i.i.i.i.i920.preheader3708:            ; preds = %.lr.ph.i.i.i.i.i.i.i920.preheader, %middle.block3003
  %.012.i.i.i.i.i.i.i921.ph = phi ptr [ %i.bjt, %.lr.ph.i.i.i.i.i.i.i920.preheader ], [ %i.bkb, %middle.block3003 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i922.ph = phi ptr [ %.sroa.01486.14, %.lr.ph.i.i.i.i.i.i.i920.preheader ], [ %i.bkc, %middle.block3003 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i922.ph3841 = ptrtoint ptr %.0911.i.i.i.i.i.i.i922.ph to i64
  %i.bkh = sub i64 %.0.lcssa.i.i.i.i.i.i.i910.pn2990, %.0911.i.i.i.i.i.i.i922.ph3841 ; 2 uses
  %i.bki = lshr i64 %i.bkh, 3
  %i.bkj = add nuw nsw i64 %i.bki, 1
  %xtraiter3842 = and i64 %i.bkj, 7               ; 2 uses
  %lcmp.mod3843.not = icmp eq i64 %xtraiter3842, 0
  br i1 %lcmp.mod3843.not, label %.lr.ph.i.i.i.i.i.i.i920.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i920.prol

.lr.ph.i.i.i.i.i.i.i920.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i920.preheader3708, %.lr.ph.i.i.i.i.i.i.i920.prol
  %.012.i.i.i.i.i.i.i921.prol = phi ptr [ %i.bkm, %.lr.ph.i.i.i.i.i.i.i920.prol ], [ %.012.i.i.i.i.i.i.i921.ph, %.lr.ph.i.i.i.i.i.i.i920.preheader3708 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i922.prol = phi ptr [ %i.bkl, %.lr.ph.i.i.i.i.i.i.i920.prol ], [ %.0911.i.i.i.i.i.i.i922.ph, %.lr.ph.i.i.i.i.i.i.i920.preheader3708 ] ; 2 uses
  %prol.iter3844 = phi i64 [ %prol.iter3844.next, %.lr.ph.i.i.i.i.i.i.i920.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i920.preheader3708 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.bkk = load i64, ptr %.0911.i.i.i.i.i.i.i922.prol, align 8, !alias.scope !870, !noalias !867
  store i64 %i.bkk, ptr %.012.i.i.i.i.i.i.i921.prol, align 8, !alias.scope !867, !noalias !870
  %i.bkl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922.prol, i64 8 ; 2 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921.prol, i64 8 ; 3 uses
  %prol.iter3844.next = add i64 %prol.iter3844, 1 ; 2 uses
  %prol.iter3844.cmp.not = icmp eq i64 %prol.iter3844.next, %xtraiter3842
  br i1 %prol.iter3844.cmp.not, label %.lr.ph.i.i.i.i.i.i.i920.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i920.prol, !llvm.loop !873

.lr.ph.i.i.i.i.i.i.i920.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i920.prol, %.lr.ph.i.i.i.i.i.i.i920.preheader3708
  %.lcssa3709.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i920.preheader3708 ], [ %i.bkm, %.lr.ph.i.i.i.i.i.i.i920.prol ]
  %.012.i.i.i.i.i.i.i921.unr = phi ptr [ %.012.i.i.i.i.i.i.i921.ph, %.lr.ph.i.i.i.i.i.i.i920.preheader3708 ], [ %i.bkm, %.lr.ph.i.i.i.i.i.i.i920.prol ]
  %.0911.i.i.i.i.i.i.i922.unr = phi ptr [ %.0911.i.i.i.i.i.i.i922.ph, %.lr.ph.i.i.i.i.i.i.i920.preheader3708 ], [ %i.bkl, %.lr.ph.i.i.i.i.i.i.i920.prol ]
  %i.bkn = icmp ult i64 %i.bkh, 56
  br i1 %i.bkn, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927, label %.lr.ph.i.i.i.i.i.i.i920

.lr.ph.i.i.i.i.i.i.i920:                          ; preds = %.lr.ph.i.i.i.i.i.i.i920.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i920
  %.012.i.i.i.i.i.i.i921 = phi ptr [ %i.bll, %.lr.ph.i.i.i.i.i.i.i920 ], [ %.012.i.i.i.i.i.i.i921.unr, %.lr.ph.i.i.i.i.i.i.i920.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i922 = phi ptr [ %i.blk, %.lr.ph.i.i.i.i.i.i.i920 ], [ %.0911.i.i.i.i.i.i.i922.unr, %.lr.ph.i.i.i.i.i.i.i920.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.bko = load i64, ptr %.0911.i.i.i.i.i.i.i922, align 8, !alias.scope !870, !noalias !867
  store i64 %i.bko, ptr %.012.i.i.i.i.i.i.i921, align 8, !alias.scope !867, !noalias !870
  %i.bkp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922, i64 8
  %i.bkq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.bkr = load i64, ptr %i.bkp, align 8, !alias.scope !876, !noalias !874
  store i64 %i.bkr, ptr %i.bkq, align 8, !alias.scope !874, !noalias !876
  %i.bks = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922, i64 16
  %i.bkt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.bku = load i64, ptr %i.bks, align 8, !alias.scope !880, !noalias !878
  store i64 %i.bku, ptr %i.bkt, align 8, !alias.scope !878, !noalias !880
  %i.bkv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922, i64 24
  %i.bkw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.bkx = load i64, ptr %i.bkv, align 8, !alias.scope !884, !noalias !882
  store i64 %i.bkx, ptr %i.bkw, align 8, !alias.scope !882, !noalias !884
  %i.bky = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922, i64 32
  %i.bkz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.bla = load i64, ptr %i.bky, align 8, !alias.scope !888, !noalias !886
  store i64 %i.bla, ptr %i.bkz, align 8, !alias.scope !886, !noalias !888
  %i.blb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922, i64 40
  %i.blc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.bld = load i64, ptr %i.blb, align 8, !alias.scope !892, !noalias !890
  store i64 %i.bld, ptr %i.blc, align 8, !alias.scope !890, !noalias !892
  %i.ble = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922, i64 48
  %i.blf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.blg = load i64, ptr %i.ble, align 8, !alias.scope !896, !noalias !894
  store i64 %i.blg, ptr %i.blf, align 8, !alias.scope !894, !noalias !896
  %i.blh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922, i64 56 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.blj = load i64, ptr %i.blh, align 8, !alias.scope !900, !noalias !898
  store i64 %i.blj, ptr %i.bli, align 8, !alias.scope !898, !noalias !900
  %i.blk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i922, i64 64
  %i.bll = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i921, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i923.7 = icmp eq ptr %i.blh, %.0.lcssa.i.i.i.i.i.i.i910.pn
  br i1 %.not.i.i.i.i.i.i.i923.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927, label %.lr.ph.i.i.i.i.i.i.i920, !llvm.loop !902

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927: ; preds = %.lr.ph.i.i.i.i.i.i.i920.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i920, %middle.block3003, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i916
  %.0.lcssa.i.i.i.i.i.i.i925 = phi ptr [ %i.bjt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i916 ], [ %i.bkb, %middle.block3003 ], [ %.lcssa3709.unr, %.lr.ph.i.i.i.i.i.i.i920.prol.loopexit ], [ %i.bll, %.lr.ph.i.i.i.i.i.i.i920 ]
  %i.blm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i925, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.14, i64 noundef %i.bjl) #28
  %i.bln = getelementptr inbounds nuw [8 x i8], ptr %i.bjt, i64 %i.bjr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit928

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit928: ; preds = %bb.eu, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927
  %.sroa.289.15 = phi ptr [ %i.bln, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927 ], [ %.sroa.289.14, %bb.eu ] ; 5 uses
  %.sroa.100.15 = phi ptr [ %i.blm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927 ], [ %i.bji, %bb.eu ] ; 3 uses
  %.sroa.01486.15 = phi ptr [ %i.bjt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i927 ], [ %.sroa.01486.14, %bb.eu ] ; 7 uses
  %i.blo = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.69, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.blp = icmp eq ptr %i.blo, null
  br i1 %i.blp, label %bb.ex, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit929, !prof !5

bb.ex:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit928
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit929

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit929: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit928, %bb.ex
  %i.blq = ptrtoint ptr %i.blo to i64             ; 2 uses
  %.not.i.i.i930 = icmp eq ptr %.sroa.100.15, %.sroa.289.15
  br i1 %.not.i.i.i930, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit929
  store i64 %i.blq, ptr %.sroa.100.15, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit943

bb.ez:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit929
  %i.blr = ptrtoint ptr %.sroa.289.15 to i64      ; 2 uses
  %i.bls = ptrtoint ptr %.sroa.01486.15 to i64    ; 3 uses
  %i.blt = sub i64 %i.blr, %i.bls                 ; 4 uses
  %i.blu = icmp eq i64 %i.blt, 9223372036854775800
  br i1 %i.blu, label %bb.fa, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i931

bb.fa:                                            ; preds = %bb.ez
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i931: ; preds = %bb.ez
  %i.blv = ashr exact i64 %i.blt, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i932 = tail call i64 @llvm.umax.i64(i64 %i.blv, i64 1)
  %i.blw = add nsw i64 %.sroa.speculated.i.i.i.i.i932, %i.blv ; 2 uses
  %i.blx = icmp ult i64 %i.blw, %i.blv
  %i.bly = tail call i64 @llvm.umin.i64(i64 %i.blw, i64 1152921504606846975)
  %i.blz = select i1 %i.blx, i64 1152921504606846975, i64 %i.bly ; 3 uses
  %.not.i.i.i.i.i933 = icmp ne i64 %i.blz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i933)
  %i.bma = shl nuw nsw i64 %i.blz, 3
  %i.bmb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bma) #27 ; 8 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 %i.blt
  store i64 %i.blq, ptr %i.bmc, align 8
  %.not10.i.i.i.i.i.i.i934 = icmp eq ptr %.sroa.01486.15, %.sroa.289.15
  br i1 %.not10.i.i.i.i.i.i.i934, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i942, label %.lr.ph.i.i.i.i.i.i.i935.preheader

.lr.ph.i.i.i.i.i.i.i935.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i931
  %i.bmd = ptrtoaddr ptr %i.bmb to i64
  %36 = sub i64 %i.blr, %i.bls
  %37 = add i64 %36, -8                           ; 2 uses
  %i.bme = lshr i64 %37, 3
  %i.bmf = add nuw nsw i64 %i.bme, 1              ; 2 uses
  %min.iters.check3010 = icmp ult i64 %37, 56
  %i.bmg = sub i64 %i.bmd, %i.bls
  %diff.check3008 = icmp ult i64 %i.bmg, 32
  %or.cond3616 = or i1 %min.iters.check3010, %diff.check3008
  br i1 %or.cond3616, label %.lr.ph.i.i.i.i.i.i.i935.preheader3706, label %vector.ph3011

vector.ph3011:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i935.preheader
  %n.vec3013 = and i64 %i.bmf, 4611686018427387900 ; 3 uses
  %i.bmh = shl i64 %n.vec3013, 3                  ; 2 uses
  %i.bmi = getelementptr i8, ptr %i.bmb, i64 %i.bmh ; 2 uses
  %i.bmj = getelementptr i8, ptr %.sroa.01486.15, i64 %i.bmh
  br label %vector.body3014

vector.body3014:                                  ; preds = %vector.body3014, %vector.ph3011
  %index3015 = phi i64 [ 0, %vector.ph3011 ], [ %index.next3020, %vector.body3014 ] ; 2 uses
  %i.bmk = shl i64 %index3015, 3                  ; 2 uses
  %next.gep3016 = getelementptr i8, ptr %i.bmb, i64 %i.bmk ; 2 uses
  %next.gep3017 = getelementptr i8, ptr %.sroa.01486.15, i64 %i.bmk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.bml = getelementptr i8, ptr %next.gep3017, i64 16
  %wide.load3018 = load <2 x i64>, ptr %next.gep3017, align 8, !alias.scope !906, !noalias !903
  %wide.load3019 = load <2 x i64>, ptr %i.bml, align 8, !alias.scope !906, !noalias !903
  %i.bmm = getelementptr i8, ptr %next.gep3016, i64 16
  store <2 x i64> %wide.load3018, ptr %next.gep3016, align 8, !alias.scope !903, !noalias !906
  store <2 x i64> %wide.load3019, ptr %i.bmm, align 8, !alias.scope !903, !noalias !906
  %index.next3020 = add nuw i64 %index3015, 4     ; 2 uses
  %i.bmn = icmp eq i64 %index.next3020, %n.vec3013
  br i1 %i.bmn, label %middle.block3021, label %vector.body3014, !llvm.loop !908

middle.block3021:                                 ; preds = %vector.body3014
  %cmp.n3022 = icmp eq i64 %i.bmf, %n.vec3013
  br i1 %cmp.n3022, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i942, label %.lr.ph.i.i.i.i.i.i.i935.preheader3706

.lr.ph.i.i.i.i.i.i.i935.preheader3706:            ; preds = %.lr.ph.i.i.i.i.i.i.i935.preheader, %middle.block3021
  %.012.i.i.i.i.i.i.i936.ph = phi ptr [ %i.bmb, %.lr.ph.i.i.i.i.i.i.i935.preheader ], [ %i.bmi, %middle.block3021 ]
  %.0911.i.i.i.i.i.i.i937.ph = phi ptr [ %.sroa.01486.15, %.lr.ph.i.i.i.i.i.i.i935.preheader ], [ %i.bmj, %middle.block3021 ]
  br label %.lr.ph.i.i.i.i.i.i.i935

.lr.ph.i.i.i.i.i.i.i935:                          ; preds = %.lr.ph.i.i.i.i.i.i.i935.preheader3706, %.lr.ph.i.i.i.i.i.i.i935
  %.012.i.i.i.i.i.i.i936 = phi ptr [ %i.bmq, %.lr.ph.i.i.i.i.i.i.i935 ], [ %.012.i.i.i.i.i.i.i936.ph, %.lr.ph.i.i.i.i.i.i.i935.preheader3706 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i937 = phi ptr [ %i.bmp, %.lr.ph.i.i.i.i.i.i.i935 ], [ %.0911.i.i.i.i.i.i.i937.ph, %.lr.ph.i.i.i.i.i.i.i935.preheader3706 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.bmo = load i64, ptr %.0911.i.i.i.i.i.i.i937, align 8, !alias.scope !906, !noalias !903
  store i64 %i.bmo, ptr %.012.i.i.i.i.i.i.i936, align 8, !alias.scope !903, !noalias !906
  %i.bmp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i937, i64 8 ; 2 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i936, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i938 = icmp eq ptr %i.bmp, %.sroa.289.15
  br i1 %.not.i.i.i.i.i.i.i938, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i942, label %.lr.ph.i.i.i.i.i.i.i935, !llvm.loop !909

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i942: ; preds = %.lr.ph.i.i.i.i.i.i.i935, %middle.block3021, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i931
  %.0.lcssa.i.i.i.i.i.i.i940 = phi ptr [ %i.bmb, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i931 ], [ %i.bmi, %middle.block3021 ], [ %i.bmq, %.lr.ph.i.i.i.i.i.i.i935 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.15, i64 noundef %i.blt) #28
  %i.bmr = getelementptr inbounds nuw [8 x i8], ptr %i.bmb, i64 %i.blz
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit943

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit943: ; preds = %bb.ey, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i942
  %.sroa.289.16 = phi ptr [ %i.bmr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i942 ], [ %.sroa.289.15, %bb.ey ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i940.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i940, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i942 ], [ %.sroa.100.15, %bb.ey ] ; 4 uses
  %.sroa.01486.16 = phi ptr [ %i.bmb, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i942 ], [ %.sroa.01486.15, %bb.ey ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i940.pn3027 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i940.pn to i64 ; 2 uses
  %.sroa.100.16 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i940.pn, i64 8 ; 2 uses
  %i.bms = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.bmt = icmp eq ptr %i.bms, null
  br i1 %i.bmt, label %bb.fb, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit944, !prof !5

bb.fb:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit943
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit944

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit944: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit943, %bb.fb
  %i.bmu = ptrtoint ptr %i.bms to i64             ; 2 uses
  %.not.i.i.i945 = icmp eq ptr %.sroa.100.16, %.sroa.289.16
  br i1 %.not.i.i.i945, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit944
  store i64 %i.bmu, ptr %.sroa.100.16, align 8
  %i.bmv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i940.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit958

bb.fd:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit944
  %i.bmw = ptrtoint ptr %.sroa.289.16 to i64
  %i.bmx = ptrtoint ptr %.sroa.01486.16 to i64    ; 3 uses
  %i.bmy = sub i64 %i.bmw, %i.bmx                 ; 4 uses
  %i.bmz = icmp eq i64 %i.bmy, 9223372036854775800
  br i1 %i.bmz, label %bb.fe, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i946

bb.fe:                                            ; preds = %bb.fd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i946: ; preds = %bb.fd
  %i.bna = ashr exact i64 %i.bmy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i947 = tail call i64 @llvm.umax.i64(i64 %i.bna, i64 1)
  %i.bnb = add nsw i64 %.sroa.speculated.i.i.i.i.i947, %i.bna ; 2 uses
  %i.bnc = icmp ult i64 %i.bnb, %i.bna
  %i.bnd = tail call i64 @llvm.umin.i64(i64 %i.bnb, i64 1152921504606846975)
  %i.bne = select i1 %i.bnc, i64 1152921504606846975, i64 %i.bnd ; 3 uses
  %.not.i.i.i.i.i948 = icmp ne i64 %i.bne, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i948)
  %i.bnf = shl nuw nsw i64 %i.bne, 3
  %i.bng = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bnf) #27 ; 8 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 %i.bmy
  store i64 %i.bmu, ptr %i.bnh, align 8
  %.not10.i.i.i.i.i.i.i949 = icmp eq ptr %.sroa.01486.16, %.sroa.289.16
  br i1 %.not10.i.i.i.i.i.i.i949, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957, label %.lr.ph.i.i.i.i.i.i.i950.preheader

.lr.ph.i.i.i.i.i.i.i950.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i946
  %i.bni = ptrtoaddr ptr %i.bng to i64
  %i.bnj = sub i64 %.0.lcssa.i.i.i.i.i.i.i940.pn3027, %i.bmx ; 2 uses
  %i.bnk = lshr i64 %i.bnj, 3
  %i.bnl = add nuw nsw i64 %i.bnk, 1              ; 2 uses
  %min.iters.check3029 = icmp ult i64 %i.bnj, 56
  %i.bnm = sub i64 %i.bni, %i.bmx
  %diff.check3026 = icmp ult i64 %i.bnm, 32
  %or.cond3617 = or i1 %min.iters.check3029, %diff.check3026
  br i1 %or.cond3617, label %.lr.ph.i.i.i.i.i.i.i950.preheader3704, label %vector.ph3030

vector.ph3030:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i950.preheader
  %n.vec3032 = and i64 %i.bnl, 4611686018427387900 ; 3 uses
  %i.bnn = shl i64 %n.vec3032, 3                  ; 2 uses
  %i.bno = getelementptr i8, ptr %i.bng, i64 %i.bnn ; 2 uses
  %i.bnp = getelementptr i8, ptr %.sroa.01486.16, i64 %i.bnn
  br label %vector.body3033

vector.body3033:                                  ; preds = %vector.body3033, %vector.ph3030
  %index3034 = phi i64 [ 0, %vector.ph3030 ], [ %index.next3039, %vector.body3033 ] ; 2 uses
  %i.bnq = shl i64 %index3034, 3                  ; 2 uses
  %next.gep3035 = getelementptr i8, ptr %i.bng, i64 %i.bnq ; 2 uses
  %next.gep3036 = getelementptr i8, ptr %.sroa.01486.16, i64 %i.bnq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.bnr = getelementptr i8, ptr %next.gep3036, i64 16
  %wide.load3037 = load <2 x i64>, ptr %next.gep3036, align 8, !alias.scope !913, !noalias !910
  %wide.load3038 = load <2 x i64>, ptr %i.bnr, align 8, !alias.scope !913, !noalias !910
  %i.bns = getelementptr i8, ptr %next.gep3035, i64 16
  store <2 x i64> %wide.load3037, ptr %next.gep3035, align 8, !alias.scope !910, !noalias !913
  store <2 x i64> %wide.load3038, ptr %i.bns, align 8, !alias.scope !910, !noalias !913
  %index.next3039 = add nuw i64 %index3034, 4     ; 2 uses
  %i.bnt = icmp eq i64 %index.next3039, %n.vec3032
  br i1 %i.bnt, label %middle.block3040, label %vector.body3033, !llvm.loop !915

middle.block3040:                                 ; preds = %vector.body3033
  %cmp.n3041 = icmp eq i64 %i.bnl, %n.vec3032
  br i1 %cmp.n3041, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957, label %.lr.ph.i.i.i.i.i.i.i950.preheader3704

.lr.ph.i.i.i.i.i.i.i950.preheader3704:            ; preds = %.lr.ph.i.i.i.i.i.i.i950.preheader, %middle.block3040
  %.012.i.i.i.i.i.i.i951.ph = phi ptr [ %i.bng, %.lr.ph.i.i.i.i.i.i.i950.preheader ], [ %i.bno, %middle.block3040 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i952.ph = phi ptr [ %.sroa.01486.16, %.lr.ph.i.i.i.i.i.i.i950.preheader ], [ %i.bnp, %middle.block3040 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i952.ph3845 = ptrtoint ptr %.0911.i.i.i.i.i.i.i952.ph to i64
  %i.bnu = sub i64 %.0.lcssa.i.i.i.i.i.i.i940.pn3027, %.0911.i.i.i.i.i.i.i952.ph3845 ; 2 uses
  %i.bnv = lshr i64 %i.bnu, 3
  %i.bnw = add nuw nsw i64 %i.bnv, 1
  %xtraiter3846 = and i64 %i.bnw, 7               ; 2 uses
  %lcmp.mod3847.not = icmp eq i64 %xtraiter3846, 0
  br i1 %lcmp.mod3847.not, label %.lr.ph.i.i.i.i.i.i.i950.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i950.prol

.lr.ph.i.i.i.i.i.i.i950.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i950.preheader3704, %.lr.ph.i.i.i.i.i.i.i950.prol
  %.012.i.i.i.i.i.i.i951.prol = phi ptr [ %i.bnz, %.lr.ph.i.i.i.i.i.i.i950.prol ], [ %.012.i.i.i.i.i.i.i951.ph, %.lr.ph.i.i.i.i.i.i.i950.preheader3704 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i952.prol = phi ptr [ %i.bny, %.lr.ph.i.i.i.i.i.i.i950.prol ], [ %.0911.i.i.i.i.i.i.i952.ph, %.lr.ph.i.i.i.i.i.i.i950.preheader3704 ] ; 2 uses
  %prol.iter3848 = phi i64 [ %prol.iter3848.next, %.lr.ph.i.i.i.i.i.i.i950.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i950.preheader3704 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.bnx = load i64, ptr %.0911.i.i.i.i.i.i.i952.prol, align 8, !alias.scope !913, !noalias !910
  store i64 %i.bnx, ptr %.012.i.i.i.i.i.i.i951.prol, align 8, !alias.scope !910, !noalias !913
  %i.bny = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952.prol, i64 8 ; 2 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951.prol, i64 8 ; 3 uses
  %prol.iter3848.next = add i64 %prol.iter3848, 1 ; 2 uses
  %prol.iter3848.cmp.not = icmp eq i64 %prol.iter3848.next, %xtraiter3846
  br i1 %prol.iter3848.cmp.not, label %.lr.ph.i.i.i.i.i.i.i950.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i950.prol, !llvm.loop !916

.lr.ph.i.i.i.i.i.i.i950.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i950.prol, %.lr.ph.i.i.i.i.i.i.i950.preheader3704
  %.lcssa3705.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i950.preheader3704 ], [ %i.bnz, %.lr.ph.i.i.i.i.i.i.i950.prol ]
  %.012.i.i.i.i.i.i.i951.unr = phi ptr [ %.012.i.i.i.i.i.i.i951.ph, %.lr.ph.i.i.i.i.i.i.i950.preheader3704 ], [ %i.bnz, %.lr.ph.i.i.i.i.i.i.i950.prol ]
  %.0911.i.i.i.i.i.i.i952.unr = phi ptr [ %.0911.i.i.i.i.i.i.i952.ph, %.lr.ph.i.i.i.i.i.i.i950.preheader3704 ], [ %i.bny, %.lr.ph.i.i.i.i.i.i.i950.prol ]
  %i.boa = icmp ult i64 %i.bnu, 56
  br i1 %i.boa, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957, label %.lr.ph.i.i.i.i.i.i.i950

.lr.ph.i.i.i.i.i.i.i950:                          ; preds = %.lr.ph.i.i.i.i.i.i.i950.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i950
  %.012.i.i.i.i.i.i.i951 = phi ptr [ %i.boy, %.lr.ph.i.i.i.i.i.i.i950 ], [ %.012.i.i.i.i.i.i.i951.unr, %.lr.ph.i.i.i.i.i.i.i950.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i952 = phi ptr [ %i.box, %.lr.ph.i.i.i.i.i.i.i950 ], [ %.0911.i.i.i.i.i.i.i952.unr, %.lr.ph.i.i.i.i.i.i.i950.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.bob = load i64, ptr %.0911.i.i.i.i.i.i.i952, align 8, !alias.scope !913, !noalias !910
  store i64 %i.bob, ptr %.012.i.i.i.i.i.i.i951, align 8, !alias.scope !910, !noalias !913
  %i.boc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952, i64 8
  %i.bod = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.boe = load i64, ptr %i.boc, align 8, !alias.scope !919, !noalias !917
  store i64 %i.boe, ptr %i.bod, align 8, !alias.scope !917, !noalias !919
  %i.bof = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952, i64 16
  %i.bog = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.boh = load i64, ptr %i.bof, align 8, !alias.scope !923, !noalias !921
  store i64 %i.boh, ptr %i.bog, align 8, !alias.scope !921, !noalias !923
  %i.boi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952, i64 24
  %i.boj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.bok = load i64, ptr %i.boi, align 8, !alias.scope !927, !noalias !925
  store i64 %i.bok, ptr %i.boj, align 8, !alias.scope !925, !noalias !927
  %i.bol = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952, i64 32
  %i.bom = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.bon = load i64, ptr %i.bol, align 8, !alias.scope !931, !noalias !929
  store i64 %i.bon, ptr %i.bom, align 8, !alias.scope !929, !noalias !931
  %i.boo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952, i64 40
  %i.bop = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.boq = load i64, ptr %i.boo, align 8, !alias.scope !935, !noalias !933
  store i64 %i.boq, ptr %i.bop, align 8, !alias.scope !933, !noalias !935
  %i.bor = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952, i64 48
  %i.bos = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.bot = load i64, ptr %i.bor, align 8, !alias.scope !939, !noalias !937
  store i64 %i.bot, ptr %i.bos, align 8, !alias.scope !937, !noalias !939
  %i.bou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952, i64 56 ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  %i.bow = load i64, ptr %i.bou, align 8, !alias.scope !943, !noalias !941
  store i64 %i.bow, ptr %i.bov, align 8, !alias.scope !941, !noalias !943
  %i.box = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i952, i64 64
  %i.boy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i951, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i953.7 = icmp eq ptr %i.bou, %.0.lcssa.i.i.i.i.i.i.i940.pn
  br i1 %.not.i.i.i.i.i.i.i953.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957, label %.lr.ph.i.i.i.i.i.i.i950, !llvm.loop !945

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957: ; preds = %.lr.ph.i.i.i.i.i.i.i950.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i950, %middle.block3040, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i946
  %.0.lcssa.i.i.i.i.i.i.i955 = phi ptr [ %i.bng, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i946 ], [ %i.bno, %middle.block3040 ], [ %.lcssa3705.unr, %.lr.ph.i.i.i.i.i.i.i950.prol.loopexit ], [ %i.boy, %.lr.ph.i.i.i.i.i.i.i950 ]
  %i.boz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i955, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.16, i64 noundef %i.bmy) #28
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %i.bng, i64 %i.bne
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit958

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit958: ; preds = %bb.fc, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957
  %.sroa.289.17 = phi ptr [ %i.bpa, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957 ], [ %.sroa.289.16, %bb.fc ] ; 5 uses
  %.sroa.100.17 = phi ptr [ %i.boz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957 ], [ %i.bmv, %bb.fc ] ; 3 uses
  %.sroa.01486.17 = phi ptr [ %i.bng, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i957 ], [ %.sroa.01486.16, %bb.fc ] ; 7 uses
  %i.bpb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.71, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.bpc = icmp eq ptr %i.bpb, null
  br i1 %i.bpc, label %bb.ff, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit959, !prof !5

bb.ff:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit958
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit959

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit959: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit958, %bb.ff
  %i.bpd = ptrtoint ptr %i.bpb to i64             ; 2 uses
  %.not.i.i.i960 = icmp eq ptr %.sroa.100.17, %.sroa.289.17
  br i1 %.not.i.i.i960, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit959
  store i64 %i.bpd, ptr %.sroa.100.17, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit973

bb.fh:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit959
  %i.bpe = ptrtoint ptr %.sroa.289.17 to i64      ; 2 uses
  %i.bpf = ptrtoint ptr %.sroa.01486.17 to i64    ; 3 uses
  %i.bpg = sub i64 %i.bpe, %i.bpf                 ; 4 uses
  %i.bph = icmp eq i64 %i.bpg, 9223372036854775800
  br i1 %i.bph, label %bb.fi, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i961

bb.fi:                                            ; preds = %bb.fh
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i961: ; preds = %bb.fh
  %i.bpi = ashr exact i64 %i.bpg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i962 = tail call i64 @llvm.umax.i64(i64 %i.bpi, i64 1)
  %i.bpj = add nsw i64 %.sroa.speculated.i.i.i.i.i962, %i.bpi ; 2 uses
  %i.bpk = icmp ult i64 %i.bpj, %i.bpi
  %i.bpl = tail call i64 @llvm.umin.i64(i64 %i.bpj, i64 1152921504606846975)
  %i.bpm = select i1 %i.bpk, i64 1152921504606846975, i64 %i.bpl ; 3 uses
  %.not.i.i.i.i.i963 = icmp ne i64 %i.bpm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i963)
  %i.bpn = shl nuw nsw i64 %i.bpm, 3
  %i.bpo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bpn) #27 ; 8 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 %i.bpg
  store i64 %i.bpd, ptr %i.bpp, align 8
  %.not10.i.i.i.i.i.i.i964 = icmp eq ptr %.sroa.01486.17, %.sroa.289.17
  br i1 %.not10.i.i.i.i.i.i.i964, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i972, label %.lr.ph.i.i.i.i.i.i.i965.preheader

.lr.ph.i.i.i.i.i.i.i965.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i961
  %i.bpq = ptrtoaddr ptr %i.bpo to i64
  %38 = sub i64 %i.bpe, %i.bpf
  %39 = add i64 %38, -8                           ; 2 uses
  %i.bpr = lshr i64 %39, 3
  %i.bps = add nuw nsw i64 %i.bpr, 1              ; 2 uses
  %min.iters.check3047 = icmp ult i64 %39, 56
  %i.bpt = sub i64 %i.bpq, %i.bpf
  %diff.check3045 = icmp ult i64 %i.bpt, 32
  %or.cond3618 = or i1 %min.iters.check3047, %diff.check3045
  br i1 %or.cond3618, label %.lr.ph.i.i.i.i.i.i.i965.preheader3702, label %vector.ph3048

vector.ph3048:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i965.preheader
  %n.vec3050 = and i64 %i.bps, 4611686018427387900 ; 3 uses
  %i.bpu = shl i64 %n.vec3050, 3                  ; 2 uses
  %i.bpv = getelementptr i8, ptr %i.bpo, i64 %i.bpu ; 2 uses
  %i.bpw = getelementptr i8, ptr %.sroa.01486.17, i64 %i.bpu
  br label %vector.body3051

vector.body3051:                                  ; preds = %vector.body3051, %vector.ph3048
  %index3052 = phi i64 [ 0, %vector.ph3048 ], [ %index.next3057, %vector.body3051 ] ; 2 uses
  %i.bpx = shl i64 %index3052, 3                  ; 2 uses
  %next.gep3053 = getelementptr i8, ptr %i.bpo, i64 %i.bpx ; 2 uses
  %next.gep3054 = getelementptr i8, ptr %.sroa.01486.17, i64 %i.bpx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.bpy = getelementptr i8, ptr %next.gep3054, i64 16
  %wide.load3055 = load <2 x i64>, ptr %next.gep3054, align 8, !alias.scope !949, !noalias !946
  %wide.load3056 = load <2 x i64>, ptr %i.bpy, align 8, !alias.scope !949, !noalias !946
  %i.bpz = getelementptr i8, ptr %next.gep3053, i64 16
  store <2 x i64> %wide.load3055, ptr %next.gep3053, align 8, !alias.scope !946, !noalias !949
  store <2 x i64> %wide.load3056, ptr %i.bpz, align 8, !alias.scope !946, !noalias !949
  %index.next3057 = add nuw i64 %index3052, 4     ; 2 uses
  %i.bqa = icmp eq i64 %index.next3057, %n.vec3050
  br i1 %i.bqa, label %middle.block3058, label %vector.body3051, !llvm.loop !951

middle.block3058:                                 ; preds = %vector.body3051
  %cmp.n3059 = icmp eq i64 %i.bps, %n.vec3050
  br i1 %cmp.n3059, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i972, label %.lr.ph.i.i.i.i.i.i.i965.preheader3702

.lr.ph.i.i.i.i.i.i.i965.preheader3702:            ; preds = %.lr.ph.i.i.i.i.i.i.i965.preheader, %middle.block3058
  %.012.i.i.i.i.i.i.i966.ph = phi ptr [ %i.bpo, %.lr.ph.i.i.i.i.i.i.i965.preheader ], [ %i.bpv, %middle.block3058 ]
  %.0911.i.i.i.i.i.i.i967.ph = phi ptr [ %.sroa.01486.17, %.lr.ph.i.i.i.i.i.i.i965.preheader ], [ %i.bpw, %middle.block3058 ]
  br label %.lr.ph.i.i.i.i.i.i.i965

.lr.ph.i.i.i.i.i.i.i965:                          ; preds = %.lr.ph.i.i.i.i.i.i.i965.preheader3702, %.lr.ph.i.i.i.i.i.i.i965
  %.012.i.i.i.i.i.i.i966 = phi ptr [ %i.bqd, %.lr.ph.i.i.i.i.i.i.i965 ], [ %.012.i.i.i.i.i.i.i966.ph, %.lr.ph.i.i.i.i.i.i.i965.preheader3702 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i967 = phi ptr [ %i.bqc, %.lr.ph.i.i.i.i.i.i.i965 ], [ %.0911.i.i.i.i.i.i.i967.ph, %.lr.ph.i.i.i.i.i.i.i965.preheader3702 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.bqb = load i64, ptr %.0911.i.i.i.i.i.i.i967, align 8, !alias.scope !949, !noalias !946
  store i64 %i.bqb, ptr %.012.i.i.i.i.i.i.i966, align 8, !alias.scope !946, !noalias !949
  %i.bqc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i967, i64 8 ; 2 uses
  %i.bqd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i966, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i968 = icmp eq ptr %i.bqc, %.sroa.289.17
  br i1 %.not.i.i.i.i.i.i.i968, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i972, label %.lr.ph.i.i.i.i.i.i.i965, !llvm.loop !952

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i972: ; preds = %.lr.ph.i.i.i.i.i.i.i965, %middle.block3058, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i961
  %.0.lcssa.i.i.i.i.i.i.i970 = phi ptr [ %i.bpo, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i961 ], [ %i.bpv, %middle.block3058 ], [ %i.bqd, %.lr.ph.i.i.i.i.i.i.i965 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.17, i64 noundef %i.bpg) #28
  %i.bqe = getelementptr inbounds nuw [8 x i8], ptr %i.bpo, i64 %i.bpm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit973

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit973: ; preds = %bb.fg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i972
  %.sroa.289.18 = phi ptr [ %i.bqe, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i972 ], [ %.sroa.289.17, %bb.fg ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i970.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i970, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i972 ], [ %.sroa.100.17, %bb.fg ] ; 4 uses
  %.sroa.01486.18 = phi ptr [ %i.bpo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i972 ], [ %.sroa.01486.17, %bb.fg ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i970.pn3064 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i970.pn to i64 ; 2 uses
  %.sroa.100.18 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i970.pn, i64 8 ; 2 uses
  %i.bqf = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.72, i32 noundef 1, i32 noundef 3) #25 ; 2 uses
  %i.bqg = icmp eq ptr %i.bqf, null
  br i1 %i.bqg, label %bb.fj, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit974, !prof !5

bb.fj:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit973
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit974

_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit974: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit973, %bb.fj
  %i.bqh = ptrtoint ptr %i.bqf to i64             ; 2 uses
  %.not.i.i.i975 = icmp eq ptr %.sroa.100.18, %.sroa.289.18
  br i1 %.not.i.i.i975, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit974
  store i64 %i.bqh, ptr %.sroa.100.18, align 8
  %i.bqi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i970.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit988

bb.fl:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit974
  %i.bqj = ptrtoint ptr %.sroa.289.18 to i64
  %i.bqk = ptrtoint ptr %.sroa.01486.18 to i64    ; 3 uses
  %i.bql = sub i64 %i.bqj, %i.bqk                 ; 4 uses
  %i.bqm = icmp eq i64 %i.bql, 9223372036854775800
  br i1 %i.bqm, label %bb.fm, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i976

bb.fm:                                            ; preds = %bb.fl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i976: ; preds = %bb.fl
  %i.bqn = ashr exact i64 %i.bql, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i977 = tail call i64 @llvm.umax.i64(i64 %i.bqn, i64 1)
  %i.bqo = add nsw i64 %.sroa.speculated.i.i.i.i.i977, %i.bqn ; 2 uses
  %i.bqp = icmp ult i64 %i.bqo, %i.bqn
  %i.bqq = tail call i64 @llvm.umin.i64(i64 %i.bqo, i64 1152921504606846975)
  %i.bqr = select i1 %i.bqp, i64 1152921504606846975, i64 %i.bqq ; 3 uses
  %.not.i.i.i.i.i978 = icmp ne i64 %i.bqr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i978)
  %i.bqs = shl nuw nsw i64 %i.bqr, 3
  %i.bqt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bqs) #27 ; 8 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.bql
  store i64 %i.bqh, ptr %i.bqu, align 8
  %.not10.i.i.i.i.i.i.i979 = icmp eq ptr %.sroa.01486.18, %.sroa.289.18
  br i1 %.not10.i.i.i.i.i.i.i979, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987, label %.lr.ph.i.i.i.i.i.i.i980.preheader

.lr.ph.i.i.i.i.i.i.i980.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i976
  %i.bqv = ptrtoaddr ptr %i.bqt to i64
  %i.bqw = sub i64 %.0.lcssa.i.i.i.i.i.i.i970.pn3064, %i.bqk ; 2 uses
  %i.bqx = lshr i64 %i.bqw, 3
  %i.bqy = add nuw nsw i64 %i.bqx, 1              ; 2 uses
  %min.iters.check3066 = icmp ult i64 %i.bqw, 56
  %i.bqz = sub i64 %i.bqv, %i.bqk
  %diff.check3063 = icmp ult i64 %i.bqz, 32
  %or.cond3619 = or i1 %min.iters.check3066, %diff.check3063
  br i1 %or.cond3619, label %.lr.ph.i.i.i.i.i.i.i980.preheader3700, label %vector.ph3067

vector.ph3067:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i980.preheader
  %n.vec3069 = and i64 %i.bqy, 4611686018427387900 ; 3 uses
  %i.bra = shl i64 %n.vec3069, 3                  ; 2 uses
  %i.brb = getelementptr i8, ptr %i.bqt, i64 %i.bra ; 2 uses
  %i.brc = getelementptr i8, ptr %.sroa.01486.18, i64 %i.bra
  br label %vector.body3070

vector.body3070:                                  ; preds = %vector.body3070, %vector.ph3067
  %index3071 = phi i64 [ 0, %vector.ph3067 ], [ %index.next3076, %vector.body3070 ] ; 2 uses
  %i.brd = shl i64 %index3071, 3                  ; 2 uses
  %next.gep3072 = getelementptr i8, ptr %i.bqt, i64 %i.brd ; 2 uses
  %next.gep3073 = getelementptr i8, ptr %.sroa.01486.18, i64 %i.brd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.bre = getelementptr i8, ptr %next.gep3073, i64 16
  %wide.load3074 = load <2 x i64>, ptr %next.gep3073, align 8, !alias.scope !956, !noalias !953
  %wide.load3075 = load <2 x i64>, ptr %i.bre, align 8, !alias.scope !956, !noalias !953
  %i.brf = getelementptr i8, ptr %next.gep3072, i64 16
  store <2 x i64> %wide.load3074, ptr %next.gep3072, align 8, !alias.scope !953, !noalias !956
  store <2 x i64> %wide.load3075, ptr %i.brf, align 8, !alias.scope !953, !noalias !956
  %index.next3076 = add nuw i64 %index3071, 4     ; 2 uses
  %i.brg = icmp eq i64 %index.next3076, %n.vec3069
  br i1 %i.brg, label %middle.block3077, label %vector.body3070, !llvm.loop !958

middle.block3077:                                 ; preds = %vector.body3070
  %cmp.n3078 = icmp eq i64 %i.bqy, %n.vec3069
  br i1 %cmp.n3078, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987, label %.lr.ph.i.i.i.i.i.i.i980.preheader3700

.lr.ph.i.i.i.i.i.i.i980.preheader3700:            ; preds = %.lr.ph.i.i.i.i.i.i.i980.preheader, %middle.block3077
  %.012.i.i.i.i.i.i.i981.ph = phi ptr [ %i.bqt, %.lr.ph.i.i.i.i.i.i.i980.preheader ], [ %i.brb, %middle.block3077 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i982.ph = phi ptr [ %.sroa.01486.18, %.lr.ph.i.i.i.i.i.i.i980.preheader ], [ %i.brc, %middle.block3077 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i982.ph3849 = ptrtoint ptr %.0911.i.i.i.i.i.i.i982.ph to i64
  %i.brh = sub i64 %.0.lcssa.i.i.i.i.i.i.i970.pn3064, %.0911.i.i.i.i.i.i.i982.ph3849 ; 2 uses
  %i.bri = lshr i64 %i.brh, 3
  %i.brj = add nuw nsw i64 %i.bri, 1
  %xtraiter3850 = and i64 %i.brj, 7               ; 2 uses
  %lcmp.mod3851.not = icmp eq i64 %xtraiter3850, 0
  br i1 %lcmp.mod3851.not, label %.lr.ph.i.i.i.i.i.i.i980.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i980.prol

.lr.ph.i.i.i.i.i.i.i980.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i980.preheader3700, %.lr.ph.i.i.i.i.i.i.i980.prol
  %.012.i.i.i.i.i.i.i981.prol = phi ptr [ %i.brm, %.lr.ph.i.i.i.i.i.i.i980.prol ], [ %.012.i.i.i.i.i.i.i981.ph, %.lr.ph.i.i.i.i.i.i.i980.preheader3700 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i982.prol = phi ptr [ %i.brl, %.lr.ph.i.i.i.i.i.i.i980.prol ], [ %.0911.i.i.i.i.i.i.i982.ph, %.lr.ph.i.i.i.i.i.i.i980.preheader3700 ] ; 2 uses
  %prol.iter3852 = phi i64 [ %prol.iter3852.next, %.lr.ph.i.i.i.i.i.i.i980.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i980.preheader3700 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.brk = load i64, ptr %.0911.i.i.i.i.i.i.i982.prol, align 8, !alias.scope !956, !noalias !953
  store i64 %i.brk, ptr %.012.i.i.i.i.i.i.i981.prol, align 8, !alias.scope !953, !noalias !956
  %i.brl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982.prol, i64 8 ; 2 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981.prol, i64 8 ; 3 uses
  %prol.iter3852.next = add i64 %prol.iter3852, 1 ; 2 uses
  %prol.iter3852.cmp.not = icmp eq i64 %prol.iter3852.next, %xtraiter3850
  br i1 %prol.iter3852.cmp.not, label %.lr.ph.i.i.i.i.i.i.i980.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i980.prol, !llvm.loop !959

.lr.ph.i.i.i.i.i.i.i980.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i980.prol, %.lr.ph.i.i.i.i.i.i.i980.preheader3700
  %.lcssa3701.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i980.preheader3700 ], [ %i.brm, %.lr.ph.i.i.i.i.i.i.i980.prol ]
  %.012.i.i.i.i.i.i.i981.unr = phi ptr [ %.012.i.i.i.i.i.i.i981.ph, %.lr.ph.i.i.i.i.i.i.i980.preheader3700 ], [ %i.brm, %.lr.ph.i.i.i.i.i.i.i980.prol ]
  %.0911.i.i.i.i.i.i.i982.unr = phi ptr [ %.0911.i.i.i.i.i.i.i982.ph, %.lr.ph.i.i.i.i.i.i.i980.preheader3700 ], [ %i.brl, %.lr.ph.i.i.i.i.i.i.i980.prol ]
  %i.brn = icmp ult i64 %i.brh, 56
  br i1 %i.brn, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987, label %.lr.ph.i.i.i.i.i.i.i980

.lr.ph.i.i.i.i.i.i.i980:                          ; preds = %.lr.ph.i.i.i.i.i.i.i980.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i980
  %.012.i.i.i.i.i.i.i981 = phi ptr [ %i.bsl, %.lr.ph.i.i.i.i.i.i.i980 ], [ %.012.i.i.i.i.i.i.i981.unr, %.lr.ph.i.i.i.i.i.i.i980.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i982 = phi ptr [ %i.bsk, %.lr.ph.i.i.i.i.i.i.i980 ], [ %.0911.i.i.i.i.i.i.i982.unr, %.lr.ph.i.i.i.i.i.i.i980.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.bro = load i64, ptr %.0911.i.i.i.i.i.i.i982, align 8, !alias.scope !956, !noalias !953
  store i64 %i.bro, ptr %.012.i.i.i.i.i.i.i981, align 8, !alias.scope !953, !noalias !956
  %i.brp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982, i64 8
  %i.brq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.brr = load i64, ptr %i.brp, align 8, !alias.scope !962, !noalias !960
  store i64 %i.brr, ptr %i.brq, align 8, !alias.scope !960, !noalias !962
  %i.brs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982, i64 16
  %i.brt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.bru = load i64, ptr %i.brs, align 8, !alias.scope !966, !noalias !964
  store i64 %i.bru, ptr %i.brt, align 8, !alias.scope !964, !noalias !966
  %i.brv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982, i64 24
  %i.brw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.brx = load i64, ptr %i.brv, align 8, !alias.scope !970, !noalias !968
  store i64 %i.brx, ptr %i.brw, align 8, !alias.scope !968, !noalias !970
  %i.bry = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982, i64 32
  %i.brz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.bsa = load i64, ptr %i.bry, align 8, !alias.scope !974, !noalias !972
  store i64 %i.bsa, ptr %i.brz, align 8, !alias.scope !972, !noalias !974
  %i.bsb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982, i64 40
  %i.bsc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.bsd = load i64, ptr %i.bsb, align 8, !alias.scope !978, !noalias !976
  store i64 %i.bsd, ptr %i.bsc, align 8, !alias.scope !976, !noalias !978
  %i.bse = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982, i64 48
  %i.bsf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.bsg = load i64, ptr %i.bse, align 8, !alias.scope !982, !noalias !980
  store i64 %i.bsg, ptr %i.bsf, align 8, !alias.scope !980, !noalias !982
  %i.bsh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982, i64 56 ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.bsj = load i64, ptr %i.bsh, align 8, !alias.scope !986, !noalias !984
  store i64 %i.bsj, ptr %i.bsi, align 8, !alias.scope !984, !noalias !986
  %i.bsk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i982, i64 64
  %i.bsl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i981, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i983.7 = icmp eq ptr %i.bsh, %.0.lcssa.i.i.i.i.i.i.i970.pn
  br i1 %.not.i.i.i.i.i.i.i983.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987, label %.lr.ph.i.i.i.i.i.i.i980, !llvm.loop !988

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987: ; preds = %.lr.ph.i.i.i.i.i.i.i980.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i980, %middle.block3077, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i976
  %.0.lcssa.i.i.i.i.i.i.i985 = phi ptr [ %i.bqt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i976 ], [ %i.brb, %middle.block3077 ], [ %.lcssa3701.unr, %.lr.ph.i.i.i.i.i.i.i980.prol.loopexit ], [ %i.bsl, %.lr.ph.i.i.i.i.i.i.i980 ]
  %i.bsm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i985, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.18, i64 noundef %i.bql) #28
  %i.bsn = getelementptr inbounds nuw [8 x i8], ptr %i.bqt, i64 %i.bqr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit988

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit988: ; preds = %bb.fk, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987
  %.sroa.289.19 = phi ptr [ %i.bsn, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987 ], [ %.sroa.289.18, %bb.fk ] ; 5 uses
  %.sroa.100.19 = phi ptr [ %i.bsm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987 ], [ %i.bqi, %bb.fk ] ; 3 uses
  %.sroa.01486.19 = phi ptr [ %i.bqt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i987 ], [ %.sroa.01486.18, %bb.fk ] ; 7 uses
  %i.bso = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.73, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.bsp = icmp eq ptr %i.bso, null
  br i1 %i.bsp, label %bb.fn, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit989, !prof !5

bb.fn:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit988
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit989

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit989: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit988, %bb.fn
  %i.bsq = ptrtoint ptr %i.bso to i64             ; 2 uses
  %.not.i.i.i990 = icmp eq ptr %.sroa.100.19, %.sroa.289.19
  br i1 %.not.i.i.i990, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit989
  store i64 %i.bsq, ptr %.sroa.100.19, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1003

bb.fp:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit989
  %i.bsr = ptrtoint ptr %.sroa.289.19 to i64      ; 2 uses
  %i.bss = ptrtoint ptr %.sroa.01486.19 to i64    ; 3 uses
  %i.bst = sub i64 %i.bsr, %i.bss                 ; 4 uses
  %i.bsu = icmp eq i64 %i.bst, 9223372036854775800
  br i1 %i.bsu, label %bb.fq, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i991

bb.fq:                                            ; preds = %bb.fp
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i991: ; preds = %bb.fp
  %i.bsv = ashr exact i64 %i.bst, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i992 = tail call i64 @llvm.umax.i64(i64 %i.bsv, i64 1)
  %i.bsw = add nsw i64 %.sroa.speculated.i.i.i.i.i992, %i.bsv ; 2 uses
  %i.bsx = icmp ult i64 %i.bsw, %i.bsv
  %i.bsy = tail call i64 @llvm.umin.i64(i64 %i.bsw, i64 1152921504606846975)
  %i.bsz = select i1 %i.bsx, i64 1152921504606846975, i64 %i.bsy ; 3 uses
  %.not.i.i.i.i.i993 = icmp ne i64 %i.bsz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i993)
  %i.bta = shl nuw nsw i64 %i.bsz, 3
  %i.btb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bta) #27 ; 8 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 %i.bst
  store i64 %i.bsq, ptr %i.btc, align 8
  %.not10.i.i.i.i.i.i.i994 = icmp eq ptr %.sroa.01486.19, %.sroa.289.19
  br i1 %.not10.i.i.i.i.i.i.i994, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1002, label %.lr.ph.i.i.i.i.i.i.i995.preheader

.lr.ph.i.i.i.i.i.i.i995.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i991
  %i.btd = ptrtoaddr ptr %i.btb to i64
  %40 = sub i64 %i.bsr, %i.bss
  %41 = add i64 %40, -8                           ; 2 uses
  %i.bte = lshr i64 %41, 3
  %i.btf = add nuw nsw i64 %i.bte, 1              ; 2 uses
  %min.iters.check3084 = icmp ult i64 %41, 56
  %i.btg = sub i64 %i.btd, %i.bss
  %diff.check3082 = icmp ult i64 %i.btg, 32
  %or.cond3620 = or i1 %min.iters.check3084, %diff.check3082
  br i1 %or.cond3620, label %.lr.ph.i.i.i.i.i.i.i995.preheader3698, label %vector.ph3085

vector.ph3085:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i995.preheader
  %n.vec3087 = and i64 %i.btf, 4611686018427387900 ; 3 uses
  %i.bth = shl i64 %n.vec3087, 3                  ; 2 uses
  %i.bti = getelementptr i8, ptr %i.btb, i64 %i.bth ; 2 uses
  %i.btj = getelementptr i8, ptr %.sroa.01486.19, i64 %i.bth
  br label %vector.body3088

vector.body3088:                                  ; preds = %vector.body3088, %vector.ph3085
  %index3089 = phi i64 [ 0, %vector.ph3085 ], [ %index.next3094, %vector.body3088 ] ; 2 uses
  %i.btk = shl i64 %index3089, 3                  ; 2 uses
  %next.gep3090 = getelementptr i8, ptr %i.btb, i64 %i.btk ; 2 uses
  %next.gep3091 = getelementptr i8, ptr %.sroa.01486.19, i64 %i.btk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.btl = getelementptr i8, ptr %next.gep3091, i64 16
  %wide.load3092 = load <2 x i64>, ptr %next.gep3091, align 8, !alias.scope !992, !noalias !989
  %wide.load3093 = load <2 x i64>, ptr %i.btl, align 8, !alias.scope !992, !noalias !989
  %i.btm = getelementptr i8, ptr %next.gep3090, i64 16
  store <2 x i64> %wide.load3092, ptr %next.gep3090, align 8, !alias.scope !989, !noalias !992
  store <2 x i64> %wide.load3093, ptr %i.btm, align 8, !alias.scope !989, !noalias !992
  %index.next3094 = add nuw i64 %index3089, 4     ; 2 uses
  %i.btn = icmp eq i64 %index.next3094, %n.vec3087
  br i1 %i.btn, label %middle.block3095, label %vector.body3088, !llvm.loop !994

middle.block3095:                                 ; preds = %vector.body3088
  %cmp.n3096 = icmp eq i64 %i.btf, %n.vec3087
  br i1 %cmp.n3096, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1002, label %.lr.ph.i.i.i.i.i.i.i995.preheader3698

.lr.ph.i.i.i.i.i.i.i995.preheader3698:            ; preds = %.lr.ph.i.i.i.i.i.i.i995.preheader, %middle.block3095
  %.012.i.i.i.i.i.i.i996.ph = phi ptr [ %i.btb, %.lr.ph.i.i.i.i.i.i.i995.preheader ], [ %i.bti, %middle.block3095 ]
  %.0911.i.i.i.i.i.i.i997.ph = phi ptr [ %.sroa.01486.19, %.lr.ph.i.i.i.i.i.i.i995.preheader ], [ %i.btj, %middle.block3095 ]
  br label %.lr.ph.i.i.i.i.i.i.i995

.lr.ph.i.i.i.i.i.i.i995:                          ; preds = %.lr.ph.i.i.i.i.i.i.i995.preheader3698, %.lr.ph.i.i.i.i.i.i.i995
  %.012.i.i.i.i.i.i.i996 = phi ptr [ %i.btq, %.lr.ph.i.i.i.i.i.i.i995 ], [ %.012.i.i.i.i.i.i.i996.ph, %.lr.ph.i.i.i.i.i.i.i995.preheader3698 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i997 = phi ptr [ %i.btp, %.lr.ph.i.i.i.i.i.i.i995 ], [ %.0911.i.i.i.i.i.i.i997.ph, %.lr.ph.i.i.i.i.i.i.i995.preheader3698 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.bto = load i64, ptr %.0911.i.i.i.i.i.i.i997, align 8, !alias.scope !992, !noalias !989
  store i64 %i.bto, ptr %.012.i.i.i.i.i.i.i996, align 8, !alias.scope !989, !noalias !992
  %i.btp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i997, i64 8 ; 2 uses
  %i.btq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i996, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i998 = icmp eq ptr %i.btp, %.sroa.289.19
  br i1 %.not.i.i.i.i.i.i.i998, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1002, label %.lr.ph.i.i.i.i.i.i.i995, !llvm.loop !995

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1002: ; preds = %.lr.ph.i.i.i.i.i.i.i995, %middle.block3095, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i991
  %.0.lcssa.i.i.i.i.i.i.i1000 = phi ptr [ %i.btb, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i991 ], [ %i.bti, %middle.block3095 ], [ %i.btq, %.lr.ph.i.i.i.i.i.i.i995 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.19, i64 noundef %i.bst) #28
  %i.btr = getelementptr inbounds nuw [8 x i8], ptr %i.btb, i64 %i.bsz
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1003

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1003: ; preds = %bb.fo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1002
  %.sroa.289.20 = phi ptr [ %i.btr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1002 ], [ %.sroa.289.19, %bb.fo ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1000.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1000, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1002 ], [ %.sroa.100.19, %bb.fo ] ; 4 uses
  %.sroa.01486.20 = phi ptr [ %i.btb, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1002 ], [ %.sroa.01486.19, %bb.fo ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1000.pn3101 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1000.pn to i64 ; 2 uses
  %.sroa.100.20 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1000.pn, i64 8 ; 2 uses
  %i.bts = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.74, i32 noundef 1, i32 noundef 10) #25 ; 2 uses
  %i.btt = icmp eq ptr %i.bts, null
  br i1 %i.btt, label %bb.fr, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1004, !prof !5

bb.fr:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1003
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1004

_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1004: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1003, %bb.fr
  %i.btu = ptrtoint ptr %i.bts to i64             ; 2 uses
  %.not.i.i.i1005 = icmp eq ptr %.sroa.100.20, %.sroa.289.20
  br i1 %.not.i.i.i1005, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1004
  store i64 %i.btu, ptr %.sroa.100.20, align 8
  %i.btv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1000.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1018

bb.ft:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1004
  %i.btw = ptrtoint ptr %.sroa.289.20 to i64
  %i.btx = ptrtoint ptr %.sroa.01486.20 to i64    ; 3 uses
  %i.bty = sub i64 %i.btw, %i.btx                 ; 4 uses
  %i.btz = icmp eq i64 %i.bty, 9223372036854775800
  br i1 %i.btz, label %bb.fu, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1006

bb.fu:                                            ; preds = %bb.ft
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1006: ; preds = %bb.ft
  %i.bua = ashr exact i64 %i.bty, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1007 = tail call i64 @llvm.umax.i64(i64 %i.bua, i64 1)
  %i.bub = add nsw i64 %.sroa.speculated.i.i.i.i.i1007, %i.bua ; 2 uses
  %i.buc = icmp ult i64 %i.bub, %i.bua
  %i.bud = tail call i64 @llvm.umin.i64(i64 %i.bub, i64 1152921504606846975)
  %i.bue = select i1 %i.buc, i64 1152921504606846975, i64 %i.bud ; 3 uses
  %.not.i.i.i.i.i1008 = icmp ne i64 %i.bue, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1008)
  %i.buf = shl nuw nsw i64 %i.bue, 3
  %i.bug = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.buf) #27 ; 8 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 %i.bty
  store i64 %i.btu, ptr %i.buh, align 8
  %.not10.i.i.i.i.i.i.i1009 = icmp eq ptr %.sroa.01486.20, %.sroa.289.20
  br i1 %.not10.i.i.i.i.i.i.i1009, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017, label %.lr.ph.i.i.i.i.i.i.i1010.preheader

.lr.ph.i.i.i.i.i.i.i1010.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1006
  %i.bui = ptrtoaddr ptr %i.bug to i64
  %i.buj = sub i64 %.0.lcssa.i.i.i.i.i.i.i1000.pn3101, %i.btx ; 2 uses
  %i.buk = lshr i64 %i.buj, 3
  %i.bul = add nuw nsw i64 %i.buk, 1              ; 2 uses
  %min.iters.check3103 = icmp ult i64 %i.buj, 56
  %i.bum = sub i64 %i.bui, %i.btx
  %diff.check3100 = icmp ult i64 %i.bum, 32
  %or.cond3621 = or i1 %min.iters.check3103, %diff.check3100
  br i1 %or.cond3621, label %.lr.ph.i.i.i.i.i.i.i1010.preheader3696, label %vector.ph3104

vector.ph3104:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1010.preheader
  %n.vec3106 = and i64 %i.bul, 4611686018427387900 ; 3 uses
  %i.bun = shl i64 %n.vec3106, 3                  ; 2 uses
  %i.buo = getelementptr i8, ptr %i.bug, i64 %i.bun ; 2 uses
  %i.bup = getelementptr i8, ptr %.sroa.01486.20, i64 %i.bun
  br label %vector.body3107

vector.body3107:                                  ; preds = %vector.body3107, %vector.ph3104
  %index3108 = phi i64 [ 0, %vector.ph3104 ], [ %index.next3113, %vector.body3107 ] ; 2 uses
  %i.buq = shl i64 %index3108, 3                  ; 2 uses
  %next.gep3109 = getelementptr i8, ptr %i.bug, i64 %i.buq ; 2 uses
  %next.gep3110 = getelementptr i8, ptr %.sroa.01486.20, i64 %i.buq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.bur = getelementptr i8, ptr %next.gep3110, i64 16
  %wide.load3111 = load <2 x i64>, ptr %next.gep3110, align 8, !alias.scope !999, !noalias !996
  %wide.load3112 = load <2 x i64>, ptr %i.bur, align 8, !alias.scope !999, !noalias !996
  %i.bus = getelementptr i8, ptr %next.gep3109, i64 16
  store <2 x i64> %wide.load3111, ptr %next.gep3109, align 8, !alias.scope !996, !noalias !999
  store <2 x i64> %wide.load3112, ptr %i.bus, align 8, !alias.scope !996, !noalias !999
  %index.next3113 = add nuw i64 %index3108, 4     ; 2 uses
  %i.but = icmp eq i64 %index.next3113, %n.vec3106
  br i1 %i.but, label %middle.block3114, label %vector.body3107, !llvm.loop !1001

middle.block3114:                                 ; preds = %vector.body3107
  %cmp.n3115 = icmp eq i64 %i.bul, %n.vec3106
  br i1 %cmp.n3115, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017, label %.lr.ph.i.i.i.i.i.i.i1010.preheader3696

.lr.ph.i.i.i.i.i.i.i1010.preheader3696:           ; preds = %.lr.ph.i.i.i.i.i.i.i1010.preheader, %middle.block3114
  %.012.i.i.i.i.i.i.i1011.ph = phi ptr [ %i.bug, %.lr.ph.i.i.i.i.i.i.i1010.preheader ], [ %i.buo, %middle.block3114 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1012.ph = phi ptr [ %.sroa.01486.20, %.lr.ph.i.i.i.i.i.i.i1010.preheader ], [ %i.bup, %middle.block3114 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1012.ph3853 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1012.ph to i64
  %i.buu = sub i64 %.0.lcssa.i.i.i.i.i.i.i1000.pn3101, %.0911.i.i.i.i.i.i.i1012.ph3853 ; 2 uses
  %i.buv = lshr i64 %i.buu, 3
  %i.buw = add nuw nsw i64 %i.buv, 1
  %xtraiter3854 = and i64 %i.buw, 7               ; 2 uses
  %lcmp.mod3855.not = icmp eq i64 %xtraiter3854, 0
  br i1 %lcmp.mod3855.not, label %.lr.ph.i.i.i.i.i.i.i1010.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1010.prol

.lr.ph.i.i.i.i.i.i.i1010.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1010.preheader3696, %.lr.ph.i.i.i.i.i.i.i1010.prol
  %.012.i.i.i.i.i.i.i1011.prol = phi ptr [ %i.buz, %.lr.ph.i.i.i.i.i.i.i1010.prol ], [ %.012.i.i.i.i.i.i.i1011.ph, %.lr.ph.i.i.i.i.i.i.i1010.preheader3696 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1012.prol = phi ptr [ %i.buy, %.lr.ph.i.i.i.i.i.i.i1010.prol ], [ %.0911.i.i.i.i.i.i.i1012.ph, %.lr.ph.i.i.i.i.i.i.i1010.preheader3696 ] ; 2 uses
  %prol.iter3856 = phi i64 [ %prol.iter3856.next, %.lr.ph.i.i.i.i.i.i.i1010.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1010.preheader3696 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.bux = load i64, ptr %.0911.i.i.i.i.i.i.i1012.prol, align 8, !alias.scope !999, !noalias !996
  store i64 %i.bux, ptr %.012.i.i.i.i.i.i.i1011.prol, align 8, !alias.scope !996, !noalias !999
  %i.buy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012.prol, i64 8 ; 2 uses
  %i.buz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011.prol, i64 8 ; 3 uses
  %prol.iter3856.next = add i64 %prol.iter3856, 1 ; 2 uses
  %prol.iter3856.cmp.not = icmp eq i64 %prol.iter3856.next, %xtraiter3854
  br i1 %prol.iter3856.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1010.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1010.prol, !llvm.loop !1002

.lr.ph.i.i.i.i.i.i.i1010.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1010.prol, %.lr.ph.i.i.i.i.i.i.i1010.preheader3696
  %.lcssa3697.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1010.preheader3696 ], [ %i.buz, %.lr.ph.i.i.i.i.i.i.i1010.prol ]
  %.012.i.i.i.i.i.i.i1011.unr = phi ptr [ %.012.i.i.i.i.i.i.i1011.ph, %.lr.ph.i.i.i.i.i.i.i1010.preheader3696 ], [ %i.buz, %.lr.ph.i.i.i.i.i.i.i1010.prol ]
  %.0911.i.i.i.i.i.i.i1012.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1012.ph, %.lr.ph.i.i.i.i.i.i.i1010.preheader3696 ], [ %i.buy, %.lr.ph.i.i.i.i.i.i.i1010.prol ]
  %i.bva = icmp ult i64 %i.buu, 56
  br i1 %i.bva, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017, label %.lr.ph.i.i.i.i.i.i.i1010

.lr.ph.i.i.i.i.i.i.i1010:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1010.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1010
  %.012.i.i.i.i.i.i.i1011 = phi ptr [ %i.bvy, %.lr.ph.i.i.i.i.i.i.i1010 ], [ %.012.i.i.i.i.i.i.i1011.unr, %.lr.ph.i.i.i.i.i.i.i1010.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1012 = phi ptr [ %i.bvx, %.lr.ph.i.i.i.i.i.i.i1010 ], [ %.0911.i.i.i.i.i.i.i1012.unr, %.lr.ph.i.i.i.i.i.i.i1010.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.bvb = load i64, ptr %.0911.i.i.i.i.i.i.i1012, align 8, !alias.scope !999, !noalias !996
  store i64 %i.bvb, ptr %.012.i.i.i.i.i.i.i1011, align 8, !alias.scope !996, !noalias !999
  %i.bvc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012, i64 8
  %i.bvd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.bve = load i64, ptr %i.bvc, align 8, !alias.scope !1005, !noalias !1003
  store i64 %i.bve, ptr %i.bvd, align 8, !alias.scope !1003, !noalias !1005
  %i.bvf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012, i64 16
  %i.bvg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.bvh = load i64, ptr %i.bvf, align 8, !alias.scope !1009, !noalias !1007
  store i64 %i.bvh, ptr %i.bvg, align 8, !alias.scope !1007, !noalias !1009
  %i.bvi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012, i64 24
  %i.bvj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.bvk = load i64, ptr %i.bvi, align 8, !alias.scope !1013, !noalias !1011
  store i64 %i.bvk, ptr %i.bvj, align 8, !alias.scope !1011, !noalias !1013
  %i.bvl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012, i64 32
  %i.bvm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.bvn = load i64, ptr %i.bvl, align 8, !alias.scope !1017, !noalias !1015
  store i64 %i.bvn, ptr %i.bvm, align 8, !alias.scope !1015, !noalias !1017
  %i.bvo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012, i64 40
  %i.bvp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.bvq = load i64, ptr %i.bvo, align 8, !alias.scope !1021, !noalias !1019
  store i64 %i.bvq, ptr %i.bvp, align 8, !alias.scope !1019, !noalias !1021
  %i.bvr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012, i64 48
  %i.bvs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.bvt = load i64, ptr %i.bvr, align 8, !alias.scope !1025, !noalias !1023
  store i64 %i.bvt, ptr %i.bvs, align 8, !alias.scope !1023, !noalias !1025
  %i.bvu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012, i64 56 ; 2 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.bvw = load i64, ptr %i.bvu, align 8, !alias.scope !1029, !noalias !1027
  store i64 %i.bvw, ptr %i.bvv, align 8, !alias.scope !1027, !noalias !1029
  %i.bvx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1012, i64 64
  %i.bvy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1011, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1013.7 = icmp eq ptr %i.bvu, %.0.lcssa.i.i.i.i.i.i.i1000.pn
  br i1 %.not.i.i.i.i.i.i.i1013.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017, label %.lr.ph.i.i.i.i.i.i.i1010, !llvm.loop !1031

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017: ; preds = %.lr.ph.i.i.i.i.i.i.i1010.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1010, %middle.block3114, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1006
  %.0.lcssa.i.i.i.i.i.i.i1015 = phi ptr [ %i.bug, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1006 ], [ %i.buo, %middle.block3114 ], [ %.lcssa3697.unr, %.lr.ph.i.i.i.i.i.i.i1010.prol.loopexit ], [ %i.bvy, %.lr.ph.i.i.i.i.i.i.i1010 ]
  %i.bvz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1015, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.20, i64 noundef %i.bty) #28
  %i.bwa = getelementptr inbounds nuw [8 x i8], ptr %i.bug, i64 %i.bue
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1018

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1018: ; preds = %bb.fs, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017
  %.sroa.289.21 = phi ptr [ %i.bwa, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017 ], [ %.sroa.289.20, %bb.fs ] ; 5 uses
  %.sroa.100.21 = phi ptr [ %i.bvz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017 ], [ %i.btv, %bb.fs ] ; 3 uses
  %.sroa.01486.21 = phi ptr [ %i.bug, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1017 ], [ %.sroa.01486.20, %bb.fs ] ; 7 uses
  %i.bwb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.bwc = icmp eq ptr %i.bwb, null
  br i1 %i.bwc, label %bb.fv, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1019, !prof !5

bb.fv:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1018
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1019

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1019: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1018, %bb.fv
  %i.bwd = ptrtoint ptr %i.bwb to i64             ; 2 uses
  %.not.i.i.i1020 = icmp eq ptr %.sroa.100.21, %.sroa.289.21
  br i1 %.not.i.i.i1020, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1019
  store i64 %i.bwd, ptr %.sroa.100.21, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1033

bb.fx:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1019
  %i.bwe = ptrtoint ptr %.sroa.289.21 to i64      ; 2 uses
  %i.bwf = ptrtoint ptr %.sroa.01486.21 to i64    ; 3 uses
  %i.bwg = sub i64 %i.bwe, %i.bwf                 ; 4 uses
  %i.bwh = icmp eq i64 %i.bwg, 9223372036854775800
  br i1 %i.bwh, label %bb.fy, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1021

bb.fy:                                            ; preds = %bb.fx
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1021: ; preds = %bb.fx
  %i.bwi = ashr exact i64 %i.bwg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1022 = tail call i64 @llvm.umax.i64(i64 %i.bwi, i64 1)
  %i.bwj = add nsw i64 %.sroa.speculated.i.i.i.i.i1022, %i.bwi ; 2 uses
  %i.bwk = icmp ult i64 %i.bwj, %i.bwi
  %i.bwl = tail call i64 @llvm.umin.i64(i64 %i.bwj, i64 1152921504606846975)
  %i.bwm = select i1 %i.bwk, i64 1152921504606846975, i64 %i.bwl ; 3 uses
  %.not.i.i.i.i.i1023 = icmp ne i64 %i.bwm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1023)
  %i.bwn = shl nuw nsw i64 %i.bwm, 3
  %i.bwo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bwn) #27 ; 8 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 %i.bwg
  store i64 %i.bwd, ptr %i.bwp, align 8
  %.not10.i.i.i.i.i.i.i1024 = icmp eq ptr %.sroa.01486.21, %.sroa.289.21
  br i1 %.not10.i.i.i.i.i.i.i1024, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1032, label %.lr.ph.i.i.i.i.i.i.i1025.preheader

.lr.ph.i.i.i.i.i.i.i1025.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1021
  %i.bwq = ptrtoaddr ptr %i.bwo to i64
  %42 = sub i64 %i.bwe, %i.bwf
  %43 = add i64 %42, -8                           ; 2 uses
  %i.bwr = lshr i64 %43, 3
  %i.bws = add nuw nsw i64 %i.bwr, 1              ; 2 uses
  %min.iters.check3121 = icmp ult i64 %43, 56
  %i.bwt = sub i64 %i.bwq, %i.bwf
  %diff.check3119 = icmp ult i64 %i.bwt, 32
  %or.cond3622 = or i1 %min.iters.check3121, %diff.check3119
  br i1 %or.cond3622, label %.lr.ph.i.i.i.i.i.i.i1025.preheader3694, label %vector.ph3122

vector.ph3122:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1025.preheader
  %n.vec3124 = and i64 %i.bws, 4611686018427387900 ; 3 uses
  %i.bwu = shl i64 %n.vec3124, 3                  ; 2 uses
  %i.bwv = getelementptr i8, ptr %i.bwo, i64 %i.bwu ; 2 uses
  %i.bww = getelementptr i8, ptr %.sroa.01486.21, i64 %i.bwu
  br label %vector.body3125

vector.body3125:                                  ; preds = %vector.body3125, %vector.ph3122
  %index3126 = phi i64 [ 0, %vector.ph3122 ], [ %index.next3131, %vector.body3125 ] ; 2 uses
  %i.bwx = shl i64 %index3126, 3                  ; 2 uses
  %next.gep3127 = getelementptr i8, ptr %i.bwo, i64 %i.bwx ; 2 uses
  %next.gep3128 = getelementptr i8, ptr %.sroa.01486.21, i64 %i.bwx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.bwy = getelementptr i8, ptr %next.gep3128, i64 16
  %wide.load3129 = load <2 x i64>, ptr %next.gep3128, align 8, !alias.scope !1035, !noalias !1032
  %wide.load3130 = load <2 x i64>, ptr %i.bwy, align 8, !alias.scope !1035, !noalias !1032
  %i.bwz = getelementptr i8, ptr %next.gep3127, i64 16
  store <2 x i64> %wide.load3129, ptr %next.gep3127, align 8, !alias.scope !1032, !noalias !1035
  store <2 x i64> %wide.load3130, ptr %i.bwz, align 8, !alias.scope !1032, !noalias !1035
  %index.next3131 = add nuw i64 %index3126, 4     ; 2 uses
  %i.bxa = icmp eq i64 %index.next3131, %n.vec3124
  br i1 %i.bxa, label %middle.block3132, label %vector.body3125, !llvm.loop !1037

middle.block3132:                                 ; preds = %vector.body3125
  %cmp.n3133 = icmp eq i64 %i.bws, %n.vec3124
  br i1 %cmp.n3133, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1032, label %.lr.ph.i.i.i.i.i.i.i1025.preheader3694

.lr.ph.i.i.i.i.i.i.i1025.preheader3694:           ; preds = %.lr.ph.i.i.i.i.i.i.i1025.preheader, %middle.block3132
  %.012.i.i.i.i.i.i.i1026.ph = phi ptr [ %i.bwo, %.lr.ph.i.i.i.i.i.i.i1025.preheader ], [ %i.bwv, %middle.block3132 ]
  %.0911.i.i.i.i.i.i.i1027.ph = phi ptr [ %.sroa.01486.21, %.lr.ph.i.i.i.i.i.i.i1025.preheader ], [ %i.bww, %middle.block3132 ]
  br label %.lr.ph.i.i.i.i.i.i.i1025

.lr.ph.i.i.i.i.i.i.i1025:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1025.preheader3694, %.lr.ph.i.i.i.i.i.i.i1025
  %.012.i.i.i.i.i.i.i1026 = phi ptr [ %i.bxd, %.lr.ph.i.i.i.i.i.i.i1025 ], [ %.012.i.i.i.i.i.i.i1026.ph, %.lr.ph.i.i.i.i.i.i.i1025.preheader3694 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1027 = phi ptr [ %i.bxc, %.lr.ph.i.i.i.i.i.i.i1025 ], [ %.0911.i.i.i.i.i.i.i1027.ph, %.lr.ph.i.i.i.i.i.i.i1025.preheader3694 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.bxb = load i64, ptr %.0911.i.i.i.i.i.i.i1027, align 8, !alias.scope !1035, !noalias !1032
  store i64 %i.bxb, ptr %.012.i.i.i.i.i.i.i1026, align 8, !alias.scope !1032, !noalias !1035
  %i.bxc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1027, i64 8 ; 2 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1026, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1028 = icmp eq ptr %i.bxc, %.sroa.289.21
  br i1 %.not.i.i.i.i.i.i.i1028, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1032, label %.lr.ph.i.i.i.i.i.i.i1025, !llvm.loop !1038

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1032: ; preds = %.lr.ph.i.i.i.i.i.i.i1025, %middle.block3132, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1021
  %.0.lcssa.i.i.i.i.i.i.i1030 = phi ptr [ %i.bwo, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1021 ], [ %i.bwv, %middle.block3132 ], [ %i.bxd, %.lr.ph.i.i.i.i.i.i.i1025 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.21, i64 noundef %i.bwg) #28
  %i.bxe = getelementptr inbounds nuw [8 x i8], ptr %i.bwo, i64 %i.bwm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1033

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1033: ; preds = %bb.fw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1032
  %.sroa.289.22 = phi ptr [ %i.bxe, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1032 ], [ %.sroa.289.21, %bb.fw ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1030.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1030, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1032 ], [ %.sroa.100.21, %bb.fw ] ; 4 uses
  %.sroa.01486.22 = phi ptr [ %i.bwo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1032 ], [ %.sroa.01486.21, %bb.fw ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1030.pn3138 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1030.pn to i64 ; 2 uses
  %.sroa.100.22 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1030.pn, i64 8 ; 2 uses
  %i.bxf = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.bxg = icmp eq ptr %i.bxf, null
  br i1 %i.bxg, label %bb.fz, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1034, !prof !5

bb.fz:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1033
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1034

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1034: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1033, %bb.fz
  %i.bxh = ptrtoint ptr %i.bxf to i64             ; 2 uses
  %.not.i.i.i1035 = icmp eq ptr %.sroa.100.22, %.sroa.289.22
  br i1 %.not.i.i.i1035, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1034
  store i64 %i.bxh, ptr %.sroa.100.22, align 8
  %i.bxi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1030.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1048

bb.gb:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1034
  %i.bxj = ptrtoint ptr %.sroa.289.22 to i64
  %i.bxk = ptrtoint ptr %.sroa.01486.22 to i64    ; 3 uses
  %i.bxl = sub i64 %i.bxj, %i.bxk                 ; 4 uses
  %i.bxm = icmp eq i64 %i.bxl, 9223372036854775800
  br i1 %i.bxm, label %bb.gc, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1036

bb.gc:                                            ; preds = %bb.gb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1036: ; preds = %bb.gb
  %i.bxn = ashr exact i64 %i.bxl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1037 = tail call i64 @llvm.umax.i64(i64 %i.bxn, i64 1)
  %i.bxo = add nsw i64 %.sroa.speculated.i.i.i.i.i1037, %i.bxn ; 2 uses
  %i.bxp = icmp ult i64 %i.bxo, %i.bxn
  %i.bxq = tail call i64 @llvm.umin.i64(i64 %i.bxo, i64 1152921504606846975)
  %i.bxr = select i1 %i.bxp, i64 1152921504606846975, i64 %i.bxq ; 3 uses
  %.not.i.i.i.i.i1038 = icmp ne i64 %i.bxr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1038)
  %i.bxs = shl nuw nsw i64 %i.bxr, 3
  %i.bxt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bxs) #27 ; 8 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 %i.bxl
  store i64 %i.bxh, ptr %i.bxu, align 8
  %.not10.i.i.i.i.i.i.i1039 = icmp eq ptr %.sroa.01486.22, %.sroa.289.22
  br i1 %.not10.i.i.i.i.i.i.i1039, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047, label %.lr.ph.i.i.i.i.i.i.i1040.preheader

.lr.ph.i.i.i.i.i.i.i1040.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1036
  %i.bxv = ptrtoaddr ptr %i.bxt to i64
  %i.bxw = sub i64 %.0.lcssa.i.i.i.i.i.i.i1030.pn3138, %i.bxk ; 2 uses
  %i.bxx = lshr i64 %i.bxw, 3
  %i.bxy = add nuw nsw i64 %i.bxx, 1              ; 2 uses
  %min.iters.check3140 = icmp ult i64 %i.bxw, 56
  %i.bxz = sub i64 %i.bxv, %i.bxk
  %diff.check3137 = icmp ult i64 %i.bxz, 32
  %or.cond3623 = or i1 %min.iters.check3140, %diff.check3137
  br i1 %or.cond3623, label %.lr.ph.i.i.i.i.i.i.i1040.preheader3692, label %vector.ph3141

vector.ph3141:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1040.preheader
  %n.vec3143 = and i64 %i.bxy, 4611686018427387900 ; 3 uses
  %i.bya = shl i64 %n.vec3143, 3                  ; 2 uses
  %i.byb = getelementptr i8, ptr %i.bxt, i64 %i.bya ; 2 uses
  %i.byc = getelementptr i8, ptr %.sroa.01486.22, i64 %i.bya
  br label %vector.body3144

vector.body3144:                                  ; preds = %vector.body3144, %vector.ph3141
  %index3145 = phi i64 [ 0, %vector.ph3141 ], [ %index.next3150, %vector.body3144 ] ; 2 uses
  %i.byd = shl i64 %index3145, 3                  ; 2 uses
  %next.gep3146 = getelementptr i8, ptr %i.bxt, i64 %i.byd ; 2 uses
  %next.gep3147 = getelementptr i8, ptr %.sroa.01486.22, i64 %i.byd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.bye = getelementptr i8, ptr %next.gep3147, i64 16
  %wide.load3148 = load <2 x i64>, ptr %next.gep3147, align 8, !alias.scope !1042, !noalias !1039
  %wide.load3149 = load <2 x i64>, ptr %i.bye, align 8, !alias.scope !1042, !noalias !1039
  %i.byf = getelementptr i8, ptr %next.gep3146, i64 16
  store <2 x i64> %wide.load3148, ptr %next.gep3146, align 8, !alias.scope !1039, !noalias !1042
  store <2 x i64> %wide.load3149, ptr %i.byf, align 8, !alias.scope !1039, !noalias !1042
  %index.next3150 = add nuw i64 %index3145, 4     ; 2 uses
  %i.byg = icmp eq i64 %index.next3150, %n.vec3143
  br i1 %i.byg, label %middle.block3151, label %vector.body3144, !llvm.loop !1044

middle.block3151:                                 ; preds = %vector.body3144
  %cmp.n3152 = icmp eq i64 %i.bxy, %n.vec3143
  br i1 %cmp.n3152, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047, label %.lr.ph.i.i.i.i.i.i.i1040.preheader3692

.lr.ph.i.i.i.i.i.i.i1040.preheader3692:           ; preds = %.lr.ph.i.i.i.i.i.i.i1040.preheader, %middle.block3151
  %.012.i.i.i.i.i.i.i1041.ph = phi ptr [ %i.bxt, %.lr.ph.i.i.i.i.i.i.i1040.preheader ], [ %i.byb, %middle.block3151 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1042.ph = phi ptr [ %.sroa.01486.22, %.lr.ph.i.i.i.i.i.i.i1040.preheader ], [ %i.byc, %middle.block3151 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1042.ph3857 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1042.ph to i64
  %i.byh = sub i64 %.0.lcssa.i.i.i.i.i.i.i1030.pn3138, %.0911.i.i.i.i.i.i.i1042.ph3857 ; 2 uses
  %i.byi = lshr i64 %i.byh, 3
  %i.byj = add nuw nsw i64 %i.byi, 1
  %xtraiter3858 = and i64 %i.byj, 7               ; 2 uses
  %lcmp.mod3859.not = icmp eq i64 %xtraiter3858, 0
  br i1 %lcmp.mod3859.not, label %.lr.ph.i.i.i.i.i.i.i1040.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1040.prol

.lr.ph.i.i.i.i.i.i.i1040.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1040.preheader3692, %.lr.ph.i.i.i.i.i.i.i1040.prol
  %.012.i.i.i.i.i.i.i1041.prol = phi ptr [ %i.bym, %.lr.ph.i.i.i.i.i.i.i1040.prol ], [ %.012.i.i.i.i.i.i.i1041.ph, %.lr.ph.i.i.i.i.i.i.i1040.preheader3692 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1042.prol = phi ptr [ %i.byl, %.lr.ph.i.i.i.i.i.i.i1040.prol ], [ %.0911.i.i.i.i.i.i.i1042.ph, %.lr.ph.i.i.i.i.i.i.i1040.preheader3692 ] ; 2 uses
  %prol.iter3860 = phi i64 [ %prol.iter3860.next, %.lr.ph.i.i.i.i.i.i.i1040.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1040.preheader3692 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.byk = load i64, ptr %.0911.i.i.i.i.i.i.i1042.prol, align 8, !alias.scope !1042, !noalias !1039
  store i64 %i.byk, ptr %.012.i.i.i.i.i.i.i1041.prol, align 8, !alias.scope !1039, !noalias !1042
  %i.byl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042.prol, i64 8 ; 2 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041.prol, i64 8 ; 3 uses
  %prol.iter3860.next = add i64 %prol.iter3860, 1 ; 2 uses
  %prol.iter3860.cmp.not = icmp eq i64 %prol.iter3860.next, %xtraiter3858
  br i1 %prol.iter3860.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1040.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1040.prol, !llvm.loop !1045

.lr.ph.i.i.i.i.i.i.i1040.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1040.prol, %.lr.ph.i.i.i.i.i.i.i1040.preheader3692
  %.lcssa3693.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1040.preheader3692 ], [ %i.bym, %.lr.ph.i.i.i.i.i.i.i1040.prol ]
  %.012.i.i.i.i.i.i.i1041.unr = phi ptr [ %.012.i.i.i.i.i.i.i1041.ph, %.lr.ph.i.i.i.i.i.i.i1040.preheader3692 ], [ %i.bym, %.lr.ph.i.i.i.i.i.i.i1040.prol ]
  %.0911.i.i.i.i.i.i.i1042.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1042.ph, %.lr.ph.i.i.i.i.i.i.i1040.preheader3692 ], [ %i.byl, %.lr.ph.i.i.i.i.i.i.i1040.prol ]
  %i.byn = icmp ult i64 %i.byh, 56
  br i1 %i.byn, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047, label %.lr.ph.i.i.i.i.i.i.i1040

.lr.ph.i.i.i.i.i.i.i1040:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1040.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1040
  %.012.i.i.i.i.i.i.i1041 = phi ptr [ %i.bzl, %.lr.ph.i.i.i.i.i.i.i1040 ], [ %.012.i.i.i.i.i.i.i1041.unr, %.lr.ph.i.i.i.i.i.i.i1040.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1042 = phi ptr [ %i.bzk, %.lr.ph.i.i.i.i.i.i.i1040 ], [ %.0911.i.i.i.i.i.i.i1042.unr, %.lr.ph.i.i.i.i.i.i.i1040.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.byo = load i64, ptr %.0911.i.i.i.i.i.i.i1042, align 8, !alias.scope !1042, !noalias !1039
  store i64 %i.byo, ptr %.012.i.i.i.i.i.i.i1041, align 8, !alias.scope !1039, !noalias !1042
  %i.byp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042, i64 8
  %i.byq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %i.byr = load i64, ptr %i.byp, align 8, !alias.scope !1048, !noalias !1046
  store i64 %i.byr, ptr %i.byq, align 8, !alias.scope !1046, !noalias !1048
  %i.bys = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042, i64 16
  %i.byt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.byu = load i64, ptr %i.bys, align 8, !alias.scope !1052, !noalias !1050
  store i64 %i.byu, ptr %i.byt, align 8, !alias.scope !1050, !noalias !1052
  %i.byv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042, i64 24
  %i.byw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.byx = load i64, ptr %i.byv, align 8, !alias.scope !1056, !noalias !1054
  store i64 %i.byx, ptr %i.byw, align 8, !alias.scope !1054, !noalias !1056
  %i.byy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042, i64 32
  %i.byz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.bza = load i64, ptr %i.byy, align 8, !alias.scope !1060, !noalias !1058
  store i64 %i.bza, ptr %i.byz, align 8, !alias.scope !1058, !noalias !1060
  %i.bzb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042, i64 40
  %i.bzc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.bzd = load i64, ptr %i.bzb, align 8, !alias.scope !1064, !noalias !1062
  store i64 %i.bzd, ptr %i.bzc, align 8, !alias.scope !1062, !noalias !1064
  %i.bze = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042, i64 48
  %i.bzf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %i.bzg = load i64, ptr %i.bze, align 8, !alias.scope !1068, !noalias !1066
  store i64 %i.bzg, ptr %i.bzf, align 8, !alias.scope !1066, !noalias !1068
  %i.bzh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042, i64 56 ; 2 uses
  %i.bzi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.bzj = load i64, ptr %i.bzh, align 8, !alias.scope !1072, !noalias !1070
  store i64 %i.bzj, ptr %i.bzi, align 8, !alias.scope !1070, !noalias !1072
  %i.bzk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1042, i64 64
  %i.bzl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1041, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1043.7 = icmp eq ptr %i.bzh, %.0.lcssa.i.i.i.i.i.i.i1030.pn
  br i1 %.not.i.i.i.i.i.i.i1043.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047, label %.lr.ph.i.i.i.i.i.i.i1040, !llvm.loop !1074

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047: ; preds = %.lr.ph.i.i.i.i.i.i.i1040.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1040, %middle.block3151, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1036
  %.0.lcssa.i.i.i.i.i.i.i1045 = phi ptr [ %i.bxt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1036 ], [ %i.byb, %middle.block3151 ], [ %.lcssa3693.unr, %.lr.ph.i.i.i.i.i.i.i1040.prol.loopexit ], [ %i.bzl, %.lr.ph.i.i.i.i.i.i.i1040 ]
  %i.bzm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1045, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.22, i64 noundef %i.bxl) #28
  %i.bzn = getelementptr inbounds nuw [8 x i8], ptr %i.bxt, i64 %i.bxr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1048

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1048: ; preds = %bb.ga, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047
  %.sroa.289.23 = phi ptr [ %i.bzn, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047 ], [ %.sroa.289.22, %bb.ga ] ; 5 uses
  %.sroa.100.23 = phi ptr [ %i.bzm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047 ], [ %i.bxi, %bb.ga ] ; 3 uses
  %.sroa.01486.23 = phi ptr [ %i.bxt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1047 ], [ %.sroa.01486.22, %bb.ga ] ; 7 uses
  %i.bzo = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.77, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.bzp = icmp eq ptr %i.bzo, null
  br i1 %i.bzp, label %bb.gd, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1049, !prof !5

bb.gd:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1048
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1049

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1049: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1048, %bb.gd
  %i.bzq = ptrtoint ptr %i.bzo to i64             ; 2 uses
  %.not.i.i.i1050 = icmp eq ptr %.sroa.100.23, %.sroa.289.23
  br i1 %.not.i.i.i1050, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1049
  store i64 %i.bzq, ptr %.sroa.100.23, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1063

bb.gf:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1049
  %i.bzr = ptrtoint ptr %.sroa.289.23 to i64      ; 2 uses
  %i.bzs = ptrtoint ptr %.sroa.01486.23 to i64    ; 3 uses
  %i.bzt = sub i64 %i.bzr, %i.bzs                 ; 4 uses
  %i.bzu = icmp eq i64 %i.bzt, 9223372036854775800
  br i1 %i.bzu, label %bb.gg, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1051

bb.gg:                                            ; preds = %bb.gf
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1051: ; preds = %bb.gf
  %i.bzv = ashr exact i64 %i.bzt, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1052 = tail call i64 @llvm.umax.i64(i64 %i.bzv, i64 1)
  %i.bzw = add nsw i64 %.sroa.speculated.i.i.i.i.i1052, %i.bzv ; 2 uses
  %i.bzx = icmp ult i64 %i.bzw, %i.bzv
  %i.bzy = tail call i64 @llvm.umin.i64(i64 %i.bzw, i64 1152921504606846975)
  %i.bzz = select i1 %i.bzx, i64 1152921504606846975, i64 %i.bzy ; 3 uses
  %.not.i.i.i.i.i1053 = icmp ne i64 %i.bzz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1053)
  %i.caa = shl nuw nsw i64 %i.bzz, 3
  %i.cab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.caa) #27 ; 8 uses
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 %i.bzt
  store i64 %i.bzq, ptr %i.cac, align 8
  %.not10.i.i.i.i.i.i.i1054 = icmp eq ptr %.sroa.01486.23, %.sroa.289.23
  br i1 %.not10.i.i.i.i.i.i.i1054, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1062, label %.lr.ph.i.i.i.i.i.i.i1055.preheader

.lr.ph.i.i.i.i.i.i.i1055.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1051
  %i.cad = ptrtoaddr ptr %i.cab to i64
  %44 = sub i64 %i.bzr, %i.bzs
  %45 = add i64 %44, -8                           ; 2 uses
  %i.cae = lshr i64 %45, 3
  %i.caf = add nuw nsw i64 %i.cae, 1              ; 2 uses
  %min.iters.check3158 = icmp ult i64 %45, 56
  %i.cag = sub i64 %i.cad, %i.bzs
  %diff.check3156 = icmp ult i64 %i.cag, 32
  %or.cond3624 = or i1 %min.iters.check3158, %diff.check3156
  br i1 %or.cond3624, label %.lr.ph.i.i.i.i.i.i.i1055.preheader3690, label %vector.ph3159

vector.ph3159:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1055.preheader
  %n.vec3161 = and i64 %i.caf, 4611686018427387900 ; 3 uses
  %i.cah = shl i64 %n.vec3161, 3                  ; 2 uses
  %i.cai = getelementptr i8, ptr %i.cab, i64 %i.cah ; 2 uses
  %i.caj = getelementptr i8, ptr %.sroa.01486.23, i64 %i.cah
  br label %vector.body3162

vector.body3162:                                  ; preds = %vector.body3162, %vector.ph3159
  %index3163 = phi i64 [ 0, %vector.ph3159 ], [ %index.next3168, %vector.body3162 ] ; 2 uses
  %i.cak = shl i64 %index3163, 3                  ; 2 uses
  %next.gep3164 = getelementptr i8, ptr %i.cab, i64 %i.cak ; 2 uses
  %next.gep3165 = getelementptr i8, ptr %.sroa.01486.23, i64 %i.cak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.cal = getelementptr i8, ptr %next.gep3165, i64 16
  %wide.load3166 = load <2 x i64>, ptr %next.gep3165, align 8, !alias.scope !1078, !noalias !1075
  %wide.load3167 = load <2 x i64>, ptr %i.cal, align 8, !alias.scope !1078, !noalias !1075
  %i.cam = getelementptr i8, ptr %next.gep3164, i64 16
  store <2 x i64> %wide.load3166, ptr %next.gep3164, align 8, !alias.scope !1075, !noalias !1078
  store <2 x i64> %wide.load3167, ptr %i.cam, align 8, !alias.scope !1075, !noalias !1078
  %index.next3168 = add nuw i64 %index3163, 4     ; 2 uses
  %i.can = icmp eq i64 %index.next3168, %n.vec3161
  br i1 %i.can, label %middle.block3169, label %vector.body3162, !llvm.loop !1080

middle.block3169:                                 ; preds = %vector.body3162
  %cmp.n3170 = icmp eq i64 %i.caf, %n.vec3161
  br i1 %cmp.n3170, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1062, label %.lr.ph.i.i.i.i.i.i.i1055.preheader3690

.lr.ph.i.i.i.i.i.i.i1055.preheader3690:           ; preds = %.lr.ph.i.i.i.i.i.i.i1055.preheader, %middle.block3169
  %.012.i.i.i.i.i.i.i1056.ph = phi ptr [ %i.cab, %.lr.ph.i.i.i.i.i.i.i1055.preheader ], [ %i.cai, %middle.block3169 ]
  %.0911.i.i.i.i.i.i.i1057.ph = phi ptr [ %.sroa.01486.23, %.lr.ph.i.i.i.i.i.i.i1055.preheader ], [ %i.caj, %middle.block3169 ]
  br label %.lr.ph.i.i.i.i.i.i.i1055

.lr.ph.i.i.i.i.i.i.i1055:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1055.preheader3690, %.lr.ph.i.i.i.i.i.i.i1055
  %.012.i.i.i.i.i.i.i1056 = phi ptr [ %i.caq, %.lr.ph.i.i.i.i.i.i.i1055 ], [ %.012.i.i.i.i.i.i.i1056.ph, %.lr.ph.i.i.i.i.i.i.i1055.preheader3690 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1057 = phi ptr [ %i.cap, %.lr.ph.i.i.i.i.i.i.i1055 ], [ %.0911.i.i.i.i.i.i.i1057.ph, %.lr.ph.i.i.i.i.i.i.i1055.preheader3690 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.cao = load i64, ptr %.0911.i.i.i.i.i.i.i1057, align 8, !alias.scope !1078, !noalias !1075
  store i64 %i.cao, ptr %.012.i.i.i.i.i.i.i1056, align 8, !alias.scope !1075, !noalias !1078
  %i.cap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1057, i64 8 ; 2 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1056, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1058 = icmp eq ptr %i.cap, %.sroa.289.23
  br i1 %.not.i.i.i.i.i.i.i1058, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1062, label %.lr.ph.i.i.i.i.i.i.i1055, !llvm.loop !1081

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1062: ; preds = %.lr.ph.i.i.i.i.i.i.i1055, %middle.block3169, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1051
  %.0.lcssa.i.i.i.i.i.i.i1060 = phi ptr [ %i.cab, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1051 ], [ %i.cai, %middle.block3169 ], [ %i.caq, %.lr.ph.i.i.i.i.i.i.i1055 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.23, i64 noundef %i.bzt) #28
  %i.car = getelementptr inbounds nuw [8 x i8], ptr %i.cab, i64 %i.bzz
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1063

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1063: ; preds = %bb.ge, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1062
  %.sroa.289.24 = phi ptr [ %i.car, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1062 ], [ %.sroa.289.23, %bb.ge ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1060.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1060, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1062 ], [ %.sroa.100.23, %bb.ge ] ; 4 uses
  %.sroa.01486.24 = phi ptr [ %i.cab, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1062 ], [ %.sroa.01486.23, %bb.ge ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1060.pn3175 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1060.pn to i64 ; 2 uses
  %.sroa.100.24 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1060.pn, i64 8 ; 2 uses
  %i.cas = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.cat = icmp eq ptr %i.cas, null
  br i1 %i.cat, label %bb.gh, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1064, !prof !5

bb.gh:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1063
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1064

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1064: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1063, %bb.gh
  %i.cau = ptrtoint ptr %i.cas to i64             ; 2 uses
  %.not.i.i.i1065 = icmp eq ptr %.sroa.100.24, %.sroa.289.24
  br i1 %.not.i.i.i1065, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1064
  store i64 %i.cau, ptr %.sroa.100.24, align 8
  %i.cav = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1060.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1078

bb.gj:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1064
  %i.caw = ptrtoint ptr %.sroa.289.24 to i64
  %i.cax = ptrtoint ptr %.sroa.01486.24 to i64    ; 3 uses
  %i.cay = sub i64 %i.caw, %i.cax                 ; 4 uses
  %i.caz = icmp eq i64 %i.cay, 9223372036854775800
  br i1 %i.caz, label %bb.gk, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1066

bb.gk:                                            ; preds = %bb.gj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1066: ; preds = %bb.gj
  %i.cba = ashr exact i64 %i.cay, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1067 = tail call i64 @llvm.umax.i64(i64 %i.cba, i64 1)
  %i.cbb = add nsw i64 %.sroa.speculated.i.i.i.i.i1067, %i.cba ; 2 uses
  %i.cbc = icmp ult i64 %i.cbb, %i.cba
  %i.cbd = tail call i64 @llvm.umin.i64(i64 %i.cbb, i64 1152921504606846975)
  %i.cbe = select i1 %i.cbc, i64 1152921504606846975, i64 %i.cbd ; 3 uses
  %.not.i.i.i.i.i1068 = icmp ne i64 %i.cbe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1068)
  %i.cbf = shl nuw nsw i64 %i.cbe, 3
  %i.cbg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cbf) #27 ; 8 uses
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbg, i64 %i.cay
  store i64 %i.cau, ptr %i.cbh, align 8
  %.not10.i.i.i.i.i.i.i1069 = icmp eq ptr %.sroa.01486.24, %.sroa.289.24
  br i1 %.not10.i.i.i.i.i.i.i1069, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077, label %.lr.ph.i.i.i.i.i.i.i1070.preheader

.lr.ph.i.i.i.i.i.i.i1070.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1066
  %i.cbi = ptrtoaddr ptr %i.cbg to i64
  %i.cbj = sub i64 %.0.lcssa.i.i.i.i.i.i.i1060.pn3175, %i.cax ; 2 uses
  %i.cbk = lshr i64 %i.cbj, 3
  %i.cbl = add nuw nsw i64 %i.cbk, 1              ; 2 uses
  %min.iters.check3177 = icmp ult i64 %i.cbj, 56
  %i.cbm = sub i64 %i.cbi, %i.cax
  %diff.check3174 = icmp ult i64 %i.cbm, 32
  %or.cond3625 = or i1 %min.iters.check3177, %diff.check3174
  br i1 %or.cond3625, label %.lr.ph.i.i.i.i.i.i.i1070.preheader3688, label %vector.ph3178

vector.ph3178:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1070.preheader
  %n.vec3180 = and i64 %i.cbl, 4611686018427387900 ; 3 uses
  %i.cbn = shl i64 %n.vec3180, 3                  ; 2 uses
  %i.cbo = getelementptr i8, ptr %i.cbg, i64 %i.cbn ; 2 uses
  %i.cbp = getelementptr i8, ptr %.sroa.01486.24, i64 %i.cbn
  br label %vector.body3181

vector.body3181:                                  ; preds = %vector.body3181, %vector.ph3178
  %index3182 = phi i64 [ 0, %vector.ph3178 ], [ %index.next3187, %vector.body3181 ] ; 2 uses
  %i.cbq = shl i64 %index3182, 3                  ; 2 uses
  %next.gep3183 = getelementptr i8, ptr %i.cbg, i64 %i.cbq ; 2 uses
  %next.gep3184 = getelementptr i8, ptr %.sroa.01486.24, i64 %i.cbq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.cbr = getelementptr i8, ptr %next.gep3184, i64 16
  %wide.load3185 = load <2 x i64>, ptr %next.gep3184, align 8, !alias.scope !1085, !noalias !1082
  %wide.load3186 = load <2 x i64>, ptr %i.cbr, align 8, !alias.scope !1085, !noalias !1082
  %i.cbs = getelementptr i8, ptr %next.gep3183, i64 16
  store <2 x i64> %wide.load3185, ptr %next.gep3183, align 8, !alias.scope !1082, !noalias !1085
  store <2 x i64> %wide.load3186, ptr %i.cbs, align 8, !alias.scope !1082, !noalias !1085
  %index.next3187 = add nuw i64 %index3182, 4     ; 2 uses
  %i.cbt = icmp eq i64 %index.next3187, %n.vec3180
  br i1 %i.cbt, label %middle.block3188, label %vector.body3181, !llvm.loop !1087

middle.block3188:                                 ; preds = %vector.body3181
  %cmp.n3189 = icmp eq i64 %i.cbl, %n.vec3180
  br i1 %cmp.n3189, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077, label %.lr.ph.i.i.i.i.i.i.i1070.preheader3688

.lr.ph.i.i.i.i.i.i.i1070.preheader3688:           ; preds = %.lr.ph.i.i.i.i.i.i.i1070.preheader, %middle.block3188
  %.012.i.i.i.i.i.i.i1071.ph = phi ptr [ %i.cbg, %.lr.ph.i.i.i.i.i.i.i1070.preheader ], [ %i.cbo, %middle.block3188 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1072.ph = phi ptr [ %.sroa.01486.24, %.lr.ph.i.i.i.i.i.i.i1070.preheader ], [ %i.cbp, %middle.block3188 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1072.ph3861 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1072.ph to i64
  %i.cbu = sub i64 %.0.lcssa.i.i.i.i.i.i.i1060.pn3175, %.0911.i.i.i.i.i.i.i1072.ph3861 ; 2 uses
  %i.cbv = lshr i64 %i.cbu, 3
  %i.cbw = add nuw nsw i64 %i.cbv, 1
  %xtraiter3862 = and i64 %i.cbw, 7               ; 2 uses
  %lcmp.mod3863.not = icmp eq i64 %xtraiter3862, 0
  br i1 %lcmp.mod3863.not, label %.lr.ph.i.i.i.i.i.i.i1070.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1070.prol

.lr.ph.i.i.i.i.i.i.i1070.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1070.preheader3688, %.lr.ph.i.i.i.i.i.i.i1070.prol
  %.012.i.i.i.i.i.i.i1071.prol = phi ptr [ %i.cbz, %.lr.ph.i.i.i.i.i.i.i1070.prol ], [ %.012.i.i.i.i.i.i.i1071.ph, %.lr.ph.i.i.i.i.i.i.i1070.preheader3688 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1072.prol = phi ptr [ %i.cby, %.lr.ph.i.i.i.i.i.i.i1070.prol ], [ %.0911.i.i.i.i.i.i.i1072.ph, %.lr.ph.i.i.i.i.i.i.i1070.preheader3688 ] ; 2 uses
  %prol.iter3864 = phi i64 [ %prol.iter3864.next, %.lr.ph.i.i.i.i.i.i.i1070.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1070.preheader3688 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.cbx = load i64, ptr %.0911.i.i.i.i.i.i.i1072.prol, align 8, !alias.scope !1085, !noalias !1082
  store i64 %i.cbx, ptr %.012.i.i.i.i.i.i.i1071.prol, align 8, !alias.scope !1082, !noalias !1085
  %i.cby = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072.prol, i64 8 ; 2 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071.prol, i64 8 ; 3 uses
  %prol.iter3864.next = add i64 %prol.iter3864, 1 ; 2 uses
  %prol.iter3864.cmp.not = icmp eq i64 %prol.iter3864.next, %xtraiter3862
  br i1 %prol.iter3864.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1070.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1070.prol, !llvm.loop !1088

.lr.ph.i.i.i.i.i.i.i1070.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1070.prol, %.lr.ph.i.i.i.i.i.i.i1070.preheader3688
  %.lcssa3689.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1070.preheader3688 ], [ %i.cbz, %.lr.ph.i.i.i.i.i.i.i1070.prol ]
  %.012.i.i.i.i.i.i.i1071.unr = phi ptr [ %.012.i.i.i.i.i.i.i1071.ph, %.lr.ph.i.i.i.i.i.i.i1070.preheader3688 ], [ %i.cbz, %.lr.ph.i.i.i.i.i.i.i1070.prol ]
  %.0911.i.i.i.i.i.i.i1072.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1072.ph, %.lr.ph.i.i.i.i.i.i.i1070.preheader3688 ], [ %i.cby, %.lr.ph.i.i.i.i.i.i.i1070.prol ]
  %i.cca = icmp ult i64 %i.cbu, 56
  br i1 %i.cca, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077, label %.lr.ph.i.i.i.i.i.i.i1070

.lr.ph.i.i.i.i.i.i.i1070:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1070.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1070
  %.012.i.i.i.i.i.i.i1071 = phi ptr [ %i.ccy, %.lr.ph.i.i.i.i.i.i.i1070 ], [ %.012.i.i.i.i.i.i.i1071.unr, %.lr.ph.i.i.i.i.i.i.i1070.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1072 = phi ptr [ %i.ccx, %.lr.ph.i.i.i.i.i.i.i1070 ], [ %.0911.i.i.i.i.i.i.i1072.unr, %.lr.ph.i.i.i.i.i.i.i1070.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.ccb = load i64, ptr %.0911.i.i.i.i.i.i.i1072, align 8, !alias.scope !1085, !noalias !1082
  store i64 %i.ccb, ptr %.012.i.i.i.i.i.i.i1071, align 8, !alias.scope !1082, !noalias !1085
  %i.ccc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072, i64 8
  %i.ccd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.cce = load i64, ptr %i.ccc, align 8, !alias.scope !1091, !noalias !1089
  store i64 %i.cce, ptr %i.ccd, align 8, !alias.scope !1089, !noalias !1091
  %i.ccf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072, i64 16
  %i.ccg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.cch = load i64, ptr %i.ccf, align 8, !alias.scope !1095, !noalias !1093
  store i64 %i.cch, ptr %i.ccg, align 8, !alias.scope !1093, !noalias !1095
  %i.cci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072, i64 24
  %i.ccj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.cck = load i64, ptr %i.cci, align 8, !alias.scope !1099, !noalias !1097
  store i64 %i.cck, ptr %i.ccj, align 8, !alias.scope !1097, !noalias !1099
  %i.ccl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072, i64 32
  %i.ccm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.ccn = load i64, ptr %i.ccl, align 8, !alias.scope !1103, !noalias !1101
  store i64 %i.ccn, ptr %i.ccm, align 8, !alias.scope !1101, !noalias !1103
  %i.cco = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072, i64 40
  %i.ccp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.ccq = load i64, ptr %i.cco, align 8, !alias.scope !1107, !noalias !1105
  store i64 %i.ccq, ptr %i.ccp, align 8, !alias.scope !1105, !noalias !1107
  %i.ccr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072, i64 48
  %i.ccs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.cct = load i64, ptr %i.ccr, align 8, !alias.scope !1111, !noalias !1109
  store i64 %i.cct, ptr %i.ccs, align 8, !alias.scope !1109, !noalias !1111
  %i.ccu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072, i64 56 ; 2 uses
  %i.ccv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.ccw = load i64, ptr %i.ccu, align 8, !alias.scope !1115, !noalias !1113
  store i64 %i.ccw, ptr %i.ccv, align 8, !alias.scope !1113, !noalias !1115
  %i.ccx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1072, i64 64
  %i.ccy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1071, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1073.7 = icmp eq ptr %i.ccu, %.0.lcssa.i.i.i.i.i.i.i1060.pn
  br i1 %.not.i.i.i.i.i.i.i1073.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077, label %.lr.ph.i.i.i.i.i.i.i1070, !llvm.loop !1117

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077: ; preds = %.lr.ph.i.i.i.i.i.i.i1070.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1070, %middle.block3188, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1066
  %.0.lcssa.i.i.i.i.i.i.i1075 = phi ptr [ %i.cbg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1066 ], [ %i.cbo, %middle.block3188 ], [ %.lcssa3689.unr, %.lr.ph.i.i.i.i.i.i.i1070.prol.loopexit ], [ %i.ccy, %.lr.ph.i.i.i.i.i.i.i1070 ]
  %i.ccz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1075, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.24, i64 noundef %i.cay) #28
  %i.cda = getelementptr inbounds nuw [8 x i8], ptr %i.cbg, i64 %i.cbe
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1078

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1078: ; preds = %bb.gi, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077
  %.sroa.289.25 = phi ptr [ %i.cda, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077 ], [ %.sroa.289.24, %bb.gi ] ; 5 uses
  %.sroa.100.25 = phi ptr [ %i.ccz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077 ], [ %i.cav, %bb.gi ] ; 3 uses
  %.sroa.01486.25 = phi ptr [ %i.cbg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1077 ], [ %.sroa.01486.24, %bb.gi ] ; 7 uses
  %i.cdb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.79, i32 noundef 1, i32 noundef 9) #25 ; 2 uses
  %i.cdc = icmp eq ptr %i.cdb, null
  br i1 %i.cdc, label %bb.gl, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1079, !prof !5

bb.gl:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1078
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1079

_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1079: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1078, %bb.gl
  %i.cdd = ptrtoint ptr %i.cdb to i64             ; 2 uses
  %.not.i.i.i1080 = icmp eq ptr %.sroa.100.25, %.sroa.289.25
  br i1 %.not.i.i.i1080, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1079
  store i64 %i.cdd, ptr %.sroa.100.25, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1093

bb.gn:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm10EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1079
  %i.cde = ptrtoint ptr %.sroa.289.25 to i64      ; 2 uses
  %i.cdf = ptrtoint ptr %.sroa.01486.25 to i64    ; 3 uses
  %i.cdg = sub i64 %i.cde, %i.cdf                 ; 4 uses
  %i.cdh = icmp eq i64 %i.cdg, 9223372036854775800
  br i1 %i.cdh, label %bb.go, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1081

bb.go:                                            ; preds = %bb.gn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1081: ; preds = %bb.gn
  %i.cdi = ashr exact i64 %i.cdg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1082 = tail call i64 @llvm.umax.i64(i64 %i.cdi, i64 1)
  %i.cdj = add nsw i64 %.sroa.speculated.i.i.i.i.i1082, %i.cdi ; 2 uses
  %i.cdk = icmp ult i64 %i.cdj, %i.cdi
  %i.cdl = tail call i64 @llvm.umin.i64(i64 %i.cdj, i64 1152921504606846975)
  %i.cdm = select i1 %i.cdk, i64 1152921504606846975, i64 %i.cdl ; 3 uses
  %.not.i.i.i.i.i1083 = icmp ne i64 %i.cdm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1083)
  %i.cdn = shl nuw nsw i64 %i.cdm, 3
  %i.cdo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cdn) #27 ; 8 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdo, i64 %i.cdg
  store i64 %i.cdd, ptr %i.cdp, align 8
  %.not10.i.i.i.i.i.i.i1084 = icmp eq ptr %.sroa.01486.25, %.sroa.289.25
  br i1 %.not10.i.i.i.i.i.i.i1084, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1092, label %.lr.ph.i.i.i.i.i.i.i1085.preheader

.lr.ph.i.i.i.i.i.i.i1085.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1081
  %i.cdq = ptrtoaddr ptr %i.cdo to i64
  %46 = sub i64 %i.cde, %i.cdf
  %47 = add i64 %46, -8                           ; 2 uses
  %i.cdr = lshr i64 %47, 3
  %i.cds = add nuw nsw i64 %i.cdr, 1              ; 2 uses
  %min.iters.check3195 = icmp ult i64 %47, 56
  %i.cdt = sub i64 %i.cdq, %i.cdf
  %diff.check3193 = icmp ult i64 %i.cdt, 32
  %or.cond3626 = or i1 %min.iters.check3195, %diff.check3193
  br i1 %or.cond3626, label %.lr.ph.i.i.i.i.i.i.i1085.preheader3686, label %vector.ph3196

vector.ph3196:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1085.preheader
  %n.vec3198 = and i64 %i.cds, 4611686018427387900 ; 3 uses
  %i.cdu = shl i64 %n.vec3198, 3                  ; 2 uses
  %i.cdv = getelementptr i8, ptr %i.cdo, i64 %i.cdu ; 2 uses
  %i.cdw = getelementptr i8, ptr %.sroa.01486.25, i64 %i.cdu
  br label %vector.body3199

vector.body3199:                                  ; preds = %vector.body3199, %vector.ph3196
  %index3200 = phi i64 [ 0, %vector.ph3196 ], [ %index.next3205, %vector.body3199 ] ; 2 uses
  %i.cdx = shl i64 %index3200, 3                  ; 2 uses
  %next.gep3201 = getelementptr i8, ptr %i.cdo, i64 %i.cdx ; 2 uses
  %next.gep3202 = getelementptr i8, ptr %.sroa.01486.25, i64 %i.cdx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.cdy = getelementptr i8, ptr %next.gep3202, i64 16
  %wide.load3203 = load <2 x i64>, ptr %next.gep3202, align 8, !alias.scope !1121, !noalias !1118
  %wide.load3204 = load <2 x i64>, ptr %i.cdy, align 8, !alias.scope !1121, !noalias !1118
  %i.cdz = getelementptr i8, ptr %next.gep3201, i64 16
  store <2 x i64> %wide.load3203, ptr %next.gep3201, align 8, !alias.scope !1118, !noalias !1121
  store <2 x i64> %wide.load3204, ptr %i.cdz, align 8, !alias.scope !1118, !noalias !1121
  %index.next3205 = add nuw i64 %index3200, 4     ; 2 uses
  %i.cea = icmp eq i64 %index.next3205, %n.vec3198
  br i1 %i.cea, label %middle.block3206, label %vector.body3199, !llvm.loop !1123

middle.block3206:                                 ; preds = %vector.body3199
  %cmp.n3207 = icmp eq i64 %i.cds, %n.vec3198
  br i1 %cmp.n3207, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1092, label %.lr.ph.i.i.i.i.i.i.i1085.preheader3686

.lr.ph.i.i.i.i.i.i.i1085.preheader3686:           ; preds = %.lr.ph.i.i.i.i.i.i.i1085.preheader, %middle.block3206
  %.012.i.i.i.i.i.i.i1086.ph = phi ptr [ %i.cdo, %.lr.ph.i.i.i.i.i.i.i1085.preheader ], [ %i.cdv, %middle.block3206 ]
  %.0911.i.i.i.i.i.i.i1087.ph = phi ptr [ %.sroa.01486.25, %.lr.ph.i.i.i.i.i.i.i1085.preheader ], [ %i.cdw, %middle.block3206 ]
  br label %.lr.ph.i.i.i.i.i.i.i1085

.lr.ph.i.i.i.i.i.i.i1085:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1085.preheader3686, %.lr.ph.i.i.i.i.i.i.i1085
  %.012.i.i.i.i.i.i.i1086 = phi ptr [ %i.ced, %.lr.ph.i.i.i.i.i.i.i1085 ], [ %.012.i.i.i.i.i.i.i1086.ph, %.lr.ph.i.i.i.i.i.i.i1085.preheader3686 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1087 = phi ptr [ %i.cec, %.lr.ph.i.i.i.i.i.i.i1085 ], [ %.0911.i.i.i.i.i.i.i1087.ph, %.lr.ph.i.i.i.i.i.i.i1085.preheader3686 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.ceb = load i64, ptr %.0911.i.i.i.i.i.i.i1087, align 8, !alias.scope !1121, !noalias !1118
  store i64 %i.ceb, ptr %.012.i.i.i.i.i.i.i1086, align 8, !alias.scope !1118, !noalias !1121
  %i.cec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1087, i64 8 ; 2 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1086, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1088 = icmp eq ptr %i.cec, %.sroa.289.25
  br i1 %.not.i.i.i.i.i.i.i1088, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1092, label %.lr.ph.i.i.i.i.i.i.i1085, !llvm.loop !1124

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1092: ; preds = %.lr.ph.i.i.i.i.i.i.i1085, %middle.block3206, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1081
  %.0.lcssa.i.i.i.i.i.i.i1090 = phi ptr [ %i.cdo, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1081 ], [ %i.cdv, %middle.block3206 ], [ %i.ced, %.lr.ph.i.i.i.i.i.i.i1085 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.25, i64 noundef %i.cdg) #28
  %i.cee = getelementptr inbounds nuw [8 x i8], ptr %i.cdo, i64 %i.cdm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1093

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1093: ; preds = %bb.gm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1092
  %.sroa.289.26 = phi ptr [ %i.cee, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1092 ], [ %.sroa.289.25, %bb.gm ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1090.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1090, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1092 ], [ %.sroa.100.25, %bb.gm ] ; 4 uses
  %.sroa.01486.26 = phi ptr [ %i.cdo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1092 ], [ %.sroa.01486.25, %bb.gm ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1090.pn3212 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1090.pn to i64 ; 2 uses
  %.sroa.100.26 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1090.pn, i64 8 ; 2 uses
  %i.cef = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 11) #25 ; 2 uses
  %i.ceg = icmp eq ptr %i.cef, null
  br i1 %i.ceg, label %bb.gp, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1094, !prof !5

bb.gp:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1093
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1094

_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1094: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1093, %bb.gp
  %i.ceh = ptrtoint ptr %i.cef to i64             ; 2 uses
  %.not.i.i.i1095 = icmp eq ptr %.sroa.100.26, %.sroa.289.26
  br i1 %.not.i.i.i1095, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1094
  store i64 %i.ceh, ptr %.sroa.100.26, align 8
  %i.cei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1090.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1108

bb.gr:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm12EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1094
  %i.cej = ptrtoint ptr %.sroa.289.26 to i64
  %i.cek = ptrtoint ptr %.sroa.01486.26 to i64    ; 3 uses
  %i.cel = sub i64 %i.cej, %i.cek                 ; 4 uses
  %i.cem = icmp eq i64 %i.cel, 9223372036854775800
  br i1 %i.cem, label %bb.gs, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1096

bb.gs:                                            ; preds = %bb.gr
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1096: ; preds = %bb.gr
  %i.cen = ashr exact i64 %i.cel, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1097 = tail call i64 @llvm.umax.i64(i64 %i.cen, i64 1)
  %i.ceo = add nsw i64 %.sroa.speculated.i.i.i.i.i1097, %i.cen ; 2 uses
  %i.cep = icmp ult i64 %i.ceo, %i.cen
  %i.ceq = tail call i64 @llvm.umin.i64(i64 %i.ceo, i64 1152921504606846975)
  %i.cer = select i1 %i.cep, i64 1152921504606846975, i64 %i.ceq ; 3 uses
  %.not.i.i.i.i.i1098 = icmp ne i64 %i.cer, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1098)
  %i.ces = shl nuw nsw i64 %i.cer, 3
  %i.cet = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ces) #27 ; 8 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cet, i64 %i.cel
  store i64 %i.ceh, ptr %i.ceu, align 8
  %.not10.i.i.i.i.i.i.i1099 = icmp eq ptr %.sroa.01486.26, %.sroa.289.26
  br i1 %.not10.i.i.i.i.i.i.i1099, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107, label %.lr.ph.i.i.i.i.i.i.i1100.preheader

.lr.ph.i.i.i.i.i.i.i1100.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1096
  %i.cev = ptrtoaddr ptr %i.cet to i64
  %i.cew = sub i64 %.0.lcssa.i.i.i.i.i.i.i1090.pn3212, %i.cek ; 2 uses
  %i.cex = lshr i64 %i.cew, 3
  %i.cey = add nuw nsw i64 %i.cex, 1              ; 2 uses
  %min.iters.check3214 = icmp ult i64 %i.cew, 56
  %i.cez = sub i64 %i.cev, %i.cek
  %diff.check3211 = icmp ult i64 %i.cez, 32
  %or.cond3627 = or i1 %min.iters.check3214, %diff.check3211
  br i1 %or.cond3627, label %.lr.ph.i.i.i.i.i.i.i1100.preheader3684, label %vector.ph3215

vector.ph3215:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1100.preheader
  %n.vec3217 = and i64 %i.cey, 4611686018427387900 ; 3 uses
  %i.cfa = shl i64 %n.vec3217, 3                  ; 2 uses
  %i.cfb = getelementptr i8, ptr %i.cet, i64 %i.cfa ; 2 uses
  %i.cfc = getelementptr i8, ptr %.sroa.01486.26, i64 %i.cfa
  br label %vector.body3218

vector.body3218:                                  ; preds = %vector.body3218, %vector.ph3215
  %index3219 = phi i64 [ 0, %vector.ph3215 ], [ %index.next3224, %vector.body3218 ] ; 2 uses
  %i.cfd = shl i64 %index3219, 3                  ; 2 uses
  %next.gep3220 = getelementptr i8, ptr %i.cet, i64 %i.cfd ; 2 uses
  %next.gep3221 = getelementptr i8, ptr %.sroa.01486.26, i64 %i.cfd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.cfe = getelementptr i8, ptr %next.gep3221, i64 16
  %wide.load3222 = load <2 x i64>, ptr %next.gep3221, align 8, !alias.scope !1128, !noalias !1125
  %wide.load3223 = load <2 x i64>, ptr %i.cfe, align 8, !alias.scope !1128, !noalias !1125
  %i.cff = getelementptr i8, ptr %next.gep3220, i64 16
  store <2 x i64> %wide.load3222, ptr %next.gep3220, align 8, !alias.scope !1125, !noalias !1128
  store <2 x i64> %wide.load3223, ptr %i.cff, align 8, !alias.scope !1125, !noalias !1128
  %index.next3224 = add nuw i64 %index3219, 4     ; 2 uses
  %i.cfg = icmp eq i64 %index.next3224, %n.vec3217
  br i1 %i.cfg, label %middle.block3225, label %vector.body3218, !llvm.loop !1130

middle.block3225:                                 ; preds = %vector.body3218
  %cmp.n3226 = icmp eq i64 %i.cey, %n.vec3217
  br i1 %cmp.n3226, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107, label %.lr.ph.i.i.i.i.i.i.i1100.preheader3684

.lr.ph.i.i.i.i.i.i.i1100.preheader3684:           ; preds = %.lr.ph.i.i.i.i.i.i.i1100.preheader, %middle.block3225
  %.012.i.i.i.i.i.i.i1101.ph = phi ptr [ %i.cet, %.lr.ph.i.i.i.i.i.i.i1100.preheader ], [ %i.cfb, %middle.block3225 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1102.ph = phi ptr [ %.sroa.01486.26, %.lr.ph.i.i.i.i.i.i.i1100.preheader ], [ %i.cfc, %middle.block3225 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1102.ph3865 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1102.ph to i64
  %i.cfh = sub i64 %.0.lcssa.i.i.i.i.i.i.i1090.pn3212, %.0911.i.i.i.i.i.i.i1102.ph3865 ; 2 uses
  %i.cfi = lshr i64 %i.cfh, 3
  %i.cfj = add nuw nsw i64 %i.cfi, 1
  %xtraiter3866 = and i64 %i.cfj, 7               ; 2 uses
  %lcmp.mod3867.not = icmp eq i64 %xtraiter3866, 0
  br i1 %lcmp.mod3867.not, label %.lr.ph.i.i.i.i.i.i.i1100.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1100.prol

.lr.ph.i.i.i.i.i.i.i1100.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1100.preheader3684, %.lr.ph.i.i.i.i.i.i.i1100.prol
  %.012.i.i.i.i.i.i.i1101.prol = phi ptr [ %i.cfm, %.lr.ph.i.i.i.i.i.i.i1100.prol ], [ %.012.i.i.i.i.i.i.i1101.ph, %.lr.ph.i.i.i.i.i.i.i1100.preheader3684 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1102.prol = phi ptr [ %i.cfl, %.lr.ph.i.i.i.i.i.i.i1100.prol ], [ %.0911.i.i.i.i.i.i.i1102.ph, %.lr.ph.i.i.i.i.i.i.i1100.preheader3684 ] ; 2 uses
  %prol.iter3868 = phi i64 [ %prol.iter3868.next, %.lr.ph.i.i.i.i.i.i.i1100.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1100.preheader3684 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.cfk = load i64, ptr %.0911.i.i.i.i.i.i.i1102.prol, align 8, !alias.scope !1128, !noalias !1125
  store i64 %i.cfk, ptr %.012.i.i.i.i.i.i.i1101.prol, align 8, !alias.scope !1125, !noalias !1128
  %i.cfl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102.prol, i64 8 ; 2 uses
  %i.cfm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101.prol, i64 8 ; 3 uses
  %prol.iter3868.next = add i64 %prol.iter3868, 1 ; 2 uses
  %prol.iter3868.cmp.not = icmp eq i64 %prol.iter3868.next, %xtraiter3866
  br i1 %prol.iter3868.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1100.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1100.prol, !llvm.loop !1131

.lr.ph.i.i.i.i.i.i.i1100.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1100.prol, %.lr.ph.i.i.i.i.i.i.i1100.preheader3684
  %.lcssa3685.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1100.preheader3684 ], [ %i.cfm, %.lr.ph.i.i.i.i.i.i.i1100.prol ]
  %.012.i.i.i.i.i.i.i1101.unr = phi ptr [ %.012.i.i.i.i.i.i.i1101.ph, %.lr.ph.i.i.i.i.i.i.i1100.preheader3684 ], [ %i.cfm, %.lr.ph.i.i.i.i.i.i.i1100.prol ]
  %.0911.i.i.i.i.i.i.i1102.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1102.ph, %.lr.ph.i.i.i.i.i.i.i1100.preheader3684 ], [ %i.cfl, %.lr.ph.i.i.i.i.i.i.i1100.prol ]
  %i.cfn = icmp ult i64 %i.cfh, 56
  br i1 %i.cfn, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107, label %.lr.ph.i.i.i.i.i.i.i1100

.lr.ph.i.i.i.i.i.i.i1100:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1100
  %.012.i.i.i.i.i.i.i1101 = phi ptr [ %i.cgl, %.lr.ph.i.i.i.i.i.i.i1100 ], [ %.012.i.i.i.i.i.i.i1101.unr, %.lr.ph.i.i.i.i.i.i.i1100.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1102 = phi ptr [ %i.cgk, %.lr.ph.i.i.i.i.i.i.i1100 ], [ %.0911.i.i.i.i.i.i.i1102.unr, %.lr.ph.i.i.i.i.i.i.i1100.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.cfo = load i64, ptr %.0911.i.i.i.i.i.i.i1102, align 8, !alias.scope !1128, !noalias !1125
  store i64 %i.cfo, ptr %.012.i.i.i.i.i.i.i1101, align 8, !alias.scope !1125, !noalias !1128
  %i.cfp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102, i64 8
  %i.cfq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.cfr = load i64, ptr %i.cfp, align 8, !alias.scope !1134, !noalias !1132
  store i64 %i.cfr, ptr %i.cfq, align 8, !alias.scope !1132, !noalias !1134
  %i.cfs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102, i64 16
  %i.cft = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.cfu = load i64, ptr %i.cfs, align 8, !alias.scope !1138, !noalias !1136
  store i64 %i.cfu, ptr %i.cft, align 8, !alias.scope !1136, !noalias !1138
  %i.cfv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102, i64 24
  %i.cfw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.cfx = load i64, ptr %i.cfv, align 8, !alias.scope !1142, !noalias !1140
  store i64 %i.cfx, ptr %i.cfw, align 8, !alias.scope !1140, !noalias !1142
  %i.cfy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102, i64 32
  %i.cfz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.cga = load i64, ptr %i.cfy, align 8, !alias.scope !1146, !noalias !1144
  store i64 %i.cga, ptr %i.cfz, align 8, !alias.scope !1144, !noalias !1146
  %i.cgb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102, i64 40
  %i.cgc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.cgd = load i64, ptr %i.cgb, align 8, !alias.scope !1150, !noalias !1148
  store i64 %i.cgd, ptr %i.cgc, align 8, !alias.scope !1148, !noalias !1150
  %i.cge = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102, i64 48
  %i.cgf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.cgg = load i64, ptr %i.cge, align 8, !alias.scope !1154, !noalias !1152
  store i64 %i.cgg, ptr %i.cgf, align 8, !alias.scope !1152, !noalias !1154
  %i.cgh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102, i64 56 ; 2 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %i.cgj = load i64, ptr %i.cgh, align 8, !alias.scope !1158, !noalias !1156
  store i64 %i.cgj, ptr %i.cgi, align 8, !alias.scope !1156, !noalias !1158
  %i.cgk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1102, i64 64
  %i.cgl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1101, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1103.7 = icmp eq ptr %i.cgh, %.0.lcssa.i.i.i.i.i.i.i1090.pn
  br i1 %.not.i.i.i.i.i.i.i1103.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107, label %.lr.ph.i.i.i.i.i.i.i1100, !llvm.loop !1160

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107: ; preds = %.lr.ph.i.i.i.i.i.i.i1100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1100, %middle.block3225, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1096
  %.0.lcssa.i.i.i.i.i.i.i1105 = phi ptr [ %i.cet, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1096 ], [ %i.cfb, %middle.block3225 ], [ %.lcssa3685.unr, %.lr.ph.i.i.i.i.i.i.i1100.prol.loopexit ], [ %i.cgl, %.lr.ph.i.i.i.i.i.i.i1100 ]
  %i.cgm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1105, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.26, i64 noundef %i.cel) #28
  %i.cgn = getelementptr inbounds nuw [8 x i8], ptr %i.cet, i64 %i.cer
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1108

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1108: ; preds = %bb.gq, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107
  %.sroa.289.27 = phi ptr [ %i.cgn, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107 ], [ %.sroa.289.26, %bb.gq ] ; 5 uses
  %.sroa.100.27 = phi ptr [ %i.cgm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107 ], [ %i.cei, %bb.gq ] ; 3 uses
  %.sroa.01486.27 = phi ptr [ %i.cet, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1107 ], [ %.sroa.01486.26, %bb.gq ] ; 7 uses
  %i.cgo = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.81, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.cgp = icmp eq ptr %i.cgo, null
  br i1 %i.cgp, label %bb.gt, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1109, !prof !5

bb.gt:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1108
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1109

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1109: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1108, %bb.gt
  %i.cgq = ptrtoint ptr %i.cgo to i64             ; 2 uses
  %.not.i.i.i1110 = icmp eq ptr %.sroa.100.27, %.sroa.289.27
  br i1 %.not.i.i.i1110, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1109
  store i64 %i.cgq, ptr %.sroa.100.27, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1123

bb.gv:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1109
  %i.cgr = ptrtoint ptr %.sroa.289.27 to i64      ; 2 uses
  %i.cgs = ptrtoint ptr %.sroa.01486.27 to i64    ; 3 uses
  %i.cgt = sub i64 %i.cgr, %i.cgs                 ; 4 uses
  %i.cgu = icmp eq i64 %i.cgt, 9223372036854775800
  br i1 %i.cgu, label %bb.gw, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1111

bb.gw:                                            ; preds = %bb.gv
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1111: ; preds = %bb.gv
  %i.cgv = ashr exact i64 %i.cgt, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1112 = tail call i64 @llvm.umax.i64(i64 %i.cgv, i64 1)
  %i.cgw = add nsw i64 %.sroa.speculated.i.i.i.i.i1112, %i.cgv ; 2 uses
  %i.cgx = icmp ult i64 %i.cgw, %i.cgv
  %i.cgy = tail call i64 @llvm.umin.i64(i64 %i.cgw, i64 1152921504606846975)
  %i.cgz = select i1 %i.cgx, i64 1152921504606846975, i64 %i.cgy ; 3 uses
  %.not.i.i.i.i.i1113 = icmp ne i64 %i.cgz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1113)
  %i.cha = shl nuw nsw i64 %i.cgz, 3
  %i.chb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cha) #27 ; 8 uses
  %i.chc = getelementptr inbounds nuw i8, ptr %i.chb, i64 %i.cgt
  store i64 %i.cgq, ptr %i.chc, align 8
  %.not10.i.i.i.i.i.i.i1114 = icmp eq ptr %.sroa.01486.27, %.sroa.289.27
  br i1 %.not10.i.i.i.i.i.i.i1114, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1122, label %.lr.ph.i.i.i.i.i.i.i1115.preheader

.lr.ph.i.i.i.i.i.i.i1115.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1111
  %i.chd = ptrtoaddr ptr %i.chb to i64
  %48 = sub i64 %i.cgr, %i.cgs
  %49 = add i64 %48, -8                           ; 2 uses
  %i.che = lshr i64 %49, 3
  %i.chf = add nuw nsw i64 %i.che, 1              ; 2 uses
  %min.iters.check3232 = icmp ult i64 %49, 56
  %i.chg = sub i64 %i.chd, %i.cgs
  %diff.check3230 = icmp ult i64 %i.chg, 32
  %or.cond3628 = or i1 %min.iters.check3232, %diff.check3230
  br i1 %or.cond3628, label %.lr.ph.i.i.i.i.i.i.i1115.preheader3682, label %vector.ph3233

vector.ph3233:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1115.preheader
  %n.vec3235 = and i64 %i.chf, 4611686018427387900 ; 3 uses
  %i.chh = shl i64 %n.vec3235, 3                  ; 2 uses
  %i.chi = getelementptr i8, ptr %i.chb, i64 %i.chh ; 2 uses
  %i.chj = getelementptr i8, ptr %.sroa.01486.27, i64 %i.chh
  br label %vector.body3236

vector.body3236:                                  ; preds = %vector.body3236, %vector.ph3233
  %index3237 = phi i64 [ 0, %vector.ph3233 ], [ %index.next3242, %vector.body3236 ] ; 2 uses
  %i.chk = shl i64 %index3237, 3                  ; 2 uses
  %next.gep3238 = getelementptr i8, ptr %i.chb, i64 %i.chk ; 2 uses
  %next.gep3239 = getelementptr i8, ptr %.sroa.01486.27, i64 %i.chk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.chl = getelementptr i8, ptr %next.gep3239, i64 16
  %wide.load3240 = load <2 x i64>, ptr %next.gep3239, align 8, !alias.scope !1164, !noalias !1161
  %wide.load3241 = load <2 x i64>, ptr %i.chl, align 8, !alias.scope !1164, !noalias !1161
  %i.chm = getelementptr i8, ptr %next.gep3238, i64 16
  store <2 x i64> %wide.load3240, ptr %next.gep3238, align 8, !alias.scope !1161, !noalias !1164
  store <2 x i64> %wide.load3241, ptr %i.chm, align 8, !alias.scope !1161, !noalias !1164
  %index.next3242 = add nuw i64 %index3237, 4     ; 2 uses
  %i.chn = icmp eq i64 %index.next3242, %n.vec3235
  br i1 %i.chn, label %middle.block3243, label %vector.body3236, !llvm.loop !1166

middle.block3243:                                 ; preds = %vector.body3236
  %cmp.n3244 = icmp eq i64 %i.chf, %n.vec3235
  br i1 %cmp.n3244, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1122, label %.lr.ph.i.i.i.i.i.i.i1115.preheader3682

.lr.ph.i.i.i.i.i.i.i1115.preheader3682:           ; preds = %.lr.ph.i.i.i.i.i.i.i1115.preheader, %middle.block3243
  %.012.i.i.i.i.i.i.i1116.ph = phi ptr [ %i.chb, %.lr.ph.i.i.i.i.i.i.i1115.preheader ], [ %i.chi, %middle.block3243 ]
  %.0911.i.i.i.i.i.i.i1117.ph = phi ptr [ %.sroa.01486.27, %.lr.ph.i.i.i.i.i.i.i1115.preheader ], [ %i.chj, %middle.block3243 ]
  br label %.lr.ph.i.i.i.i.i.i.i1115

.lr.ph.i.i.i.i.i.i.i1115:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1115.preheader3682, %.lr.ph.i.i.i.i.i.i.i1115
  %.012.i.i.i.i.i.i.i1116 = phi ptr [ %i.chq, %.lr.ph.i.i.i.i.i.i.i1115 ], [ %.012.i.i.i.i.i.i.i1116.ph, %.lr.ph.i.i.i.i.i.i.i1115.preheader3682 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1117 = phi ptr [ %i.chp, %.lr.ph.i.i.i.i.i.i.i1115 ], [ %.0911.i.i.i.i.i.i.i1117.ph, %.lr.ph.i.i.i.i.i.i.i1115.preheader3682 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.cho = load i64, ptr %.0911.i.i.i.i.i.i.i1117, align 8, !alias.scope !1164, !noalias !1161
  store i64 %i.cho, ptr %.012.i.i.i.i.i.i.i1116, align 8, !alias.scope !1161, !noalias !1164
  %i.chp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1117, i64 8 ; 2 uses
  %i.chq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1116, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1118 = icmp eq ptr %i.chp, %.sroa.289.27
  br i1 %.not.i.i.i.i.i.i.i1118, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1122, label %.lr.ph.i.i.i.i.i.i.i1115, !llvm.loop !1167

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1122: ; preds = %.lr.ph.i.i.i.i.i.i.i1115, %middle.block3243, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1111
  %.0.lcssa.i.i.i.i.i.i.i1120 = phi ptr [ %i.chb, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1111 ], [ %i.chi, %middle.block3243 ], [ %i.chq, %.lr.ph.i.i.i.i.i.i.i1115 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.27, i64 noundef %i.cgt) #28
  %i.chr = getelementptr inbounds nuw [8 x i8], ptr %i.chb, i64 %i.cgz
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1123

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1123: ; preds = %bb.gu, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1122
  %.sroa.289.28 = phi ptr [ %i.chr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1122 ], [ %.sroa.289.27, %bb.gu ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1120.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1120, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1122 ], [ %.sroa.100.27, %bb.gu ] ; 4 uses
  %.sroa.01486.28 = phi ptr [ %i.chb, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1122 ], [ %.sroa.01486.27, %bb.gu ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1120.pn3249 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1120.pn to i64 ; 2 uses
  %.sroa.100.28 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1120.pn, i64 8 ; 2 uses
  %i.chs = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.82, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.cht = icmp eq ptr %i.chs, null
  br i1 %i.cht, label %bb.gx, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1124, !prof !5

bb.gx:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1123
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1124

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1124: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1123, %bb.gx
  %i.chu = ptrtoint ptr %i.chs to i64             ; 2 uses
  %.not.i.i.i1125 = icmp eq ptr %.sroa.100.28, %.sroa.289.28
  br i1 %.not.i.i.i1125, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1124
  store i64 %i.chu, ptr %.sroa.100.28, align 8
  %i.chv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1120.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1138

bb.gz:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1124
  %i.chw = ptrtoint ptr %.sroa.289.28 to i64
  %i.chx = ptrtoint ptr %.sroa.01486.28 to i64    ; 3 uses
  %i.chy = sub i64 %i.chw, %i.chx                 ; 4 uses
  %i.chz = icmp eq i64 %i.chy, 9223372036854775800
  br i1 %i.chz, label %bb.ha, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1126

bb.ha:                                            ; preds = %bb.gz
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1126: ; preds = %bb.gz
  %i.cia = ashr exact i64 %i.chy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1127 = tail call i64 @llvm.umax.i64(i64 %i.cia, i64 1)
  %i.cib = add nsw i64 %.sroa.speculated.i.i.i.i.i1127, %i.cia ; 2 uses
  %i.cic = icmp ult i64 %i.cib, %i.cia
  %i.cid = tail call i64 @llvm.umin.i64(i64 %i.cib, i64 1152921504606846975)
  %i.cie = select i1 %i.cic, i64 1152921504606846975, i64 %i.cid ; 3 uses
  %.not.i.i.i.i.i1128 = icmp ne i64 %i.cie, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1128)
  %i.cif = shl nuw nsw i64 %i.cie, 3
  %i.cig = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cif) #27 ; 8 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cig, i64 %i.chy
  store i64 %i.chu, ptr %i.cih, align 8
  %.not10.i.i.i.i.i.i.i1129 = icmp eq ptr %.sroa.01486.28, %.sroa.289.28
  br i1 %.not10.i.i.i.i.i.i.i1129, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137, label %.lr.ph.i.i.i.i.i.i.i1130.preheader

.lr.ph.i.i.i.i.i.i.i1130.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1126
  %i.cii = ptrtoaddr ptr %i.cig to i64
  %i.cij = sub i64 %.0.lcssa.i.i.i.i.i.i.i1120.pn3249, %i.chx ; 2 uses
  %i.cik = lshr i64 %i.cij, 3
  %i.cil = add nuw nsw i64 %i.cik, 1              ; 2 uses
  %min.iters.check3251 = icmp ult i64 %i.cij, 56
  %i.cim = sub i64 %i.cii, %i.chx
  %diff.check3248 = icmp ult i64 %i.cim, 32
  %or.cond3629 = or i1 %min.iters.check3251, %diff.check3248
  br i1 %or.cond3629, label %.lr.ph.i.i.i.i.i.i.i1130.preheader3680, label %vector.ph3252

vector.ph3252:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1130.preheader
  %n.vec3254 = and i64 %i.cil, 4611686018427387900 ; 3 uses
  %i.cin = shl i64 %n.vec3254, 3                  ; 2 uses
  %i.cio = getelementptr i8, ptr %i.cig, i64 %i.cin ; 2 uses
  %i.cip = getelementptr i8, ptr %.sroa.01486.28, i64 %i.cin
  br label %vector.body3255

vector.body3255:                                  ; preds = %vector.body3255, %vector.ph3252
  %index3256 = phi i64 [ 0, %vector.ph3252 ], [ %index.next3261, %vector.body3255 ] ; 2 uses
  %i.ciq = shl i64 %index3256, 3                  ; 2 uses
  %next.gep3257 = getelementptr i8, ptr %i.cig, i64 %i.ciq ; 2 uses
  %next.gep3258 = getelementptr i8, ptr %.sroa.01486.28, i64 %i.ciq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.cir = getelementptr i8, ptr %next.gep3258, i64 16
  %wide.load3259 = load <2 x i64>, ptr %next.gep3258, align 8, !alias.scope !1171, !noalias !1168
  %wide.load3260 = load <2 x i64>, ptr %i.cir, align 8, !alias.scope !1171, !noalias !1168
  %i.cis = getelementptr i8, ptr %next.gep3257, i64 16
  store <2 x i64> %wide.load3259, ptr %next.gep3257, align 8, !alias.scope !1168, !noalias !1171
  store <2 x i64> %wide.load3260, ptr %i.cis, align 8, !alias.scope !1168, !noalias !1171
  %index.next3261 = add nuw i64 %index3256, 4     ; 2 uses
  %i.cit = icmp eq i64 %index.next3261, %n.vec3254
  br i1 %i.cit, label %middle.block3262, label %vector.body3255, !llvm.loop !1173

middle.block3262:                                 ; preds = %vector.body3255
  %cmp.n3263 = icmp eq i64 %i.cil, %n.vec3254
  br i1 %cmp.n3263, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137, label %.lr.ph.i.i.i.i.i.i.i1130.preheader3680

.lr.ph.i.i.i.i.i.i.i1130.preheader3680:           ; preds = %.lr.ph.i.i.i.i.i.i.i1130.preheader, %middle.block3262
  %.012.i.i.i.i.i.i.i1131.ph = phi ptr [ %i.cig, %.lr.ph.i.i.i.i.i.i.i1130.preheader ], [ %i.cio, %middle.block3262 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1132.ph = phi ptr [ %.sroa.01486.28, %.lr.ph.i.i.i.i.i.i.i1130.preheader ], [ %i.cip, %middle.block3262 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1132.ph3869 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1132.ph to i64
  %i.ciu = sub i64 %.0.lcssa.i.i.i.i.i.i.i1120.pn3249, %.0911.i.i.i.i.i.i.i1132.ph3869 ; 2 uses
  %i.civ = lshr i64 %i.ciu, 3
  %i.ciw = add nuw nsw i64 %i.civ, 1
  %xtraiter3870 = and i64 %i.ciw, 7               ; 2 uses
  %lcmp.mod3871.not = icmp eq i64 %xtraiter3870, 0
  br i1 %lcmp.mod3871.not, label %.lr.ph.i.i.i.i.i.i.i1130.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1130.prol

.lr.ph.i.i.i.i.i.i.i1130.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1130.preheader3680, %.lr.ph.i.i.i.i.i.i.i1130.prol
  %.012.i.i.i.i.i.i.i1131.prol = phi ptr [ %i.ciz, %.lr.ph.i.i.i.i.i.i.i1130.prol ], [ %.012.i.i.i.i.i.i.i1131.ph, %.lr.ph.i.i.i.i.i.i.i1130.preheader3680 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1132.prol = phi ptr [ %i.ciy, %.lr.ph.i.i.i.i.i.i.i1130.prol ], [ %.0911.i.i.i.i.i.i.i1132.ph, %.lr.ph.i.i.i.i.i.i.i1130.preheader3680 ] ; 2 uses
  %prol.iter3872 = phi i64 [ %prol.iter3872.next, %.lr.ph.i.i.i.i.i.i.i1130.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1130.preheader3680 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.cix = load i64, ptr %.0911.i.i.i.i.i.i.i1132.prol, align 8, !alias.scope !1171, !noalias !1168
  store i64 %i.cix, ptr %.012.i.i.i.i.i.i.i1131.prol, align 8, !alias.scope !1168, !noalias !1171
  %i.ciy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132.prol, i64 8 ; 2 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131.prol, i64 8 ; 3 uses
  %prol.iter3872.next = add i64 %prol.iter3872, 1 ; 2 uses
  %prol.iter3872.cmp.not = icmp eq i64 %prol.iter3872.next, %xtraiter3870
  br i1 %prol.iter3872.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1130.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1130.prol, !llvm.loop !1174

.lr.ph.i.i.i.i.i.i.i1130.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1130.prol, %.lr.ph.i.i.i.i.i.i.i1130.preheader3680
  %.lcssa3681.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1130.preheader3680 ], [ %i.ciz, %.lr.ph.i.i.i.i.i.i.i1130.prol ]
  %.012.i.i.i.i.i.i.i1131.unr = phi ptr [ %.012.i.i.i.i.i.i.i1131.ph, %.lr.ph.i.i.i.i.i.i.i1130.preheader3680 ], [ %i.ciz, %.lr.ph.i.i.i.i.i.i.i1130.prol ]
  %.0911.i.i.i.i.i.i.i1132.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1132.ph, %.lr.ph.i.i.i.i.i.i.i1130.preheader3680 ], [ %i.ciy, %.lr.ph.i.i.i.i.i.i.i1130.prol ]
  %i.cja = icmp ult i64 %i.ciu, 56
  br i1 %i.cja, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137, label %.lr.ph.i.i.i.i.i.i.i1130

.lr.ph.i.i.i.i.i.i.i1130:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1130.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1130
  %.012.i.i.i.i.i.i.i1131 = phi ptr [ %i.cjy, %.lr.ph.i.i.i.i.i.i.i1130 ], [ %.012.i.i.i.i.i.i.i1131.unr, %.lr.ph.i.i.i.i.i.i.i1130.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1132 = phi ptr [ %i.cjx, %.lr.ph.i.i.i.i.i.i.i1130 ], [ %.0911.i.i.i.i.i.i.i1132.unr, %.lr.ph.i.i.i.i.i.i.i1130.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.cjb = load i64, ptr %.0911.i.i.i.i.i.i.i1132, align 8, !alias.scope !1171, !noalias !1168
  store i64 %i.cjb, ptr %.012.i.i.i.i.i.i.i1131, align 8, !alias.scope !1168, !noalias !1171
  %i.cjc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132, i64 8
  %i.cjd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.cje = load i64, ptr %i.cjc, align 8, !alias.scope !1177, !noalias !1175
  store i64 %i.cje, ptr %i.cjd, align 8, !alias.scope !1175, !noalias !1177
  %i.cjf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132, i64 16
  %i.cjg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.cjh = load i64, ptr %i.cjf, align 8, !alias.scope !1181, !noalias !1179
  store i64 %i.cjh, ptr %i.cjg, align 8, !alias.scope !1179, !noalias !1181
  %i.cji = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132, i64 24
  %i.cjj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %i.cjk = load i64, ptr %i.cji, align 8, !alias.scope !1185, !noalias !1183
  store i64 %i.cjk, ptr %i.cjj, align 8, !alias.scope !1183, !noalias !1185
  %i.cjl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132, i64 32
  %i.cjm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %i.cjn = load i64, ptr %i.cjl, align 8, !alias.scope !1189, !noalias !1187
  store i64 %i.cjn, ptr %i.cjm, align 8, !alias.scope !1187, !noalias !1189
  %i.cjo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132, i64 40
  %i.cjp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.cjq = load i64, ptr %i.cjo, align 8, !alias.scope !1193, !noalias !1191
  store i64 %i.cjq, ptr %i.cjp, align 8, !alias.scope !1191, !noalias !1193
  %i.cjr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132, i64 48
  %i.cjs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.cjt = load i64, ptr %i.cjr, align 8, !alias.scope !1197, !noalias !1195
  store i64 %i.cjt, ptr %i.cjs, align 8, !alias.scope !1195, !noalias !1197
  %i.cju = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132, i64 56 ; 2 uses
  %i.cjv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.cjw = load i64, ptr %i.cju, align 8, !alias.scope !1201, !noalias !1199
  store i64 %i.cjw, ptr %i.cjv, align 8, !alias.scope !1199, !noalias !1201
  %i.cjx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1132, i64 64
  %i.cjy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1131, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1133.7 = icmp eq ptr %i.cju, %.0.lcssa.i.i.i.i.i.i.i1120.pn
  br i1 %.not.i.i.i.i.i.i.i1133.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137, label %.lr.ph.i.i.i.i.i.i.i1130, !llvm.loop !1203

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137: ; preds = %.lr.ph.i.i.i.i.i.i.i1130.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1130, %middle.block3262, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1126
  %.0.lcssa.i.i.i.i.i.i.i1135 = phi ptr [ %i.cig, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1126 ], [ %i.cio, %middle.block3262 ], [ %.lcssa3681.unr, %.lr.ph.i.i.i.i.i.i.i1130.prol.loopexit ], [ %i.cjy, %.lr.ph.i.i.i.i.i.i.i1130 ]
  %i.cjz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1135, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.28, i64 noundef %i.chy) #28
  %i.cka = getelementptr inbounds nuw [8 x i8], ptr %i.cig, i64 %i.cie
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1138

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1138: ; preds = %bb.gy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137
  %.sroa.289.29 = phi ptr [ %i.cka, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137 ], [ %.sroa.289.28, %bb.gy ] ; 5 uses
  %.sroa.100.29 = phi ptr [ %i.cjz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137 ], [ %i.chv, %bb.gy ] ; 3 uses
  %.sroa.01486.29 = phi ptr [ %i.cig, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1137 ], [ %.sroa.01486.28, %bb.gy ] ; 7 uses
  %i.ckb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.83, i32 noundef 1, i32 noundef 10) #25 ; 2 uses
  %i.ckc = icmp eq ptr %i.ckb, null
  br i1 %i.ckc, label %bb.hb, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1139, !prof !5

bb.hb:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1138
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1139

_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1139: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1138, %bb.hb
  %i.ckd = ptrtoint ptr %i.ckb to i64             ; 2 uses
  %.not.i.i.i1140 = icmp eq ptr %.sroa.100.29, %.sroa.289.29
  br i1 %.not.i.i.i1140, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1139
  store i64 %i.ckd, ptr %.sroa.100.29, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1153

bb.hd:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1139
  %i.cke = ptrtoint ptr %.sroa.289.29 to i64      ; 2 uses
  %i.ckf = ptrtoint ptr %.sroa.01486.29 to i64    ; 3 uses
  %i.ckg = sub i64 %i.cke, %i.ckf                 ; 4 uses
  %i.ckh = icmp eq i64 %i.ckg, 9223372036854775800
  br i1 %i.ckh, label %bb.he, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1141

bb.he:                                            ; preds = %bb.hd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1141: ; preds = %bb.hd
  %i.cki = ashr exact i64 %i.ckg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1142 = tail call i64 @llvm.umax.i64(i64 %i.cki, i64 1)
  %i.ckj = add nsw i64 %.sroa.speculated.i.i.i.i.i1142, %i.cki ; 2 uses
  %i.ckk = icmp ult i64 %i.ckj, %i.cki
  %i.ckl = tail call i64 @llvm.umin.i64(i64 %i.ckj, i64 1152921504606846975)
  %i.ckm = select i1 %i.ckk, i64 1152921504606846975, i64 %i.ckl ; 3 uses
  %.not.i.i.i.i.i1143 = icmp ne i64 %i.ckm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1143)
  %i.ckn = shl nuw nsw i64 %i.ckm, 3
  %i.cko = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ckn) #27 ; 8 uses
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cko, i64 %i.ckg
  store i64 %i.ckd, ptr %i.ckp, align 8
  %.not10.i.i.i.i.i.i.i1144 = icmp eq ptr %.sroa.01486.29, %.sroa.289.29
  br i1 %.not10.i.i.i.i.i.i.i1144, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1152, label %.lr.ph.i.i.i.i.i.i.i1145.preheader

.lr.ph.i.i.i.i.i.i.i1145.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1141
  %i.ckq = ptrtoaddr ptr %i.cko to i64
  %50 = sub i64 %i.cke, %i.ckf
  %51 = add i64 %50, -8                           ; 2 uses
  %i.ckr = lshr i64 %51, 3
  %i.cks = add nuw nsw i64 %i.ckr, 1              ; 2 uses
  %min.iters.check3269 = icmp ult i64 %51, 56
  %i.ckt = sub i64 %i.ckq, %i.ckf
  %diff.check3267 = icmp ult i64 %i.ckt, 32
  %or.cond3630 = or i1 %min.iters.check3269, %diff.check3267
  br i1 %or.cond3630, label %.lr.ph.i.i.i.i.i.i.i1145.preheader3678, label %vector.ph3270

vector.ph3270:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1145.preheader
  %n.vec3272 = and i64 %i.cks, 4611686018427387900 ; 3 uses
  %i.cku = shl i64 %n.vec3272, 3                  ; 2 uses
  %i.ckv = getelementptr i8, ptr %i.cko, i64 %i.cku ; 2 uses
  %i.ckw = getelementptr i8, ptr %.sroa.01486.29, i64 %i.cku
  br label %vector.body3273

vector.body3273:                                  ; preds = %vector.body3273, %vector.ph3270
  %index3274 = phi i64 [ 0, %vector.ph3270 ], [ %index.next3279, %vector.body3273 ] ; 2 uses
  %i.ckx = shl i64 %index3274, 3                  ; 2 uses
  %next.gep3275 = getelementptr i8, ptr %i.cko, i64 %i.ckx ; 2 uses
  %next.gep3276 = getelementptr i8, ptr %.sroa.01486.29, i64 %i.ckx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.cky = getelementptr i8, ptr %next.gep3276, i64 16
  %wide.load3277 = load <2 x i64>, ptr %next.gep3276, align 8, !alias.scope !1207, !noalias !1204
  %wide.load3278 = load <2 x i64>, ptr %i.cky, align 8, !alias.scope !1207, !noalias !1204
  %i.ckz = getelementptr i8, ptr %next.gep3275, i64 16
  store <2 x i64> %wide.load3277, ptr %next.gep3275, align 8, !alias.scope !1204, !noalias !1207
  store <2 x i64> %wide.load3278, ptr %i.ckz, align 8, !alias.scope !1204, !noalias !1207
  %index.next3279 = add nuw i64 %index3274, 4     ; 2 uses
  %i.cla = icmp eq i64 %index.next3279, %n.vec3272
  br i1 %i.cla, label %middle.block3280, label %vector.body3273, !llvm.loop !1209

middle.block3280:                                 ; preds = %vector.body3273
  %cmp.n3281 = icmp eq i64 %i.cks, %n.vec3272
  br i1 %cmp.n3281, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1152, label %.lr.ph.i.i.i.i.i.i.i1145.preheader3678

.lr.ph.i.i.i.i.i.i.i1145.preheader3678:           ; preds = %.lr.ph.i.i.i.i.i.i.i1145.preheader, %middle.block3280
  %.012.i.i.i.i.i.i.i1146.ph = phi ptr [ %i.cko, %.lr.ph.i.i.i.i.i.i.i1145.preheader ], [ %i.ckv, %middle.block3280 ]
  %.0911.i.i.i.i.i.i.i1147.ph = phi ptr [ %.sroa.01486.29, %.lr.ph.i.i.i.i.i.i.i1145.preheader ], [ %i.ckw, %middle.block3280 ]
  br label %.lr.ph.i.i.i.i.i.i.i1145

.lr.ph.i.i.i.i.i.i.i1145:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1145.preheader3678, %.lr.ph.i.i.i.i.i.i.i1145
  %.012.i.i.i.i.i.i.i1146 = phi ptr [ %i.cld, %.lr.ph.i.i.i.i.i.i.i1145 ], [ %.012.i.i.i.i.i.i.i1146.ph, %.lr.ph.i.i.i.i.i.i.i1145.preheader3678 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1147 = phi ptr [ %i.clc, %.lr.ph.i.i.i.i.i.i.i1145 ], [ %.0911.i.i.i.i.i.i.i1147.ph, %.lr.ph.i.i.i.i.i.i.i1145.preheader3678 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.clb = load i64, ptr %.0911.i.i.i.i.i.i.i1147, align 8, !alias.scope !1207, !noalias !1204
  store i64 %i.clb, ptr %.012.i.i.i.i.i.i.i1146, align 8, !alias.scope !1204, !noalias !1207
  %i.clc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1147, i64 8 ; 2 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1146, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1148 = icmp eq ptr %i.clc, %.sroa.289.29
  br i1 %.not.i.i.i.i.i.i.i1148, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1152, label %.lr.ph.i.i.i.i.i.i.i1145, !llvm.loop !1210

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1152: ; preds = %.lr.ph.i.i.i.i.i.i.i1145, %middle.block3280, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1141
  %.0.lcssa.i.i.i.i.i.i.i1150 = phi ptr [ %i.cko, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1141 ], [ %i.ckv, %middle.block3280 ], [ %i.cld, %.lr.ph.i.i.i.i.i.i.i1145 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.29, i64 noundef %i.ckg) #28
  %i.cle = getelementptr inbounds nuw [8 x i8], ptr %i.cko, i64 %i.ckm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1153

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1153: ; preds = %bb.hc, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1152
  %.sroa.289.30 = phi ptr [ %i.cle, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1152 ], [ %.sroa.289.29, %bb.hc ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1150.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1150, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1152 ], [ %.sroa.100.29, %bb.hc ] ; 4 uses
  %.sroa.01486.30 = phi ptr [ %i.cko, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1152 ], [ %.sroa.01486.29, %bb.hc ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1150.pn3286 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1150.pn to i64 ; 2 uses
  %.sroa.100.30 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1150.pn, i64 8 ; 2 uses
  %i.clf = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.84, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.clg = icmp eq ptr %i.clf, null
  br i1 %i.clg, label %bb.hf, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1154, !prof !5

bb.hf:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1153
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1154

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1154: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1153, %bb.hf
  %i.clh = ptrtoint ptr %i.clf to i64             ; 2 uses
  %.not.i.i.i1155 = icmp eq ptr %.sroa.100.30, %.sroa.289.30
  br i1 %.not.i.i.i1155, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1154
  store i64 %i.clh, ptr %.sroa.100.30, align 8
  %i.cli = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1150.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1168

bb.hh:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1154
  %i.clj = ptrtoint ptr %.sroa.289.30 to i64
  %i.clk = ptrtoint ptr %.sroa.01486.30 to i64    ; 3 uses
  %i.cll = sub i64 %i.clj, %i.clk                 ; 4 uses
  %i.clm = icmp eq i64 %i.cll, 9223372036854775800
  br i1 %i.clm, label %bb.hi, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1156

bb.hi:                                            ; preds = %bb.hh
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1156: ; preds = %bb.hh
  %i.cln = ashr exact i64 %i.cll, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1157 = tail call i64 @llvm.umax.i64(i64 %i.cln, i64 1)
  %i.clo = add nsw i64 %.sroa.speculated.i.i.i.i.i1157, %i.cln ; 2 uses
  %i.clp = icmp ult i64 %i.clo, %i.cln
  %i.clq = tail call i64 @llvm.umin.i64(i64 %i.clo, i64 1152921504606846975)
  %i.clr = select i1 %i.clp, i64 1152921504606846975, i64 %i.clq ; 3 uses
  %.not.i.i.i.i.i1158 = icmp ne i64 %i.clr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1158)
  %i.cls = shl nuw nsw i64 %i.clr, 3
  %i.clt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cls) #27 ; 8 uses
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clt, i64 %i.cll
  store i64 %i.clh, ptr %i.clu, align 8
  %.not10.i.i.i.i.i.i.i1159 = icmp eq ptr %.sroa.01486.30, %.sroa.289.30
  br i1 %.not10.i.i.i.i.i.i.i1159, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167, label %.lr.ph.i.i.i.i.i.i.i1160.preheader

.lr.ph.i.i.i.i.i.i.i1160.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1156
  %i.clv = ptrtoaddr ptr %i.clt to i64
  %i.clw = sub i64 %.0.lcssa.i.i.i.i.i.i.i1150.pn3286, %i.clk ; 2 uses
  %i.clx = lshr i64 %i.clw, 3
  %i.cly = add nuw nsw i64 %i.clx, 1              ; 2 uses
  %min.iters.check3288 = icmp ult i64 %i.clw, 56
  %i.clz = sub i64 %i.clv, %i.clk
  %diff.check3285 = icmp ult i64 %i.clz, 32
  %or.cond3631 = or i1 %min.iters.check3288, %diff.check3285
  br i1 %or.cond3631, label %.lr.ph.i.i.i.i.i.i.i1160.preheader3676, label %vector.ph3289

vector.ph3289:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1160.preheader
  %n.vec3291 = and i64 %i.cly, 4611686018427387900 ; 3 uses
  %i.cma = shl i64 %n.vec3291, 3                  ; 2 uses
  %i.cmb = getelementptr i8, ptr %i.clt, i64 %i.cma ; 2 uses
  %i.cmc = getelementptr i8, ptr %.sroa.01486.30, i64 %i.cma
  br label %vector.body3292

vector.body3292:                                  ; preds = %vector.body3292, %vector.ph3289
  %index3293 = phi i64 [ 0, %vector.ph3289 ], [ %index.next3298, %vector.body3292 ] ; 2 uses
  %i.cmd = shl i64 %index3293, 3                  ; 2 uses
  %next.gep3294 = getelementptr i8, ptr %i.clt, i64 %i.cmd ; 2 uses
  %next.gep3295 = getelementptr i8, ptr %.sroa.01486.30, i64 %i.cmd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.cme = getelementptr i8, ptr %next.gep3295, i64 16
  %wide.load3296 = load <2 x i64>, ptr %next.gep3295, align 8, !alias.scope !1214, !noalias !1211
  %wide.load3297 = load <2 x i64>, ptr %i.cme, align 8, !alias.scope !1214, !noalias !1211
  %i.cmf = getelementptr i8, ptr %next.gep3294, i64 16
  store <2 x i64> %wide.load3296, ptr %next.gep3294, align 8, !alias.scope !1211, !noalias !1214
  store <2 x i64> %wide.load3297, ptr %i.cmf, align 8, !alias.scope !1211, !noalias !1214
  %index.next3298 = add nuw i64 %index3293, 4     ; 2 uses
  %i.cmg = icmp eq i64 %index.next3298, %n.vec3291
  br i1 %i.cmg, label %middle.block3299, label %vector.body3292, !llvm.loop !1216

middle.block3299:                                 ; preds = %vector.body3292
  %cmp.n3300 = icmp eq i64 %i.cly, %n.vec3291
  br i1 %cmp.n3300, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167, label %.lr.ph.i.i.i.i.i.i.i1160.preheader3676

.lr.ph.i.i.i.i.i.i.i1160.preheader3676:           ; preds = %.lr.ph.i.i.i.i.i.i.i1160.preheader, %middle.block3299
  %.012.i.i.i.i.i.i.i1161.ph = phi ptr [ %i.clt, %.lr.ph.i.i.i.i.i.i.i1160.preheader ], [ %i.cmb, %middle.block3299 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1162.ph = phi ptr [ %.sroa.01486.30, %.lr.ph.i.i.i.i.i.i.i1160.preheader ], [ %i.cmc, %middle.block3299 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1162.ph3873 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1162.ph to i64
  %i.cmh = sub i64 %.0.lcssa.i.i.i.i.i.i.i1150.pn3286, %.0911.i.i.i.i.i.i.i1162.ph3873 ; 2 uses
  %i.cmi = lshr i64 %i.cmh, 3
  %i.cmj = add nuw nsw i64 %i.cmi, 1
  %xtraiter3874 = and i64 %i.cmj, 7               ; 2 uses
  %lcmp.mod3875.not = icmp eq i64 %xtraiter3874, 0
  br i1 %lcmp.mod3875.not, label %.lr.ph.i.i.i.i.i.i.i1160.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1160.prol

.lr.ph.i.i.i.i.i.i.i1160.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1160.preheader3676, %.lr.ph.i.i.i.i.i.i.i1160.prol
  %.012.i.i.i.i.i.i.i1161.prol = phi ptr [ %i.cmm, %.lr.ph.i.i.i.i.i.i.i1160.prol ], [ %.012.i.i.i.i.i.i.i1161.ph, %.lr.ph.i.i.i.i.i.i.i1160.preheader3676 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1162.prol = phi ptr [ %i.cml, %.lr.ph.i.i.i.i.i.i.i1160.prol ], [ %.0911.i.i.i.i.i.i.i1162.ph, %.lr.ph.i.i.i.i.i.i.i1160.preheader3676 ] ; 2 uses
  %prol.iter3876 = phi i64 [ %prol.iter3876.next, %.lr.ph.i.i.i.i.i.i.i1160.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1160.preheader3676 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.cmk = load i64, ptr %.0911.i.i.i.i.i.i.i1162.prol, align 8, !alias.scope !1214, !noalias !1211
  store i64 %i.cmk, ptr %.012.i.i.i.i.i.i.i1161.prol, align 8, !alias.scope !1211, !noalias !1214
  %i.cml = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162.prol, i64 8 ; 2 uses
  %i.cmm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161.prol, i64 8 ; 3 uses
  %prol.iter3876.next = add i64 %prol.iter3876, 1 ; 2 uses
  %prol.iter3876.cmp.not = icmp eq i64 %prol.iter3876.next, %xtraiter3874
  br i1 %prol.iter3876.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1160.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1160.prol, !llvm.loop !1217

.lr.ph.i.i.i.i.i.i.i1160.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1160.prol, %.lr.ph.i.i.i.i.i.i.i1160.preheader3676
  %.lcssa3677.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1160.preheader3676 ], [ %i.cmm, %.lr.ph.i.i.i.i.i.i.i1160.prol ]
  %.012.i.i.i.i.i.i.i1161.unr = phi ptr [ %.012.i.i.i.i.i.i.i1161.ph, %.lr.ph.i.i.i.i.i.i.i1160.preheader3676 ], [ %i.cmm, %.lr.ph.i.i.i.i.i.i.i1160.prol ]
  %.0911.i.i.i.i.i.i.i1162.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1162.ph, %.lr.ph.i.i.i.i.i.i.i1160.preheader3676 ], [ %i.cml, %.lr.ph.i.i.i.i.i.i.i1160.prol ]
  %i.cmn = icmp ult i64 %i.cmh, 56
  br i1 %i.cmn, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167, label %.lr.ph.i.i.i.i.i.i.i1160

.lr.ph.i.i.i.i.i.i.i1160:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1160.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1160
  %.012.i.i.i.i.i.i.i1161 = phi ptr [ %i.cnl, %.lr.ph.i.i.i.i.i.i.i1160 ], [ %.012.i.i.i.i.i.i.i1161.unr, %.lr.ph.i.i.i.i.i.i.i1160.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1162 = phi ptr [ %i.cnk, %.lr.ph.i.i.i.i.i.i.i1160 ], [ %.0911.i.i.i.i.i.i.i1162.unr, %.lr.ph.i.i.i.i.i.i.i1160.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.cmo = load i64, ptr %.0911.i.i.i.i.i.i.i1162, align 8, !alias.scope !1214, !noalias !1211
  store i64 %i.cmo, ptr %.012.i.i.i.i.i.i.i1161, align 8, !alias.scope !1211, !noalias !1214
  %i.cmp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162, i64 8
  %i.cmq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.cmr = load i64, ptr %i.cmp, align 8, !alias.scope !1220, !noalias !1218
  store i64 %i.cmr, ptr %i.cmq, align 8, !alias.scope !1218, !noalias !1220
  %i.cms = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162, i64 16
  %i.cmt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.cmu = load i64, ptr %i.cms, align 8, !alias.scope !1224, !noalias !1222
  store i64 %i.cmu, ptr %i.cmt, align 8, !alias.scope !1222, !noalias !1224
  %i.cmv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162, i64 24
  %i.cmw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.cmx = load i64, ptr %i.cmv, align 8, !alias.scope !1228, !noalias !1226
  store i64 %i.cmx, ptr %i.cmw, align 8, !alias.scope !1226, !noalias !1228
  %i.cmy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162, i64 32
  %i.cmz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.cna = load i64, ptr %i.cmy, align 8, !alias.scope !1232, !noalias !1230
  store i64 %i.cna, ptr %i.cmz, align 8, !alias.scope !1230, !noalias !1232
  %i.cnb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162, i64 40
  %i.cnc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.cnd = load i64, ptr %i.cnb, align 8, !alias.scope !1236, !noalias !1234
  store i64 %i.cnd, ptr %i.cnc, align 8, !alias.scope !1234, !noalias !1236
  %i.cne = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162, i64 48
  %i.cnf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.cng = load i64, ptr %i.cne, align 8, !alias.scope !1240, !noalias !1238
  store i64 %i.cng, ptr %i.cnf, align 8, !alias.scope !1238, !noalias !1240
  %i.cnh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162, i64 56 ; 2 uses
  %i.cni = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.cnj = load i64, ptr %i.cnh, align 8, !alias.scope !1244, !noalias !1242
  store i64 %i.cnj, ptr %i.cni, align 8, !alias.scope !1242, !noalias !1244
  %i.cnk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1162, i64 64
  %i.cnl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1161, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1163.7 = icmp eq ptr %i.cnh, %.0.lcssa.i.i.i.i.i.i.i1150.pn
  br i1 %.not.i.i.i.i.i.i.i1163.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167, label %.lr.ph.i.i.i.i.i.i.i1160, !llvm.loop !1246

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167: ; preds = %.lr.ph.i.i.i.i.i.i.i1160.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1160, %middle.block3299, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1156
  %.0.lcssa.i.i.i.i.i.i.i1165 = phi ptr [ %i.clt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1156 ], [ %i.cmb, %middle.block3299 ], [ %.lcssa3677.unr, %.lr.ph.i.i.i.i.i.i.i1160.prol.loopexit ], [ %i.cnl, %.lr.ph.i.i.i.i.i.i.i1160 ]
  %i.cnm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1165, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.30, i64 noundef %i.cll) #28
  %i.cnn = getelementptr inbounds nuw [8 x i8], ptr %i.clt, i64 %i.clr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1168

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1168: ; preds = %bb.hg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167
  %.sroa.289.31 = phi ptr [ %i.cnn, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167 ], [ %.sroa.289.30, %bb.hg ] ; 5 uses
  %.sroa.100.31 = phi ptr [ %i.cnm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167 ], [ %i.cli, %bb.hg ] ; 3 uses
  %.sroa.01486.31 = phi ptr [ %i.clt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1167 ], [ %.sroa.01486.30, %bb.hg ] ; 7 uses
  %i.cno = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.85, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.cnp = icmp eq ptr %i.cno, null
  br i1 %i.cnp, label %bb.hj, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1169, !prof !5

bb.hj:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1168
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1169

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1169: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1168, %bb.hj
  %i.cnq = ptrtoint ptr %i.cno to i64             ; 2 uses
  %.not.i.i.i1170 = icmp eq ptr %.sroa.100.31, %.sroa.289.31
  br i1 %.not.i.i.i1170, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1169
  store i64 %i.cnq, ptr %.sroa.100.31, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1183

bb.hl:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1169
  %i.cnr = ptrtoint ptr %.sroa.289.31 to i64      ; 2 uses
  %i.cns = ptrtoint ptr %.sroa.01486.31 to i64    ; 3 uses
  %i.cnt = sub i64 %i.cnr, %i.cns                 ; 4 uses
  %i.cnu = icmp eq i64 %i.cnt, 9223372036854775800
  br i1 %i.cnu, label %bb.hm, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1171

bb.hm:                                            ; preds = %bb.hl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1171: ; preds = %bb.hl
  %i.cnv = ashr exact i64 %i.cnt, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1172 = tail call i64 @llvm.umax.i64(i64 %i.cnv, i64 1)
  %i.cnw = add nsw i64 %.sroa.speculated.i.i.i.i.i1172, %i.cnv ; 2 uses
  %i.cnx = icmp ult i64 %i.cnw, %i.cnv
  %i.cny = tail call i64 @llvm.umin.i64(i64 %i.cnw, i64 1152921504606846975)
  %i.cnz = select i1 %i.cnx, i64 1152921504606846975, i64 %i.cny ; 3 uses
  %.not.i.i.i.i.i1173 = icmp ne i64 %i.cnz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1173)
  %i.coa = shl nuw nsw i64 %i.cnz, 3
  %i.cob = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.coa) #27 ; 8 uses
  %i.coc = getelementptr inbounds nuw i8, ptr %i.cob, i64 %i.cnt
  store i64 %i.cnq, ptr %i.coc, align 8
  %.not10.i.i.i.i.i.i.i1174 = icmp eq ptr %.sroa.01486.31, %.sroa.289.31
  br i1 %.not10.i.i.i.i.i.i.i1174, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1182, label %.lr.ph.i.i.i.i.i.i.i1175.preheader

.lr.ph.i.i.i.i.i.i.i1175.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1171
  %i.cod = ptrtoaddr ptr %i.cob to i64
  %52 = sub i64 %i.cnr, %i.cns
  %53 = add i64 %52, -8                           ; 2 uses
  %i.coe = lshr i64 %53, 3
  %i.cof = add nuw nsw i64 %i.coe, 1              ; 2 uses
  %min.iters.check3306 = icmp ult i64 %53, 56
  %i.cog = sub i64 %i.cod, %i.cns
  %diff.check3304 = icmp ult i64 %i.cog, 32
  %or.cond3632 = or i1 %min.iters.check3306, %diff.check3304
  br i1 %or.cond3632, label %.lr.ph.i.i.i.i.i.i.i1175.preheader3674, label %vector.ph3307

vector.ph3307:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1175.preheader
  %n.vec3309 = and i64 %i.cof, 4611686018427387900 ; 3 uses
  %i.coh = shl i64 %n.vec3309, 3                  ; 2 uses
  %i.coi = getelementptr i8, ptr %i.cob, i64 %i.coh ; 2 uses
  %i.coj = getelementptr i8, ptr %.sroa.01486.31, i64 %i.coh
  br label %vector.body3310

vector.body3310:                                  ; preds = %vector.body3310, %vector.ph3307
  %index3311 = phi i64 [ 0, %vector.ph3307 ], [ %index.next3316, %vector.body3310 ] ; 2 uses
  %i.cok = shl i64 %index3311, 3                  ; 2 uses
  %next.gep3312 = getelementptr i8, ptr %i.cob, i64 %i.cok ; 2 uses
  %next.gep3313 = getelementptr i8, ptr %.sroa.01486.31, i64 %i.cok ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.col = getelementptr i8, ptr %next.gep3313, i64 16
  %wide.load3314 = load <2 x i64>, ptr %next.gep3313, align 8, !alias.scope !1250, !noalias !1247
  %wide.load3315 = load <2 x i64>, ptr %i.col, align 8, !alias.scope !1250, !noalias !1247
  %i.com = getelementptr i8, ptr %next.gep3312, i64 16
  store <2 x i64> %wide.load3314, ptr %next.gep3312, align 8, !alias.scope !1247, !noalias !1250
  store <2 x i64> %wide.load3315, ptr %i.com, align 8, !alias.scope !1247, !noalias !1250
  %index.next3316 = add nuw i64 %index3311, 4     ; 2 uses
  %i.con = icmp eq i64 %index.next3316, %n.vec3309
  br i1 %i.con, label %middle.block3317, label %vector.body3310, !llvm.loop !1252

middle.block3317:                                 ; preds = %vector.body3310
  %cmp.n3318 = icmp eq i64 %i.cof, %n.vec3309
  br i1 %cmp.n3318, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1182, label %.lr.ph.i.i.i.i.i.i.i1175.preheader3674

.lr.ph.i.i.i.i.i.i.i1175.preheader3674:           ; preds = %.lr.ph.i.i.i.i.i.i.i1175.preheader, %middle.block3317
  %.012.i.i.i.i.i.i.i1176.ph = phi ptr [ %i.cob, %.lr.ph.i.i.i.i.i.i.i1175.preheader ], [ %i.coi, %middle.block3317 ]
  %.0911.i.i.i.i.i.i.i1177.ph = phi ptr [ %.sroa.01486.31, %.lr.ph.i.i.i.i.i.i.i1175.preheader ], [ %i.coj, %middle.block3317 ]
  br label %.lr.ph.i.i.i.i.i.i.i1175

.lr.ph.i.i.i.i.i.i.i1175:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1175.preheader3674, %.lr.ph.i.i.i.i.i.i.i1175
  %.012.i.i.i.i.i.i.i1176 = phi ptr [ %i.coq, %.lr.ph.i.i.i.i.i.i.i1175 ], [ %.012.i.i.i.i.i.i.i1176.ph, %.lr.ph.i.i.i.i.i.i.i1175.preheader3674 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1177 = phi ptr [ %i.cop, %.lr.ph.i.i.i.i.i.i.i1175 ], [ %.0911.i.i.i.i.i.i.i1177.ph, %.lr.ph.i.i.i.i.i.i.i1175.preheader3674 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.coo = load i64, ptr %.0911.i.i.i.i.i.i.i1177, align 8, !alias.scope !1250, !noalias !1247
  store i64 %i.coo, ptr %.012.i.i.i.i.i.i.i1176, align 8, !alias.scope !1247, !noalias !1250
  %i.cop = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1177, i64 8 ; 2 uses
  %i.coq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1176, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1178 = icmp eq ptr %i.cop, %.sroa.289.31
  br i1 %.not.i.i.i.i.i.i.i1178, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1182, label %.lr.ph.i.i.i.i.i.i.i1175, !llvm.loop !1253

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1182: ; preds = %.lr.ph.i.i.i.i.i.i.i1175, %middle.block3317, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1171
  %.0.lcssa.i.i.i.i.i.i.i1180 = phi ptr [ %i.cob, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1171 ], [ %i.coi, %middle.block3317 ], [ %i.coq, %.lr.ph.i.i.i.i.i.i.i1175 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.31, i64 noundef %i.cnt) #28
  %i.cor = getelementptr inbounds nuw [8 x i8], ptr %i.cob, i64 %i.cnz
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1183

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1183: ; preds = %bb.hk, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1182
  %.sroa.289.32 = phi ptr [ %i.cor, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1182 ], [ %.sroa.289.31, %bb.hk ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1180.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1180, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1182 ], [ %.sroa.100.31, %bb.hk ] ; 4 uses
  %.sroa.01486.32 = phi ptr [ %i.cob, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1182 ], [ %.sroa.01486.31, %bb.hk ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1180.pn3323 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1180.pn to i64 ; 2 uses
  %.sroa.100.32 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1180.pn, i64 8 ; 2 uses
  %i.cos = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.86, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.cot = icmp eq ptr %i.cos, null
  br i1 %i.cot, label %bb.hn, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1184, !prof !5

bb.hn:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1183
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1184

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1184: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1183, %bb.hn
  %i.cou = ptrtoint ptr %i.cos to i64             ; 2 uses
  %.not.i.i.i1185 = icmp eq ptr %.sroa.100.32, %.sroa.289.32
  br i1 %.not.i.i.i1185, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1184
  store i64 %i.cou, ptr %.sroa.100.32, align 8
  %i.cov = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1180.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1198

bb.hp:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1184
  %i.cow = ptrtoint ptr %.sroa.289.32 to i64
  %i.cox = ptrtoint ptr %.sroa.01486.32 to i64    ; 3 uses
  %i.coy = sub i64 %i.cow, %i.cox                 ; 4 uses
  %i.coz = icmp eq i64 %i.coy, 9223372036854775800
  br i1 %i.coz, label %bb.hq, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1186

bb.hq:                                            ; preds = %bb.hp
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1186: ; preds = %bb.hp
  %i.cpa = ashr exact i64 %i.coy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1187 = tail call i64 @llvm.umax.i64(i64 %i.cpa, i64 1)
  %i.cpb = add nsw i64 %.sroa.speculated.i.i.i.i.i1187, %i.cpa ; 2 uses
  %i.cpc = icmp ult i64 %i.cpb, %i.cpa
  %i.cpd = tail call i64 @llvm.umin.i64(i64 %i.cpb, i64 1152921504606846975)
  %i.cpe = select i1 %i.cpc, i64 1152921504606846975, i64 %i.cpd ; 3 uses
  %.not.i.i.i.i.i1188 = icmp ne i64 %i.cpe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1188)
  %i.cpf = shl nuw nsw i64 %i.cpe, 3
  %i.cpg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cpf) #27 ; 8 uses
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cpg, i64 %i.coy
  store i64 %i.cou, ptr %i.cph, align 8
  %.not10.i.i.i.i.i.i.i1189 = icmp eq ptr %.sroa.01486.32, %.sroa.289.32
  br i1 %.not10.i.i.i.i.i.i.i1189, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197, label %.lr.ph.i.i.i.i.i.i.i1190.preheader

.lr.ph.i.i.i.i.i.i.i1190.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1186
  %i.cpi = ptrtoaddr ptr %i.cpg to i64
  %i.cpj = sub i64 %.0.lcssa.i.i.i.i.i.i.i1180.pn3323, %i.cox ; 2 uses
  %i.cpk = lshr i64 %i.cpj, 3
  %i.cpl = add nuw nsw i64 %i.cpk, 1              ; 2 uses
  %min.iters.check3325 = icmp ult i64 %i.cpj, 56
  %i.cpm = sub i64 %i.cpi, %i.cox
  %diff.check3322 = icmp ult i64 %i.cpm, 32
  %or.cond3633 = or i1 %min.iters.check3325, %diff.check3322
  br i1 %or.cond3633, label %.lr.ph.i.i.i.i.i.i.i1190.preheader3672, label %vector.ph3326

vector.ph3326:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1190.preheader
  %n.vec3328 = and i64 %i.cpl, 4611686018427387900 ; 3 uses
  %i.cpn = shl i64 %n.vec3328, 3                  ; 2 uses
  %i.cpo = getelementptr i8, ptr %i.cpg, i64 %i.cpn ; 2 uses
  %i.cpp = getelementptr i8, ptr %.sroa.01486.32, i64 %i.cpn
  br label %vector.body3329

vector.body3329:                                  ; preds = %vector.body3329, %vector.ph3326
  %index3330 = phi i64 [ 0, %vector.ph3326 ], [ %index.next3335, %vector.body3329 ] ; 2 uses
  %i.cpq = shl i64 %index3330, 3                  ; 2 uses
  %next.gep3331 = getelementptr i8, ptr %i.cpg, i64 %i.cpq ; 2 uses
  %next.gep3332 = getelementptr i8, ptr %.sroa.01486.32, i64 %i.cpq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.cpr = getelementptr i8, ptr %next.gep3332, i64 16
  %wide.load3333 = load <2 x i64>, ptr %next.gep3332, align 8, !alias.scope !1257, !noalias !1254
  %wide.load3334 = load <2 x i64>, ptr %i.cpr, align 8, !alias.scope !1257, !noalias !1254
  %i.cps = getelementptr i8, ptr %next.gep3331, i64 16
  store <2 x i64> %wide.load3333, ptr %next.gep3331, align 8, !alias.scope !1254, !noalias !1257
  store <2 x i64> %wide.load3334, ptr %i.cps, align 8, !alias.scope !1254, !noalias !1257
  %index.next3335 = add nuw i64 %index3330, 4     ; 2 uses
  %i.cpt = icmp eq i64 %index.next3335, %n.vec3328
  br i1 %i.cpt, label %middle.block3336, label %vector.body3329, !llvm.loop !1259

middle.block3336:                                 ; preds = %vector.body3329
  %cmp.n3337 = icmp eq i64 %i.cpl, %n.vec3328
  br i1 %cmp.n3337, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197, label %.lr.ph.i.i.i.i.i.i.i1190.preheader3672

.lr.ph.i.i.i.i.i.i.i1190.preheader3672:           ; preds = %.lr.ph.i.i.i.i.i.i.i1190.preheader, %middle.block3336
  %.012.i.i.i.i.i.i.i1191.ph = phi ptr [ %i.cpg, %.lr.ph.i.i.i.i.i.i.i1190.preheader ], [ %i.cpo, %middle.block3336 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1192.ph = phi ptr [ %.sroa.01486.32, %.lr.ph.i.i.i.i.i.i.i1190.preheader ], [ %i.cpp, %middle.block3336 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1192.ph3877 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1192.ph to i64
  %i.cpu = sub i64 %.0.lcssa.i.i.i.i.i.i.i1180.pn3323, %.0911.i.i.i.i.i.i.i1192.ph3877 ; 2 uses
  %i.cpv = lshr i64 %i.cpu, 3
  %i.cpw = add nuw nsw i64 %i.cpv, 1
  %xtraiter3878 = and i64 %i.cpw, 7               ; 2 uses
  %lcmp.mod3879.not = icmp eq i64 %xtraiter3878, 0
  br i1 %lcmp.mod3879.not, label %.lr.ph.i.i.i.i.i.i.i1190.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1190.prol

.lr.ph.i.i.i.i.i.i.i1190.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1190.preheader3672, %.lr.ph.i.i.i.i.i.i.i1190.prol
  %.012.i.i.i.i.i.i.i1191.prol = phi ptr [ %i.cpz, %.lr.ph.i.i.i.i.i.i.i1190.prol ], [ %.012.i.i.i.i.i.i.i1191.ph, %.lr.ph.i.i.i.i.i.i.i1190.preheader3672 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1192.prol = phi ptr [ %i.cpy, %.lr.ph.i.i.i.i.i.i.i1190.prol ], [ %.0911.i.i.i.i.i.i.i1192.ph, %.lr.ph.i.i.i.i.i.i.i1190.preheader3672 ] ; 2 uses
  %prol.iter3880 = phi i64 [ %prol.iter3880.next, %.lr.ph.i.i.i.i.i.i.i1190.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1190.preheader3672 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.cpx = load i64, ptr %.0911.i.i.i.i.i.i.i1192.prol, align 8, !alias.scope !1257, !noalias !1254
  store i64 %i.cpx, ptr %.012.i.i.i.i.i.i.i1191.prol, align 8, !alias.scope !1254, !noalias !1257
  %i.cpy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192.prol, i64 8 ; 2 uses
  %i.cpz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191.prol, i64 8 ; 3 uses
  %prol.iter3880.next = add i64 %prol.iter3880, 1 ; 2 uses
  %prol.iter3880.cmp.not = icmp eq i64 %prol.iter3880.next, %xtraiter3878
  br i1 %prol.iter3880.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1190.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1190.prol, !llvm.loop !1260

.lr.ph.i.i.i.i.i.i.i1190.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1190.prol, %.lr.ph.i.i.i.i.i.i.i1190.preheader3672
  %.lcssa3673.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1190.preheader3672 ], [ %i.cpz, %.lr.ph.i.i.i.i.i.i.i1190.prol ]
  %.012.i.i.i.i.i.i.i1191.unr = phi ptr [ %.012.i.i.i.i.i.i.i1191.ph, %.lr.ph.i.i.i.i.i.i.i1190.preheader3672 ], [ %i.cpz, %.lr.ph.i.i.i.i.i.i.i1190.prol ]
  %.0911.i.i.i.i.i.i.i1192.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1192.ph, %.lr.ph.i.i.i.i.i.i.i1190.preheader3672 ], [ %i.cpy, %.lr.ph.i.i.i.i.i.i.i1190.prol ]
  %i.cqa = icmp ult i64 %i.cpu, 56
  br i1 %i.cqa, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197, label %.lr.ph.i.i.i.i.i.i.i1190

.lr.ph.i.i.i.i.i.i.i1190:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1190.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1190
  %.012.i.i.i.i.i.i.i1191 = phi ptr [ %i.cqy, %.lr.ph.i.i.i.i.i.i.i1190 ], [ %.012.i.i.i.i.i.i.i1191.unr, %.lr.ph.i.i.i.i.i.i.i1190.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1192 = phi ptr [ %i.cqx, %.lr.ph.i.i.i.i.i.i.i1190 ], [ %.0911.i.i.i.i.i.i.i1192.unr, %.lr.ph.i.i.i.i.i.i.i1190.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.cqb = load i64, ptr %.0911.i.i.i.i.i.i.i1192, align 8, !alias.scope !1257, !noalias !1254
  store i64 %i.cqb, ptr %.012.i.i.i.i.i.i.i1191, align 8, !alias.scope !1254, !noalias !1257
  %i.cqc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 8
  %i.cqd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %i.cqe = load i64, ptr %i.cqc, align 8, !alias.scope !1263, !noalias !1261
  store i64 %i.cqe, ptr %i.cqd, align 8, !alias.scope !1261, !noalias !1263
  %i.cqf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 16
  %i.cqg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.cqh = load i64, ptr %i.cqf, align 8, !alias.scope !1267, !noalias !1265
  store i64 %i.cqh, ptr %i.cqg, align 8, !alias.scope !1265, !noalias !1267
  %i.cqi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 24
  %i.cqj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.cqk = load i64, ptr %i.cqi, align 8, !alias.scope !1271, !noalias !1269
  store i64 %i.cqk, ptr %i.cqj, align 8, !alias.scope !1269, !noalias !1271
  %i.cql = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 32
  %i.cqm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.cqn = load i64, ptr %i.cql, align 8, !alias.scope !1275, !noalias !1273
  store i64 %i.cqn, ptr %i.cqm, align 8, !alias.scope !1273, !noalias !1275
  %i.cqo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 40
  %i.cqp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.cqq = load i64, ptr %i.cqo, align 8, !alias.scope !1279, !noalias !1277
  store i64 %i.cqq, ptr %i.cqp, align 8, !alias.scope !1277, !noalias !1279
  %i.cqr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 48
  %i.cqs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.cqt = load i64, ptr %i.cqr, align 8, !alias.scope !1283, !noalias !1281
  store i64 %i.cqt, ptr %i.cqs, align 8, !alias.scope !1281, !noalias !1283
  %i.cqu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 56 ; 2 uses
  %i.cqv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %i.cqw = load i64, ptr %i.cqu, align 8, !alias.scope !1287, !noalias !1285
  store i64 %i.cqw, ptr %i.cqv, align 8, !alias.scope !1285, !noalias !1287
  %i.cqx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1192, i64 64
  %i.cqy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1191, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1193.7 = icmp eq ptr %i.cqu, %.0.lcssa.i.i.i.i.i.i.i1180.pn
  br i1 %.not.i.i.i.i.i.i.i1193.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197, label %.lr.ph.i.i.i.i.i.i.i1190, !llvm.loop !1289

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197: ; preds = %.lr.ph.i.i.i.i.i.i.i1190.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1190, %middle.block3336, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1186
  %.0.lcssa.i.i.i.i.i.i.i1195 = phi ptr [ %i.cpg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1186 ], [ %i.cpo, %middle.block3336 ], [ %.lcssa3673.unr, %.lr.ph.i.i.i.i.i.i.i1190.prol.loopexit ], [ %i.cqy, %.lr.ph.i.i.i.i.i.i.i1190 ]
  %i.cqz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1195, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.32, i64 noundef %i.coy) #28
  %i.cra = getelementptr inbounds nuw [8 x i8], ptr %i.cpg, i64 %i.cpe
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1198

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1198: ; preds = %bb.ho, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197
  %.sroa.289.33 = phi ptr [ %i.cra, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197 ], [ %.sroa.289.32, %bb.ho ] ; 5 uses
  %.sroa.100.33 = phi ptr [ %i.cqz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197 ], [ %i.cov, %bb.ho ] ; 3 uses
  %.sroa.01486.33 = phi ptr [ %i.cpg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1197 ], [ %.sroa.01486.32, %bb.ho ] ; 7 uses
  %i.crb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.88, i32 noundef 1, i32 noundef 3) #25 ; 2 uses
  %i.crc = icmp eq ptr %i.crb, null
  br i1 %i.crc, label %bb.hr, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1199, !prof !5

bb.hr:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1198
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1199

_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1199: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1198, %bb.hr
  %i.crd = ptrtoint ptr %i.crb to i64             ; 2 uses
  %.not.i.i.i1200 = icmp eq ptr %.sroa.100.33, %.sroa.289.33
  br i1 %.not.i.i.i1200, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1199
  store i64 %i.crd, ptr %.sroa.100.33, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1213

bb.ht:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm4EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1199
  %i.cre = ptrtoint ptr %.sroa.289.33 to i64      ; 2 uses
  %i.crf = ptrtoint ptr %.sroa.01486.33 to i64    ; 3 uses
  %i.crg = sub i64 %i.cre, %i.crf                 ; 4 uses
  %i.crh = icmp eq i64 %i.crg, 9223372036854775800
  br i1 %i.crh, label %bb.hu, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1201

bb.hu:                                            ; preds = %bb.ht
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1201: ; preds = %bb.ht
  %i.cri = ashr exact i64 %i.crg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1202 = tail call i64 @llvm.umax.i64(i64 %i.cri, i64 1)
  %i.crj = add nsw i64 %.sroa.speculated.i.i.i.i.i1202, %i.cri ; 2 uses
  %i.crk = icmp ult i64 %i.crj, %i.cri
  %i.crl = tail call i64 @llvm.umin.i64(i64 %i.crj, i64 1152921504606846975)
  %i.crm = select i1 %i.crk, i64 1152921504606846975, i64 %i.crl ; 3 uses
  %.not.i.i.i.i.i1203 = icmp ne i64 %i.crm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1203)
  %i.crn = shl nuw nsw i64 %i.crm, 3
  %i.cro = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.crn) #27 ; 8 uses
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cro, i64 %i.crg
  store i64 %i.crd, ptr %i.crp, align 8
  %.not10.i.i.i.i.i.i.i1204 = icmp eq ptr %.sroa.01486.33, %.sroa.289.33
  br i1 %.not10.i.i.i.i.i.i.i1204, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1212, label %.lr.ph.i.i.i.i.i.i.i1205.preheader

.lr.ph.i.i.i.i.i.i.i1205.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1201
  %i.crq = ptrtoaddr ptr %i.cro to i64
  %54 = sub i64 %i.cre, %i.crf
  %55 = add i64 %54, -8                           ; 2 uses
  %i.crr = lshr i64 %55, 3
  %i.crs = add nuw nsw i64 %i.crr, 1              ; 2 uses
  %min.iters.check3343 = icmp ult i64 %55, 56
  %i.crt = sub i64 %i.crq, %i.crf
  %diff.check3341 = icmp ult i64 %i.crt, 32
  %or.cond3634 = or i1 %min.iters.check3343, %diff.check3341
  br i1 %or.cond3634, label %.lr.ph.i.i.i.i.i.i.i1205.preheader3670, label %vector.ph3344

vector.ph3344:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1205.preheader
  %n.vec3346 = and i64 %i.crs, 4611686018427387900 ; 3 uses
  %i.cru = shl i64 %n.vec3346, 3                  ; 2 uses
  %i.crv = getelementptr i8, ptr %i.cro, i64 %i.cru ; 2 uses
  %i.crw = getelementptr i8, ptr %.sroa.01486.33, i64 %i.cru
  br label %vector.body3347

vector.body3347:                                  ; preds = %vector.body3347, %vector.ph3344
  %index3348 = phi i64 [ 0, %vector.ph3344 ], [ %index.next3353, %vector.body3347 ] ; 2 uses
  %i.crx = shl i64 %index3348, 3                  ; 2 uses
  %next.gep3349 = getelementptr i8, ptr %i.cro, i64 %i.crx ; 2 uses
  %next.gep3350 = getelementptr i8, ptr %.sroa.01486.33, i64 %i.crx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.cry = getelementptr i8, ptr %next.gep3350, i64 16
  %wide.load3351 = load <2 x i64>, ptr %next.gep3350, align 8, !alias.scope !1293, !noalias !1290
  %wide.load3352 = load <2 x i64>, ptr %i.cry, align 8, !alias.scope !1293, !noalias !1290
  %i.crz = getelementptr i8, ptr %next.gep3349, i64 16
  store <2 x i64> %wide.load3351, ptr %next.gep3349, align 8, !alias.scope !1290, !noalias !1293
  store <2 x i64> %wide.load3352, ptr %i.crz, align 8, !alias.scope !1290, !noalias !1293
  %index.next3353 = add nuw i64 %index3348, 4     ; 2 uses
  %i.csa = icmp eq i64 %index.next3353, %n.vec3346
  br i1 %i.csa, label %middle.block3354, label %vector.body3347, !llvm.loop !1295

middle.block3354:                                 ; preds = %vector.body3347
  %cmp.n3355 = icmp eq i64 %i.crs, %n.vec3346
  br i1 %cmp.n3355, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1212, label %.lr.ph.i.i.i.i.i.i.i1205.preheader3670

.lr.ph.i.i.i.i.i.i.i1205.preheader3670:           ; preds = %.lr.ph.i.i.i.i.i.i.i1205.preheader, %middle.block3354
  %.012.i.i.i.i.i.i.i1206.ph = phi ptr [ %i.cro, %.lr.ph.i.i.i.i.i.i.i1205.preheader ], [ %i.crv, %middle.block3354 ]
  %.0911.i.i.i.i.i.i.i1207.ph = phi ptr [ %.sroa.01486.33, %.lr.ph.i.i.i.i.i.i.i1205.preheader ], [ %i.crw, %middle.block3354 ]
  br label %.lr.ph.i.i.i.i.i.i.i1205

.lr.ph.i.i.i.i.i.i.i1205:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1205.preheader3670, %.lr.ph.i.i.i.i.i.i.i1205
  %.012.i.i.i.i.i.i.i1206 = phi ptr [ %i.csd, %.lr.ph.i.i.i.i.i.i.i1205 ], [ %.012.i.i.i.i.i.i.i1206.ph, %.lr.ph.i.i.i.i.i.i.i1205.preheader3670 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1207 = phi ptr [ %i.csc, %.lr.ph.i.i.i.i.i.i.i1205 ], [ %.0911.i.i.i.i.i.i.i1207.ph, %.lr.ph.i.i.i.i.i.i.i1205.preheader3670 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.csb = load i64, ptr %.0911.i.i.i.i.i.i.i1207, align 8, !alias.scope !1293, !noalias !1290
  store i64 %i.csb, ptr %.012.i.i.i.i.i.i.i1206, align 8, !alias.scope !1290, !noalias !1293
  %i.csc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1207, i64 8 ; 2 uses
  %i.csd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1206, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1208 = icmp eq ptr %i.csc, %.sroa.289.33
  br i1 %.not.i.i.i.i.i.i.i1208, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1212, label %.lr.ph.i.i.i.i.i.i.i1205, !llvm.loop !1296

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1212: ; preds = %.lr.ph.i.i.i.i.i.i.i1205, %middle.block3354, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1201
  %.0.lcssa.i.i.i.i.i.i.i1210 = phi ptr [ %i.cro, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1201 ], [ %i.crv, %middle.block3354 ], [ %i.csd, %.lr.ph.i.i.i.i.i.i.i1205 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.33, i64 noundef %i.crg) #28
  %i.cse = getelementptr inbounds nuw [8 x i8], ptr %i.cro, i64 %i.crm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1213

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1213: ; preds = %bb.hs, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1212
  %.sroa.289.34 = phi ptr [ %i.cse, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1212 ], [ %.sroa.289.33, %bb.hs ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1210.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1210, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1212 ], [ %.sroa.100.33, %bb.hs ] ; 4 uses
  %.sroa.01486.34 = phi ptr [ %i.cro, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1212 ], [ %.sroa.01486.33, %bb.hs ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1210.pn3360 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1210.pn to i64 ; 2 uses
  %.sroa.100.34 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1210.pn, i64 8 ; 2 uses
  %i.csf = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.89, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.csg = icmp eq ptr %i.csf, null
  br i1 %i.csg, label %bb.hv, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1214, !prof !5

bb.hv:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1213
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1214

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1214: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1213, %bb.hv
  %i.csh = ptrtoint ptr %i.csf to i64             ; 2 uses
  %.not.i.i.i1215 = icmp eq ptr %.sroa.100.34, %.sroa.289.34
  br i1 %.not.i.i.i1215, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1214
  store i64 %i.csh, ptr %.sroa.100.34, align 8
  %i.csi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1210.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1228

bb.hx:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1214
  %i.csj = ptrtoint ptr %.sroa.289.34 to i64
  %i.csk = ptrtoint ptr %.sroa.01486.34 to i64    ; 3 uses
  %i.csl = sub i64 %i.csj, %i.csk                 ; 4 uses
  %i.csm = icmp eq i64 %i.csl, 9223372036854775800
  br i1 %i.csm, label %bb.hy, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1216

bb.hy:                                            ; preds = %bb.hx
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1216: ; preds = %bb.hx
  %i.csn = ashr exact i64 %i.csl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1217 = tail call i64 @llvm.umax.i64(i64 %i.csn, i64 1)
  %i.cso = add nsw i64 %.sroa.speculated.i.i.i.i.i1217, %i.csn ; 2 uses
  %i.csp = icmp ult i64 %i.cso, %i.csn
  %i.csq = tail call i64 @llvm.umin.i64(i64 %i.cso, i64 1152921504606846975)
  %i.csr = select i1 %i.csp, i64 1152921504606846975, i64 %i.csq ; 3 uses
  %.not.i.i.i.i.i1218 = icmp ne i64 %i.csr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1218)
  %i.css = shl nuw nsw i64 %i.csr, 3
  %i.cst = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.css) #27 ; 8 uses
  %i.csu = getelementptr inbounds nuw i8, ptr %i.cst, i64 %i.csl
  store i64 %i.csh, ptr %i.csu, align 8
  %.not10.i.i.i.i.i.i.i1219 = icmp eq ptr %.sroa.01486.34, %.sroa.289.34
  br i1 %.not10.i.i.i.i.i.i.i1219, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227, label %.lr.ph.i.i.i.i.i.i.i1220.preheader

.lr.ph.i.i.i.i.i.i.i1220.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1216
  %i.csv = ptrtoaddr ptr %i.cst to i64
  %i.csw = sub i64 %.0.lcssa.i.i.i.i.i.i.i1210.pn3360, %i.csk ; 2 uses
  %i.csx = lshr i64 %i.csw, 3
  %i.csy = add nuw nsw i64 %i.csx, 1              ; 2 uses
  %min.iters.check3362 = icmp ult i64 %i.csw, 56
  %i.csz = sub i64 %i.csv, %i.csk
  %diff.check3359 = icmp ult i64 %i.csz, 32
  %or.cond3635 = or i1 %min.iters.check3362, %diff.check3359
  br i1 %or.cond3635, label %.lr.ph.i.i.i.i.i.i.i1220.preheader3668, label %vector.ph3363

vector.ph3363:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1220.preheader
  %n.vec3365 = and i64 %i.csy, 4611686018427387900 ; 3 uses
  %i.cta = shl i64 %n.vec3365, 3                  ; 2 uses
  %i.ctb = getelementptr i8, ptr %i.cst, i64 %i.cta ; 2 uses
  %i.ctc = getelementptr i8, ptr %.sroa.01486.34, i64 %i.cta
  br label %vector.body3366

vector.body3366:                                  ; preds = %vector.body3366, %vector.ph3363
  %index3367 = phi i64 [ 0, %vector.ph3363 ], [ %index.next3372, %vector.body3366 ] ; 2 uses
  %i.ctd = shl i64 %index3367, 3                  ; 2 uses
  %next.gep3368 = getelementptr i8, ptr %i.cst, i64 %i.ctd ; 2 uses
  %next.gep3369 = getelementptr i8, ptr %.sroa.01486.34, i64 %i.ctd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %i.cte = getelementptr i8, ptr %next.gep3369, i64 16
  %wide.load3370 = load <2 x i64>, ptr %next.gep3369, align 8, !alias.scope !1300, !noalias !1297
  %wide.load3371 = load <2 x i64>, ptr %i.cte, align 8, !alias.scope !1300, !noalias !1297
  %i.ctf = getelementptr i8, ptr %next.gep3368, i64 16
  store <2 x i64> %wide.load3370, ptr %next.gep3368, align 8, !alias.scope !1297, !noalias !1300
  store <2 x i64> %wide.load3371, ptr %i.ctf, align 8, !alias.scope !1297, !noalias !1300
  %index.next3372 = add nuw i64 %index3367, 4     ; 2 uses
  %i.ctg = icmp eq i64 %index.next3372, %n.vec3365
  br i1 %i.ctg, label %middle.block3373, label %vector.body3366, !llvm.loop !1302

middle.block3373:                                 ; preds = %vector.body3366
  %cmp.n3374 = icmp eq i64 %i.csy, %n.vec3365
  br i1 %cmp.n3374, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227, label %.lr.ph.i.i.i.i.i.i.i1220.preheader3668

.lr.ph.i.i.i.i.i.i.i1220.preheader3668:           ; preds = %.lr.ph.i.i.i.i.i.i.i1220.preheader, %middle.block3373
  %.012.i.i.i.i.i.i.i1221.ph = phi ptr [ %i.cst, %.lr.ph.i.i.i.i.i.i.i1220.preheader ], [ %i.ctb, %middle.block3373 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1222.ph = phi ptr [ %.sroa.01486.34, %.lr.ph.i.i.i.i.i.i.i1220.preheader ], [ %i.ctc, %middle.block3373 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1222.ph3881 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1222.ph to i64
  %i.cth = sub i64 %.0.lcssa.i.i.i.i.i.i.i1210.pn3360, %.0911.i.i.i.i.i.i.i1222.ph3881 ; 2 uses
  %i.cti = lshr i64 %i.cth, 3
  %i.ctj = add nuw nsw i64 %i.cti, 1
  %xtraiter3882 = and i64 %i.ctj, 7               ; 2 uses
  %lcmp.mod3883.not = icmp eq i64 %xtraiter3882, 0
  br i1 %lcmp.mod3883.not, label %.lr.ph.i.i.i.i.i.i.i1220.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1220.prol

.lr.ph.i.i.i.i.i.i.i1220.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1220.preheader3668, %.lr.ph.i.i.i.i.i.i.i1220.prol
  %.012.i.i.i.i.i.i.i1221.prol = phi ptr [ %i.ctm, %.lr.ph.i.i.i.i.i.i.i1220.prol ], [ %.012.i.i.i.i.i.i.i1221.ph, %.lr.ph.i.i.i.i.i.i.i1220.preheader3668 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1222.prol = phi ptr [ %i.ctl, %.lr.ph.i.i.i.i.i.i.i1220.prol ], [ %.0911.i.i.i.i.i.i.i1222.ph, %.lr.ph.i.i.i.i.i.i.i1220.preheader3668 ] ; 2 uses
  %prol.iter3884 = phi i64 [ %prol.iter3884.next, %.lr.ph.i.i.i.i.i.i.i1220.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1220.preheader3668 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %i.ctk = load i64, ptr %.0911.i.i.i.i.i.i.i1222.prol, align 8, !alias.scope !1300, !noalias !1297
  store i64 %i.ctk, ptr %.012.i.i.i.i.i.i.i1221.prol, align 8, !alias.scope !1297, !noalias !1300
  %i.ctl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222.prol, i64 8 ; 2 uses
  %i.ctm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221.prol, i64 8 ; 3 uses
  %prol.iter3884.next = add i64 %prol.iter3884, 1 ; 2 uses
  %prol.iter3884.cmp.not = icmp eq i64 %prol.iter3884.next, %xtraiter3882
  br i1 %prol.iter3884.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1220.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1220.prol, !llvm.loop !1303

.lr.ph.i.i.i.i.i.i.i1220.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1220.prol, %.lr.ph.i.i.i.i.i.i.i1220.preheader3668
  %.lcssa3669.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1220.preheader3668 ], [ %i.ctm, %.lr.ph.i.i.i.i.i.i.i1220.prol ]
  %.012.i.i.i.i.i.i.i1221.unr = phi ptr [ %.012.i.i.i.i.i.i.i1221.ph, %.lr.ph.i.i.i.i.i.i.i1220.preheader3668 ], [ %i.ctm, %.lr.ph.i.i.i.i.i.i.i1220.prol ]
  %.0911.i.i.i.i.i.i.i1222.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1222.ph, %.lr.ph.i.i.i.i.i.i.i1220.preheader3668 ], [ %i.ctl, %.lr.ph.i.i.i.i.i.i.i1220.prol ]
  %i.ctn = icmp ult i64 %i.cth, 56
  br i1 %i.ctn, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227, label %.lr.ph.i.i.i.i.i.i.i1220

.lr.ph.i.i.i.i.i.i.i1220:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1220.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1220
  %.012.i.i.i.i.i.i.i1221 = phi ptr [ %i.cul, %.lr.ph.i.i.i.i.i.i.i1220 ], [ %.012.i.i.i.i.i.i.i1221.unr, %.lr.ph.i.i.i.i.i.i.i1220.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1222 = phi ptr [ %i.cuk, %.lr.ph.i.i.i.i.i.i.i1220 ], [ %.0911.i.i.i.i.i.i.i1222.unr, %.lr.ph.i.i.i.i.i.i.i1220.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %i.cto = load i64, ptr %.0911.i.i.i.i.i.i.i1222, align 8, !alias.scope !1300, !noalias !1297
  store i64 %i.cto, ptr %.012.i.i.i.i.i.i.i1221, align 8, !alias.scope !1297, !noalias !1300
  %i.ctp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222, i64 8
  %i.ctq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %i.ctr = load i64, ptr %i.ctp, align 8, !alias.scope !1306, !noalias !1304
  store i64 %i.ctr, ptr %i.ctq, align 8, !alias.scope !1304, !noalias !1306
  %i.cts = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222, i64 16
  %i.ctt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.ctu = load i64, ptr %i.cts, align 8, !alias.scope !1310, !noalias !1308
  store i64 %i.ctu, ptr %i.ctt, align 8, !alias.scope !1308, !noalias !1310
  %i.ctv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222, i64 24
  %i.ctw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  %i.ctx = load i64, ptr %i.ctv, align 8, !alias.scope !1314, !noalias !1312
  store i64 %i.ctx, ptr %i.ctw, align 8, !alias.scope !1312, !noalias !1314
  %i.cty = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222, i64 32
  %i.ctz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.cua = load i64, ptr %i.cty, align 8, !alias.scope !1318, !noalias !1316
  store i64 %i.cua, ptr %i.ctz, align 8, !alias.scope !1316, !noalias !1318
  %i.cub = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222, i64 40
  %i.cuc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.cud = load i64, ptr %i.cub, align 8, !alias.scope !1322, !noalias !1320
  store i64 %i.cud, ptr %i.cuc, align 8, !alias.scope !1320, !noalias !1322
  %i.cue = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222, i64 48
  %i.cuf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  %i.cug = load i64, ptr %i.cue, align 8, !alias.scope !1326, !noalias !1324
  store i64 %i.cug, ptr %i.cuf, align 8, !alias.scope !1324, !noalias !1326
  %i.cuh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222, i64 56 ; 2 uses
  %i.cui = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  %i.cuj = load i64, ptr %i.cuh, align 8, !alias.scope !1330, !noalias !1328
  store i64 %i.cuj, ptr %i.cui, align 8, !alias.scope !1328, !noalias !1330
  %i.cuk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1222, i64 64
  %i.cul = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1221, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1223.7 = icmp eq ptr %i.cuh, %.0.lcssa.i.i.i.i.i.i.i1210.pn
  br i1 %.not.i.i.i.i.i.i.i1223.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227, label %.lr.ph.i.i.i.i.i.i.i1220, !llvm.loop !1332

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227: ; preds = %.lr.ph.i.i.i.i.i.i.i1220.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1220, %middle.block3373, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1216
  %.0.lcssa.i.i.i.i.i.i.i1225 = phi ptr [ %i.cst, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1216 ], [ %i.ctb, %middle.block3373 ], [ %.lcssa3669.unr, %.lr.ph.i.i.i.i.i.i.i1220.prol.loopexit ], [ %i.cul, %.lr.ph.i.i.i.i.i.i.i1220 ]
  %i.cum = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1225, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.34, i64 noundef %i.csl) #28
  %i.cun = getelementptr inbounds nuw [8 x i8], ptr %i.cst, i64 %i.csr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1228

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1228: ; preds = %bb.hw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227
  %.sroa.289.35 = phi ptr [ %i.cun, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227 ], [ %.sroa.289.34, %bb.hw ] ; 5 uses
  %.sroa.100.35 = phi ptr [ %i.cum, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227 ], [ %i.csi, %bb.hw ] ; 3 uses
  %.sroa.01486.35 = phi ptr [ %i.cst, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1227 ], [ %.sroa.01486.34, %bb.hw ] ; 7 uses
  %i.cuo = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.90, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.cup = icmp eq ptr %i.cuo, null
  br i1 %i.cup, label %bb.hz, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1229, !prof !5

bb.hz:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1228
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1229

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1229: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1228, %bb.hz
  %i.cuq = ptrtoint ptr %i.cuo to i64             ; 2 uses
  %.not.i.i.i1230 = icmp eq ptr %.sroa.100.35, %.sroa.289.35
  br i1 %.not.i.i.i1230, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1229
  store i64 %i.cuq, ptr %.sroa.100.35, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1243

bb.ib:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1229
  %i.cur = ptrtoint ptr %.sroa.289.35 to i64      ; 2 uses
  %i.cus = ptrtoint ptr %.sroa.01486.35 to i64    ; 3 uses
  %i.cut = sub i64 %i.cur, %i.cus                 ; 4 uses
  %i.cuu = icmp eq i64 %i.cut, 9223372036854775800
  br i1 %i.cuu, label %bb.ic, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1231

bb.ic:                                            ; preds = %bb.ib
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1231: ; preds = %bb.ib
  %i.cuv = ashr exact i64 %i.cut, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1232 = tail call i64 @llvm.umax.i64(i64 %i.cuv, i64 1)
  %i.cuw = add nsw i64 %.sroa.speculated.i.i.i.i.i1232, %i.cuv ; 2 uses
  %i.cux = icmp ult i64 %i.cuw, %i.cuv
  %i.cuy = tail call i64 @llvm.umin.i64(i64 %i.cuw, i64 1152921504606846975)
  %i.cuz = select i1 %i.cux, i64 1152921504606846975, i64 %i.cuy ; 3 uses
  %.not.i.i.i.i.i1233 = icmp ne i64 %i.cuz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1233)
  %i.cva = shl nuw nsw i64 %i.cuz, 3
  %i.cvb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cva) #27 ; 8 uses
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.cvb, i64 %i.cut
  store i64 %i.cuq, ptr %i.cvc, align 8
  %.not10.i.i.i.i.i.i.i1234 = icmp eq ptr %.sroa.01486.35, %.sroa.289.35
  br i1 %.not10.i.i.i.i.i.i.i1234, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1242, label %.lr.ph.i.i.i.i.i.i.i1235.preheader

.lr.ph.i.i.i.i.i.i.i1235.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1231
  %i.cvd = ptrtoaddr ptr %i.cvb to i64
  %56 = sub i64 %i.cur, %i.cus
  %57 = add i64 %56, -8                           ; 2 uses
  %i.cve = lshr i64 %57, 3
  %i.cvf = add nuw nsw i64 %i.cve, 1              ; 2 uses
  %min.iters.check3380 = icmp ult i64 %57, 56
  %i.cvg = sub i64 %i.cvd, %i.cus
  %diff.check3378 = icmp ult i64 %i.cvg, 32
  %or.cond3636 = or i1 %min.iters.check3380, %diff.check3378
  br i1 %or.cond3636, label %.lr.ph.i.i.i.i.i.i.i1235.preheader3666, label %vector.ph3381

vector.ph3381:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1235.preheader
  %n.vec3383 = and i64 %i.cvf, 4611686018427387900 ; 3 uses
  %i.cvh = shl i64 %n.vec3383, 3                  ; 2 uses
  %i.cvi = getelementptr i8, ptr %i.cvb, i64 %i.cvh ; 2 uses
  %i.cvj = getelementptr i8, ptr %.sroa.01486.35, i64 %i.cvh
  br label %vector.body3384

vector.body3384:                                  ; preds = %vector.body3384, %vector.ph3381
  %index3385 = phi i64 [ 0, %vector.ph3381 ], [ %index.next3390, %vector.body3384 ] ; 2 uses
  %i.cvk = shl i64 %index3385, 3                  ; 2 uses
  %next.gep3386 = getelementptr i8, ptr %i.cvb, i64 %i.cvk ; 2 uses
  %next.gep3387 = getelementptr i8, ptr %.sroa.01486.35, i64 %i.cvk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.cvl = getelementptr i8, ptr %next.gep3387, i64 16
  %wide.load3388 = load <2 x i64>, ptr %next.gep3387, align 8, !alias.scope !1336, !noalias !1333
  %wide.load3389 = load <2 x i64>, ptr %i.cvl, align 8, !alias.scope !1336, !noalias !1333
  %i.cvm = getelementptr i8, ptr %next.gep3386, i64 16
  store <2 x i64> %wide.load3388, ptr %next.gep3386, align 8, !alias.scope !1333, !noalias !1336
  store <2 x i64> %wide.load3389, ptr %i.cvm, align 8, !alias.scope !1333, !noalias !1336
  %index.next3390 = add nuw i64 %index3385, 4     ; 2 uses
  %i.cvn = icmp eq i64 %index.next3390, %n.vec3383
  br i1 %i.cvn, label %middle.block3391, label %vector.body3384, !llvm.loop !1338

middle.block3391:                                 ; preds = %vector.body3384
  %cmp.n3392 = icmp eq i64 %i.cvf, %n.vec3383
  br i1 %cmp.n3392, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1242, label %.lr.ph.i.i.i.i.i.i.i1235.preheader3666

.lr.ph.i.i.i.i.i.i.i1235.preheader3666:           ; preds = %.lr.ph.i.i.i.i.i.i.i1235.preheader, %middle.block3391
  %.012.i.i.i.i.i.i.i1236.ph = phi ptr [ %i.cvb, %.lr.ph.i.i.i.i.i.i.i1235.preheader ], [ %i.cvi, %middle.block3391 ]
  %.0911.i.i.i.i.i.i.i1237.ph = phi ptr [ %.sroa.01486.35, %.lr.ph.i.i.i.i.i.i.i1235.preheader ], [ %i.cvj, %middle.block3391 ]
  br label %.lr.ph.i.i.i.i.i.i.i1235

.lr.ph.i.i.i.i.i.i.i1235:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1235.preheader3666, %.lr.ph.i.i.i.i.i.i.i1235
  %.012.i.i.i.i.i.i.i1236 = phi ptr [ %i.cvq, %.lr.ph.i.i.i.i.i.i.i1235 ], [ %.012.i.i.i.i.i.i.i1236.ph, %.lr.ph.i.i.i.i.i.i.i1235.preheader3666 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1237 = phi ptr [ %i.cvp, %.lr.ph.i.i.i.i.i.i.i1235 ], [ %.0911.i.i.i.i.i.i.i1237.ph, %.lr.ph.i.i.i.i.i.i.i1235.preheader3666 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.cvo = load i64, ptr %.0911.i.i.i.i.i.i.i1237, align 8, !alias.scope !1336, !noalias !1333
  store i64 %i.cvo, ptr %.012.i.i.i.i.i.i.i1236, align 8, !alias.scope !1333, !noalias !1336
  %i.cvp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1237, i64 8 ; 2 uses
  %i.cvq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1236, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1238 = icmp eq ptr %i.cvp, %.sroa.289.35
  br i1 %.not.i.i.i.i.i.i.i1238, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1242, label %.lr.ph.i.i.i.i.i.i.i1235, !llvm.loop !1339

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1242: ; preds = %.lr.ph.i.i.i.i.i.i.i1235, %middle.block3391, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1231
  %.0.lcssa.i.i.i.i.i.i.i1240 = phi ptr [ %i.cvb, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1231 ], [ %i.cvi, %middle.block3391 ], [ %i.cvq, %.lr.ph.i.i.i.i.i.i.i1235 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.35, i64 noundef %i.cut) #28
  %i.cvr = getelementptr inbounds nuw [8 x i8], ptr %i.cvb, i64 %i.cuz
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1243

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1243: ; preds = %bb.ia, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1242
  %.sroa.289.36 = phi ptr [ %i.cvr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1242 ], [ %.sroa.289.35, %bb.ia ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1240.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1240, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1242 ], [ %.sroa.100.35, %bb.ia ] ; 4 uses
  %.sroa.01486.36 = phi ptr [ %i.cvb, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1242 ], [ %.sroa.01486.35, %bb.ia ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1240.pn3397 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1240.pn to i64 ; 2 uses
  %.sroa.100.36 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1240.pn, i64 8 ; 2 uses
  %i.cvs = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.91, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.cvt = icmp eq ptr %i.cvs, null
  br i1 %i.cvt, label %bb.id, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1244, !prof !5

bb.id:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1243
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1244

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1244: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1243, %bb.id
  %i.cvu = ptrtoint ptr %i.cvs to i64             ; 2 uses
  %.not.i.i.i1245 = icmp eq ptr %.sroa.100.36, %.sroa.289.36
  br i1 %.not.i.i.i1245, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1244
  store i64 %i.cvu, ptr %.sroa.100.36, align 8
  %i.cvv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1240.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1258

bb.if:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1244
  %i.cvw = ptrtoint ptr %.sroa.289.36 to i64
  %i.cvx = ptrtoint ptr %.sroa.01486.36 to i64    ; 3 uses
  %i.cvy = sub i64 %i.cvw, %i.cvx                 ; 4 uses
  %i.cvz = icmp eq i64 %i.cvy, 9223372036854775800
  br i1 %i.cvz, label %bb.ig, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1246

bb.ig:                                            ; preds = %bb.if
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1246: ; preds = %bb.if
  %i.cwa = ashr exact i64 %i.cvy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1247 = tail call i64 @llvm.umax.i64(i64 %i.cwa, i64 1)
  %i.cwb = add nsw i64 %.sroa.speculated.i.i.i.i.i1247, %i.cwa ; 2 uses
  %i.cwc = icmp ult i64 %i.cwb, %i.cwa
  %i.cwd = tail call i64 @llvm.umin.i64(i64 %i.cwb, i64 1152921504606846975)
  %i.cwe = select i1 %i.cwc, i64 1152921504606846975, i64 %i.cwd ; 3 uses
  %.not.i.i.i.i.i1248 = icmp ne i64 %i.cwe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1248)
  %i.cwf = shl nuw nsw i64 %i.cwe, 3
  %i.cwg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cwf) #27 ; 8 uses
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwg, i64 %i.cvy
  store i64 %i.cvu, ptr %i.cwh, align 8
  %.not10.i.i.i.i.i.i.i1249 = icmp eq ptr %.sroa.01486.36, %.sroa.289.36
  br i1 %.not10.i.i.i.i.i.i.i1249, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257, label %.lr.ph.i.i.i.i.i.i.i1250.preheader

.lr.ph.i.i.i.i.i.i.i1250.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1246
  %i.cwi = ptrtoaddr ptr %i.cwg to i64
  %i.cwj = sub i64 %.0.lcssa.i.i.i.i.i.i.i1240.pn3397, %i.cvx ; 2 uses
  %i.cwk = lshr i64 %i.cwj, 3
  %i.cwl = add nuw nsw i64 %i.cwk, 1              ; 2 uses
  %min.iters.check3399 = icmp ult i64 %i.cwj, 56
  %i.cwm = sub i64 %i.cwi, %i.cvx
  %diff.check3396 = icmp ult i64 %i.cwm, 32
  %or.cond3637 = or i1 %min.iters.check3399, %diff.check3396
  br i1 %or.cond3637, label %.lr.ph.i.i.i.i.i.i.i1250.preheader3664, label %vector.ph3400

vector.ph3400:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1250.preheader
  %n.vec3402 = and i64 %i.cwl, 4611686018427387900 ; 3 uses
  %i.cwn = shl i64 %n.vec3402, 3                  ; 2 uses
  %i.cwo = getelementptr i8, ptr %i.cwg, i64 %i.cwn ; 2 uses
  %i.cwp = getelementptr i8, ptr %.sroa.01486.36, i64 %i.cwn
  br label %vector.body3403

vector.body3403:                                  ; preds = %vector.body3403, %vector.ph3400
  %index3404 = phi i64 [ 0, %vector.ph3400 ], [ %index.next3409, %vector.body3403 ] ; 2 uses
  %i.cwq = shl i64 %index3404, 3                  ; 2 uses
  %next.gep3405 = getelementptr i8, ptr %i.cwg, i64 %i.cwq ; 2 uses
  %next.gep3406 = getelementptr i8, ptr %.sroa.01486.36, i64 %i.cwq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %i.cwr = getelementptr i8, ptr %next.gep3406, i64 16
  %wide.load3407 = load <2 x i64>, ptr %next.gep3406, align 8, !alias.scope !1343, !noalias !1340
  %wide.load3408 = load <2 x i64>, ptr %i.cwr, align 8, !alias.scope !1343, !noalias !1340
  %i.cws = getelementptr i8, ptr %next.gep3405, i64 16
  store <2 x i64> %wide.load3407, ptr %next.gep3405, align 8, !alias.scope !1340, !noalias !1343
  store <2 x i64> %wide.load3408, ptr %i.cws, align 8, !alias.scope !1340, !noalias !1343
  %index.next3409 = add nuw i64 %index3404, 4     ; 2 uses
  %i.cwt = icmp eq i64 %index.next3409, %n.vec3402
  br i1 %i.cwt, label %middle.block3410, label %vector.body3403, !llvm.loop !1345

middle.block3410:                                 ; preds = %vector.body3403
  %cmp.n3411 = icmp eq i64 %i.cwl, %n.vec3402
  br i1 %cmp.n3411, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257, label %.lr.ph.i.i.i.i.i.i.i1250.preheader3664

.lr.ph.i.i.i.i.i.i.i1250.preheader3664:           ; preds = %.lr.ph.i.i.i.i.i.i.i1250.preheader, %middle.block3410
  %.012.i.i.i.i.i.i.i1251.ph = phi ptr [ %i.cwg, %.lr.ph.i.i.i.i.i.i.i1250.preheader ], [ %i.cwo, %middle.block3410 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1252.ph = phi ptr [ %.sroa.01486.36, %.lr.ph.i.i.i.i.i.i.i1250.preheader ], [ %i.cwp, %middle.block3410 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1252.ph3885 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1252.ph to i64
  %i.cwu = sub i64 %.0.lcssa.i.i.i.i.i.i.i1240.pn3397, %.0911.i.i.i.i.i.i.i1252.ph3885 ; 2 uses
  %i.cwv = lshr i64 %i.cwu, 3
  %i.cww = add nuw nsw i64 %i.cwv, 1
  %xtraiter3886 = and i64 %i.cww, 7               ; 2 uses
  %lcmp.mod3887.not = icmp eq i64 %xtraiter3886, 0
  br i1 %lcmp.mod3887.not, label %.lr.ph.i.i.i.i.i.i.i1250.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1250.prol

.lr.ph.i.i.i.i.i.i.i1250.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1250.preheader3664, %.lr.ph.i.i.i.i.i.i.i1250.prol
  %.012.i.i.i.i.i.i.i1251.prol = phi ptr [ %i.cwz, %.lr.ph.i.i.i.i.i.i.i1250.prol ], [ %.012.i.i.i.i.i.i.i1251.ph, %.lr.ph.i.i.i.i.i.i.i1250.preheader3664 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1252.prol = phi ptr [ %i.cwy, %.lr.ph.i.i.i.i.i.i.i1250.prol ], [ %.0911.i.i.i.i.i.i.i1252.ph, %.lr.ph.i.i.i.i.i.i.i1250.preheader3664 ] ; 2 uses
  %prol.iter3888 = phi i64 [ %prol.iter3888.next, %.lr.ph.i.i.i.i.i.i.i1250.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1250.preheader3664 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %i.cwx = load i64, ptr %.0911.i.i.i.i.i.i.i1252.prol, align 8, !alias.scope !1343, !noalias !1340
  store i64 %i.cwx, ptr %.012.i.i.i.i.i.i.i1251.prol, align 8, !alias.scope !1340, !noalias !1343
  %i.cwy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252.prol, i64 8 ; 2 uses
  %i.cwz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251.prol, i64 8 ; 3 uses
  %prol.iter3888.next = add i64 %prol.iter3888, 1 ; 2 uses
  %prol.iter3888.cmp.not = icmp eq i64 %prol.iter3888.next, %xtraiter3886
  br i1 %prol.iter3888.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1250.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1250.prol, !llvm.loop !1346

.lr.ph.i.i.i.i.i.i.i1250.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1250.prol, %.lr.ph.i.i.i.i.i.i.i1250.preheader3664
  %.lcssa3665.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1250.preheader3664 ], [ %i.cwz, %.lr.ph.i.i.i.i.i.i.i1250.prol ]
  %.012.i.i.i.i.i.i.i1251.unr = phi ptr [ %.012.i.i.i.i.i.i.i1251.ph, %.lr.ph.i.i.i.i.i.i.i1250.preheader3664 ], [ %i.cwz, %.lr.ph.i.i.i.i.i.i.i1250.prol ]
  %.0911.i.i.i.i.i.i.i1252.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1252.ph, %.lr.ph.i.i.i.i.i.i.i1250.preheader3664 ], [ %i.cwy, %.lr.ph.i.i.i.i.i.i.i1250.prol ]
  %i.cxa = icmp ult i64 %i.cwu, 56
  br i1 %i.cxa, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257, label %.lr.ph.i.i.i.i.i.i.i1250

.lr.ph.i.i.i.i.i.i.i1250:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1250.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1250
  %.012.i.i.i.i.i.i.i1251 = phi ptr [ %i.cxy, %.lr.ph.i.i.i.i.i.i.i1250 ], [ %.012.i.i.i.i.i.i.i1251.unr, %.lr.ph.i.i.i.i.i.i.i1250.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1252 = phi ptr [ %i.cxx, %.lr.ph.i.i.i.i.i.i.i1250 ], [ %.0911.i.i.i.i.i.i.i1252.unr, %.lr.ph.i.i.i.i.i.i.i1250.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %i.cxb = load i64, ptr %.0911.i.i.i.i.i.i.i1252, align 8, !alias.scope !1343, !noalias !1340
  store i64 %i.cxb, ptr %.012.i.i.i.i.i.i.i1251, align 8, !alias.scope !1340, !noalias !1343
  %i.cxc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252, i64 8
  %i.cxd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.cxe = load i64, ptr %i.cxc, align 8, !alias.scope !1349, !noalias !1347
  store i64 %i.cxe, ptr %i.cxd, align 8, !alias.scope !1347, !noalias !1349
  %i.cxf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252, i64 16
  %i.cxg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.cxh = load i64, ptr %i.cxf, align 8, !alias.scope !1353, !noalias !1351
  store i64 %i.cxh, ptr %i.cxg, align 8, !alias.scope !1351, !noalias !1353
  %i.cxi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252, i64 24
  %i.cxj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.cxk = load i64, ptr %i.cxi, align 8, !alias.scope !1357, !noalias !1355
  store i64 %i.cxk, ptr %i.cxj, align 8, !alias.scope !1355, !noalias !1357
  %i.cxl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252, i64 32
  %i.cxm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.cxn = load i64, ptr %i.cxl, align 8, !alias.scope !1361, !noalias !1359
  store i64 %i.cxn, ptr %i.cxm, align 8, !alias.scope !1359, !noalias !1361
  %i.cxo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252, i64 40
  %i.cxp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.cxq = load i64, ptr %i.cxo, align 8, !alias.scope !1365, !noalias !1363
  store i64 %i.cxq, ptr %i.cxp, align 8, !alias.scope !1363, !noalias !1365
  %i.cxr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252, i64 48
  %i.cxs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.cxt = load i64, ptr %i.cxr, align 8, !alias.scope !1369, !noalias !1367
  store i64 %i.cxt, ptr %i.cxs, align 8, !alias.scope !1367, !noalias !1369
  %i.cxu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252, i64 56 ; 2 uses
  %i.cxv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.cxw = load i64, ptr %i.cxu, align 8, !alias.scope !1373, !noalias !1371
  store i64 %i.cxw, ptr %i.cxv, align 8, !alias.scope !1371, !noalias !1373
  %i.cxx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1252, i64 64
  %i.cxy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1251, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1253.7 = icmp eq ptr %i.cxu, %.0.lcssa.i.i.i.i.i.i.i1240.pn
  br i1 %.not.i.i.i.i.i.i.i1253.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257, label %.lr.ph.i.i.i.i.i.i.i1250, !llvm.loop !1375

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257: ; preds = %.lr.ph.i.i.i.i.i.i.i1250.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1250, %middle.block3410, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1246
  %.0.lcssa.i.i.i.i.i.i.i1255 = phi ptr [ %i.cwg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1246 ], [ %i.cwo, %middle.block3410 ], [ %.lcssa3665.unr, %.lr.ph.i.i.i.i.i.i.i1250.prol.loopexit ], [ %i.cxy, %.lr.ph.i.i.i.i.i.i.i1250 ]
  %i.cxz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1255, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.36, i64 noundef %i.cvy) #28
  %i.cya = getelementptr inbounds nuw [8 x i8], ptr %i.cwg, i64 %i.cwe
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1258

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1258: ; preds = %bb.ie, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257
  %.sroa.289.37 = phi ptr [ %i.cya, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257 ], [ %.sroa.289.36, %bb.ie ] ; 5 uses
  %.sroa.100.37 = phi ptr [ %i.cxz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257 ], [ %i.cvv, %bb.ie ] ; 3 uses
  %.sroa.01486.37 = phi ptr [ %i.cwg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1257 ], [ %.sroa.01486.36, %bb.ie ] ; 7 uses
  %i.cyb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.92, i32 noundef 1, i32 noundef 4) #25 ; 2 uses
  %i.cyc = icmp eq ptr %i.cyb, null
  br i1 %i.cyc, label %bb.ih, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1259, !prof !5

bb.ih:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1258
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1259

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1259: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1258, %bb.ih
  %i.cyd = ptrtoint ptr %i.cyb to i64             ; 2 uses
  %.not.i.i.i1260 = icmp eq ptr %.sroa.100.37, %.sroa.289.37
  br i1 %.not.i.i.i1260, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1259
  store i64 %i.cyd, ptr %.sroa.100.37, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1273

bb.ij:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1259
  %i.cye = ptrtoint ptr %.sroa.289.37 to i64      ; 2 uses
  %i.cyf = ptrtoint ptr %.sroa.01486.37 to i64    ; 3 uses
  %i.cyg = sub i64 %i.cye, %i.cyf                 ; 4 uses
  %i.cyh = icmp eq i64 %i.cyg, 9223372036854775800
  br i1 %i.cyh, label %bb.ik, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1261

bb.ik:                                            ; preds = %bb.ij
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1261: ; preds = %bb.ij
  %i.cyi = ashr exact i64 %i.cyg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1262 = tail call i64 @llvm.umax.i64(i64 %i.cyi, i64 1)
  %i.cyj = add nsw i64 %.sroa.speculated.i.i.i.i.i1262, %i.cyi ; 2 uses
  %i.cyk = icmp ult i64 %i.cyj, %i.cyi
  %i.cyl = tail call i64 @llvm.umin.i64(i64 %i.cyj, i64 1152921504606846975)
  %i.cym = select i1 %i.cyk, i64 1152921504606846975, i64 %i.cyl ; 3 uses
  %.not.i.i.i.i.i1263 = icmp ne i64 %i.cym, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1263)
  %i.cyn = shl nuw nsw i64 %i.cym, 3
  %i.cyo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cyn) #27 ; 8 uses
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cyo, i64 %i.cyg
  store i64 %i.cyd, ptr %i.cyp, align 8
  %.not10.i.i.i.i.i.i.i1264 = icmp eq ptr %.sroa.01486.37, %.sroa.289.37
  br i1 %.not10.i.i.i.i.i.i.i1264, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1272, label %.lr.ph.i.i.i.i.i.i.i1265.preheader

.lr.ph.i.i.i.i.i.i.i1265.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1261
  %i.cyq = ptrtoaddr ptr %i.cyo to i64
  %58 = sub i64 %i.cye, %i.cyf
  %59 = add i64 %58, -8                           ; 2 uses
  %i.cyr = lshr i64 %59, 3
  %i.cys = add nuw nsw i64 %i.cyr, 1              ; 2 uses
  %min.iters.check3417 = icmp ult i64 %59, 56
  %i.cyt = sub i64 %i.cyq, %i.cyf
  %diff.check3415 = icmp ult i64 %i.cyt, 32
  %or.cond3638 = or i1 %min.iters.check3417, %diff.check3415
  br i1 %or.cond3638, label %.lr.ph.i.i.i.i.i.i.i1265.preheader3662, label %vector.ph3418

vector.ph3418:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1265.preheader
  %n.vec3420 = and i64 %i.cys, 4611686018427387900 ; 3 uses
  %i.cyu = shl i64 %n.vec3420, 3                  ; 2 uses
  %i.cyv = getelementptr i8, ptr %i.cyo, i64 %i.cyu ; 2 uses
  %i.cyw = getelementptr i8, ptr %.sroa.01486.37, i64 %i.cyu
  br label %vector.body3421

vector.body3421:                                  ; preds = %vector.body3421, %vector.ph3418
  %index3422 = phi i64 [ 0, %vector.ph3418 ], [ %index.next3427, %vector.body3421 ] ; 2 uses
  %i.cyx = shl i64 %index3422, 3                  ; 2 uses
  %next.gep3423 = getelementptr i8, ptr %i.cyo, i64 %i.cyx ; 2 uses
  %next.gep3424 = getelementptr i8, ptr %.sroa.01486.37, i64 %i.cyx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.cyy = getelementptr i8, ptr %next.gep3424, i64 16
  %wide.load3425 = load <2 x i64>, ptr %next.gep3424, align 8, !alias.scope !1379, !noalias !1376
  %wide.load3426 = load <2 x i64>, ptr %i.cyy, align 8, !alias.scope !1379, !noalias !1376
  %i.cyz = getelementptr i8, ptr %next.gep3423, i64 16
  store <2 x i64> %wide.load3425, ptr %next.gep3423, align 8, !alias.scope !1376, !noalias !1379
  store <2 x i64> %wide.load3426, ptr %i.cyz, align 8, !alias.scope !1376, !noalias !1379
  %index.next3427 = add nuw i64 %index3422, 4     ; 2 uses
  %i.cza = icmp eq i64 %index.next3427, %n.vec3420
  br i1 %i.cza, label %middle.block3428, label %vector.body3421, !llvm.loop !1381

middle.block3428:                                 ; preds = %vector.body3421
  %cmp.n3429 = icmp eq i64 %i.cys, %n.vec3420
  br i1 %cmp.n3429, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1272, label %.lr.ph.i.i.i.i.i.i.i1265.preheader3662

.lr.ph.i.i.i.i.i.i.i1265.preheader3662:           ; preds = %.lr.ph.i.i.i.i.i.i.i1265.preheader, %middle.block3428
  %.012.i.i.i.i.i.i.i1266.ph = phi ptr [ %i.cyo, %.lr.ph.i.i.i.i.i.i.i1265.preheader ], [ %i.cyv, %middle.block3428 ]
  %.0911.i.i.i.i.i.i.i1267.ph = phi ptr [ %.sroa.01486.37, %.lr.ph.i.i.i.i.i.i.i1265.preheader ], [ %i.cyw, %middle.block3428 ]
  br label %.lr.ph.i.i.i.i.i.i.i1265

.lr.ph.i.i.i.i.i.i.i1265:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1265.preheader3662, %.lr.ph.i.i.i.i.i.i.i1265
  %.012.i.i.i.i.i.i.i1266 = phi ptr [ %i.czd, %.lr.ph.i.i.i.i.i.i.i1265 ], [ %.012.i.i.i.i.i.i.i1266.ph, %.lr.ph.i.i.i.i.i.i.i1265.preheader3662 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1267 = phi ptr [ %i.czc, %.lr.ph.i.i.i.i.i.i.i1265 ], [ %.0911.i.i.i.i.i.i.i1267.ph, %.lr.ph.i.i.i.i.i.i.i1265.preheader3662 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.czb = load i64, ptr %.0911.i.i.i.i.i.i.i1267, align 8, !alias.scope !1379, !noalias !1376
  store i64 %i.czb, ptr %.012.i.i.i.i.i.i.i1266, align 8, !alias.scope !1376, !noalias !1379
  %i.czc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1267, i64 8 ; 2 uses
  %i.czd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1266, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1268 = icmp eq ptr %i.czc, %.sroa.289.37
  br i1 %.not.i.i.i.i.i.i.i1268, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1272, label %.lr.ph.i.i.i.i.i.i.i1265, !llvm.loop !1382

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1272: ; preds = %.lr.ph.i.i.i.i.i.i.i1265, %middle.block3428, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1261
  %.0.lcssa.i.i.i.i.i.i.i1270 = phi ptr [ %i.cyo, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1261 ], [ %i.cyv, %middle.block3428 ], [ %i.czd, %.lr.ph.i.i.i.i.i.i.i1265 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.37, i64 noundef %i.cyg) #28
  %i.cze = getelementptr inbounds nuw [8 x i8], ptr %i.cyo, i64 %i.cym
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1273

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1273: ; preds = %bb.ii, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1272
  %.sroa.289.38 = phi ptr [ %i.cze, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1272 ], [ %.sroa.289.37, %bb.ii ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1270.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1270, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1272 ], [ %.sroa.100.37, %bb.ii ] ; 4 uses
  %.sroa.01486.38 = phi ptr [ %i.cyo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1272 ], [ %.sroa.01486.37, %bb.ii ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1270.pn3434 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1270.pn to i64 ; 2 uses
  %.sroa.100.38 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1270.pn, i64 8 ; 2 uses
  %i.czf = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.93, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.czg = icmp eq ptr %i.czf, null
  br i1 %i.czg, label %bb.il, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1274, !prof !5

bb.il:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1273
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1274

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1274: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1273, %bb.il
  %i.czh = ptrtoint ptr %i.czf to i64             ; 2 uses
  %.not.i.i.i1275 = icmp eq ptr %.sroa.100.38, %.sroa.289.38
  br i1 %.not.i.i.i1275, label %bb.in, label %bb.im

bb.im:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1274
  store i64 %i.czh, ptr %.sroa.100.38, align 8
  %i.czi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1270.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1288

bb.in:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1274
  %i.czj = ptrtoint ptr %.sroa.289.38 to i64
  %i.czk = ptrtoint ptr %.sroa.01486.38 to i64    ; 3 uses
  %i.czl = sub i64 %i.czj, %i.czk                 ; 4 uses
  %i.czm = icmp eq i64 %i.czl, 9223372036854775800
  br i1 %i.czm, label %bb.io, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1276

bb.io:                                            ; preds = %bb.in
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1276: ; preds = %bb.in
  %i.czn = ashr exact i64 %i.czl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1277 = tail call i64 @llvm.umax.i64(i64 %i.czn, i64 1)
  %i.czo = add nsw i64 %.sroa.speculated.i.i.i.i.i1277, %i.czn ; 2 uses
  %i.czp = icmp ult i64 %i.czo, %i.czn
  %i.czq = tail call i64 @llvm.umin.i64(i64 %i.czo, i64 1152921504606846975)
  %i.czr = select i1 %i.czp, i64 1152921504606846975, i64 %i.czq ; 3 uses
  %.not.i.i.i.i.i1278 = icmp ne i64 %i.czr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1278)
  %i.czs = shl nuw nsw i64 %i.czr, 3
  %i.czt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.czs) #27 ; 8 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czt, i64 %i.czl
  store i64 %i.czh, ptr %i.czu, align 8
  %.not10.i.i.i.i.i.i.i1279 = icmp eq ptr %.sroa.01486.38, %.sroa.289.38
  br i1 %.not10.i.i.i.i.i.i.i1279, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287, label %.lr.ph.i.i.i.i.i.i.i1280.preheader

.lr.ph.i.i.i.i.i.i.i1280.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1276
  %i.czv = ptrtoaddr ptr %i.czt to i64
  %i.czw = sub i64 %.0.lcssa.i.i.i.i.i.i.i1270.pn3434, %i.czk ; 2 uses
  %i.czx = lshr i64 %i.czw, 3
  %i.czy = add nuw nsw i64 %i.czx, 1              ; 2 uses
  %min.iters.check3436 = icmp ult i64 %i.czw, 56
  %i.czz = sub i64 %i.czv, %i.czk
  %diff.check3433 = icmp ult i64 %i.czz, 32
  %or.cond3639 = or i1 %min.iters.check3436, %diff.check3433
  br i1 %or.cond3639, label %.lr.ph.i.i.i.i.i.i.i1280.preheader3660, label %vector.ph3437

vector.ph3437:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1280.preheader
  %n.vec3439 = and i64 %i.czy, 4611686018427387900 ; 3 uses
  %i.daa = shl i64 %n.vec3439, 3                  ; 2 uses
  %i.dab = getelementptr i8, ptr %i.czt, i64 %i.daa ; 2 uses
  %i.dac = getelementptr i8, ptr %.sroa.01486.38, i64 %i.daa
  br label %vector.body3440

vector.body3440:                                  ; preds = %vector.body3440, %vector.ph3437
  %index3441 = phi i64 [ 0, %vector.ph3437 ], [ %index.next3446, %vector.body3440 ] ; 2 uses
  %i.dad = shl i64 %index3441, 3                  ; 2 uses
  %next.gep3442 = getelementptr i8, ptr %i.czt, i64 %i.dad ; 2 uses
  %next.gep3443 = getelementptr i8, ptr %.sroa.01486.38, i64 %i.dad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.dae = getelementptr i8, ptr %next.gep3443, i64 16
  %wide.load3444 = load <2 x i64>, ptr %next.gep3443, align 8, !alias.scope !1386, !noalias !1383
  %wide.load3445 = load <2 x i64>, ptr %i.dae, align 8, !alias.scope !1386, !noalias !1383
  %i.daf = getelementptr i8, ptr %next.gep3442, i64 16
  store <2 x i64> %wide.load3444, ptr %next.gep3442, align 8, !alias.scope !1383, !noalias !1386
  store <2 x i64> %wide.load3445, ptr %i.daf, align 8, !alias.scope !1383, !noalias !1386
  %index.next3446 = add nuw i64 %index3441, 4     ; 2 uses
  %i.dag = icmp eq i64 %index.next3446, %n.vec3439
  br i1 %i.dag, label %middle.block3447, label %vector.body3440, !llvm.loop !1388

middle.block3447:                                 ; preds = %vector.body3440
  %cmp.n3448 = icmp eq i64 %i.czy, %n.vec3439
  br i1 %cmp.n3448, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287, label %.lr.ph.i.i.i.i.i.i.i1280.preheader3660

.lr.ph.i.i.i.i.i.i.i1280.preheader3660:           ; preds = %.lr.ph.i.i.i.i.i.i.i1280.preheader, %middle.block3447
  %.012.i.i.i.i.i.i.i1281.ph = phi ptr [ %i.czt, %.lr.ph.i.i.i.i.i.i.i1280.preheader ], [ %i.dab, %middle.block3447 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1282.ph = phi ptr [ %.sroa.01486.38, %.lr.ph.i.i.i.i.i.i.i1280.preheader ], [ %i.dac, %middle.block3447 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1282.ph3889 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1282.ph to i64
  %i.dah = sub i64 %.0.lcssa.i.i.i.i.i.i.i1270.pn3434, %.0911.i.i.i.i.i.i.i1282.ph3889 ; 2 uses
  %i.dai = lshr i64 %i.dah, 3
  %i.daj = add nuw nsw i64 %i.dai, 1
  %xtraiter3890 = and i64 %i.daj, 7               ; 2 uses
  %lcmp.mod3891.not = icmp eq i64 %xtraiter3890, 0
  br i1 %lcmp.mod3891.not, label %.lr.ph.i.i.i.i.i.i.i1280.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1280.prol

.lr.ph.i.i.i.i.i.i.i1280.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1280.preheader3660, %.lr.ph.i.i.i.i.i.i.i1280.prol
  %.012.i.i.i.i.i.i.i1281.prol = phi ptr [ %i.dam, %.lr.ph.i.i.i.i.i.i.i1280.prol ], [ %.012.i.i.i.i.i.i.i1281.ph, %.lr.ph.i.i.i.i.i.i.i1280.preheader3660 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1282.prol = phi ptr [ %i.dal, %.lr.ph.i.i.i.i.i.i.i1280.prol ], [ %.0911.i.i.i.i.i.i.i1282.ph, %.lr.ph.i.i.i.i.i.i.i1280.preheader3660 ] ; 2 uses
  %prol.iter3892 = phi i64 [ %prol.iter3892.next, %.lr.ph.i.i.i.i.i.i.i1280.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1280.preheader3660 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.dak = load i64, ptr %.0911.i.i.i.i.i.i.i1282.prol, align 8, !alias.scope !1386, !noalias !1383
  store i64 %i.dak, ptr %.012.i.i.i.i.i.i.i1281.prol, align 8, !alias.scope !1383, !noalias !1386
  %i.dal = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282.prol, i64 8 ; 2 uses
  %i.dam = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281.prol, i64 8 ; 3 uses
  %prol.iter3892.next = add i64 %prol.iter3892, 1 ; 2 uses
  %prol.iter3892.cmp.not = icmp eq i64 %prol.iter3892.next, %xtraiter3890
  br i1 %prol.iter3892.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1280.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1280.prol, !llvm.loop !1389

.lr.ph.i.i.i.i.i.i.i1280.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1280.prol, %.lr.ph.i.i.i.i.i.i.i1280.preheader3660
  %.lcssa3661.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1280.preheader3660 ], [ %i.dam, %.lr.ph.i.i.i.i.i.i.i1280.prol ]
  %.012.i.i.i.i.i.i.i1281.unr = phi ptr [ %.012.i.i.i.i.i.i.i1281.ph, %.lr.ph.i.i.i.i.i.i.i1280.preheader3660 ], [ %i.dam, %.lr.ph.i.i.i.i.i.i.i1280.prol ]
  %.0911.i.i.i.i.i.i.i1282.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1282.ph, %.lr.ph.i.i.i.i.i.i.i1280.preheader3660 ], [ %i.dal, %.lr.ph.i.i.i.i.i.i.i1280.prol ]
  %i.dan = icmp ult i64 %i.dah, 56
  br i1 %i.dan, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287, label %.lr.ph.i.i.i.i.i.i.i1280

.lr.ph.i.i.i.i.i.i.i1280:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1280.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1280
  %.012.i.i.i.i.i.i.i1281 = phi ptr [ %i.dbl, %.lr.ph.i.i.i.i.i.i.i1280 ], [ %.012.i.i.i.i.i.i.i1281.unr, %.lr.ph.i.i.i.i.i.i.i1280.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1282 = phi ptr [ %i.dbk, %.lr.ph.i.i.i.i.i.i.i1280 ], [ %.0911.i.i.i.i.i.i.i1282.unr, %.lr.ph.i.i.i.i.i.i.i1280.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.dao = load i64, ptr %.0911.i.i.i.i.i.i.i1282, align 8, !alias.scope !1386, !noalias !1383
  store i64 %i.dao, ptr %.012.i.i.i.i.i.i.i1281, align 8, !alias.scope !1383, !noalias !1386
  %i.dap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282, i64 8
  %i.daq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.dar = load i64, ptr %i.dap, align 8, !alias.scope !1392, !noalias !1390
  store i64 %i.dar, ptr %i.daq, align 8, !alias.scope !1390, !noalias !1392
  %i.das = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282, i64 16
  %i.dat = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.dau = load i64, ptr %i.das, align 8, !alias.scope !1396, !noalias !1394
  store i64 %i.dau, ptr %i.dat, align 8, !alias.scope !1394, !noalias !1396
  %i.dav = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282, i64 24
  %i.daw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.dax = load i64, ptr %i.dav, align 8, !alias.scope !1400, !noalias !1398
  store i64 %i.dax, ptr %i.daw, align 8, !alias.scope !1398, !noalias !1400
  %i.day = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282, i64 32
  %i.daz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.dba = load i64, ptr %i.day, align 8, !alias.scope !1404, !noalias !1402
  store i64 %i.dba, ptr %i.daz, align 8, !alias.scope !1402, !noalias !1404
  %i.dbb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282, i64 40
  %i.dbc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.dbd = load i64, ptr %i.dbb, align 8, !alias.scope !1408, !noalias !1406
  store i64 %i.dbd, ptr %i.dbc, align 8, !alias.scope !1406, !noalias !1408
  %i.dbe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282, i64 48
  %i.dbf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.dbg = load i64, ptr %i.dbe, align 8, !alias.scope !1412, !noalias !1410
  store i64 %i.dbg, ptr %i.dbf, align 8, !alias.scope !1410, !noalias !1412
  %i.dbh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282, i64 56 ; 2 uses
  %i.dbi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.dbj = load i64, ptr %i.dbh, align 8, !alias.scope !1416, !noalias !1414
  store i64 %i.dbj, ptr %i.dbi, align 8, !alias.scope !1414, !noalias !1416
  %i.dbk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1282, i64 64
  %i.dbl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1281, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1283.7 = icmp eq ptr %i.dbh, %.0.lcssa.i.i.i.i.i.i.i1270.pn
  br i1 %.not.i.i.i.i.i.i.i1283.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287, label %.lr.ph.i.i.i.i.i.i.i1280, !llvm.loop !1418

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287: ; preds = %.lr.ph.i.i.i.i.i.i.i1280.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1280, %middle.block3447, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1276
  %.0.lcssa.i.i.i.i.i.i.i1285 = phi ptr [ %i.czt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1276 ], [ %i.dab, %middle.block3447 ], [ %.lcssa3661.unr, %.lr.ph.i.i.i.i.i.i.i1280.prol.loopexit ], [ %i.dbl, %.lr.ph.i.i.i.i.i.i.i1280 ]
  %i.dbm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1285, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.38, i64 noundef %i.czl) #28
  %i.dbn = getelementptr inbounds nuw [8 x i8], ptr %i.czt, i64 %i.czr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1288

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1288: ; preds = %bb.im, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287
  %.sroa.289.39 = phi ptr [ %i.dbn, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287 ], [ %.sroa.289.38, %bb.im ] ; 5 uses
  %.sroa.100.39 = phi ptr [ %i.dbm, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287 ], [ %i.czi, %bb.im ] ; 3 uses
  %.sroa.01486.39 = phi ptr [ %i.czt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1287 ], [ %.sroa.01486.38, %bb.im ] ; 7 uses
  %i.dbo = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.94, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.dbp = icmp eq ptr %i.dbo, null
  br i1 %i.dbp, label %bb.ip, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1289, !prof !5

bb.ip:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1288
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1289

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1289: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1288, %bb.ip
  %i.dbq = ptrtoint ptr %i.dbo to i64             ; 2 uses
  %.not.i.i.i1290 = icmp eq ptr %.sroa.100.39, %.sroa.289.39
  br i1 %.not.i.i.i1290, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1289
  store i64 %i.dbq, ptr %.sroa.100.39, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1303

bb.ir:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1289
  %i.dbr = ptrtoint ptr %.sroa.289.39 to i64      ; 2 uses
  %i.dbs = ptrtoint ptr %.sroa.01486.39 to i64    ; 3 uses
  %i.dbt = sub i64 %i.dbr, %i.dbs                 ; 4 uses
  %i.dbu = icmp eq i64 %i.dbt, 9223372036854775800
  br i1 %i.dbu, label %bb.is, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1291

bb.is:                                            ; preds = %bb.ir
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1291: ; preds = %bb.ir
  %i.dbv = ashr exact i64 %i.dbt, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1292 = tail call i64 @llvm.umax.i64(i64 %i.dbv, i64 1)
  %i.dbw = add nsw i64 %.sroa.speculated.i.i.i.i.i1292, %i.dbv ; 2 uses
  %i.dbx = icmp ult i64 %i.dbw, %i.dbv
  %i.dby = tail call i64 @llvm.umin.i64(i64 %i.dbw, i64 1152921504606846975)
  %i.dbz = select i1 %i.dbx, i64 1152921504606846975, i64 %i.dby ; 3 uses
  %.not.i.i.i.i.i1293 = icmp ne i64 %i.dbz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1293)
  %i.dca = shl nuw nsw i64 %i.dbz, 3
  %i.dcb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dca) #27 ; 8 uses
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.dcb, i64 %i.dbt
  store i64 %i.dbq, ptr %i.dcc, align 8
  %.not10.i.i.i.i.i.i.i1294 = icmp eq ptr %.sroa.01486.39, %.sroa.289.39
  br i1 %.not10.i.i.i.i.i.i.i1294, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1302, label %.lr.ph.i.i.i.i.i.i.i1295.preheader

.lr.ph.i.i.i.i.i.i.i1295.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1291
  %i.dcd = ptrtoaddr ptr %i.dcb to i64
  %60 = sub i64 %i.dbr, %i.dbs
  %61 = add i64 %60, -8                           ; 2 uses
  %i.dce = lshr i64 %61, 3
  %i.dcf = add nuw nsw i64 %i.dce, 1              ; 2 uses
  %min.iters.check3454 = icmp ult i64 %61, 56
  %i.dcg = sub i64 %i.dcd, %i.dbs
  %diff.check3452 = icmp ult i64 %i.dcg, 32
  %or.cond3640 = or i1 %min.iters.check3454, %diff.check3452
  br i1 %or.cond3640, label %.lr.ph.i.i.i.i.i.i.i1295.preheader3658, label %vector.ph3455

vector.ph3455:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1295.preheader
  %n.vec3457 = and i64 %i.dcf, 4611686018427387900 ; 3 uses
  %i.dch = shl i64 %n.vec3457, 3                  ; 2 uses
  %i.dci = getelementptr i8, ptr %i.dcb, i64 %i.dch ; 2 uses
  %i.dcj = getelementptr i8, ptr %.sroa.01486.39, i64 %i.dch
  br label %vector.body3458

vector.body3458:                                  ; preds = %vector.body3458, %vector.ph3455
  %index3459 = phi i64 [ 0, %vector.ph3455 ], [ %index.next3464, %vector.body3458 ] ; 2 uses
  %i.dck = shl i64 %index3459, 3                  ; 2 uses
  %next.gep3460 = getelementptr i8, ptr %i.dcb, i64 %i.dck ; 2 uses
  %next.gep3461 = getelementptr i8, ptr %.sroa.01486.39, i64 %i.dck ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.dcl = getelementptr i8, ptr %next.gep3461, i64 16
  %wide.load3462 = load <2 x i64>, ptr %next.gep3461, align 8, !alias.scope !1422, !noalias !1419
  %wide.load3463 = load <2 x i64>, ptr %i.dcl, align 8, !alias.scope !1422, !noalias !1419
  %i.dcm = getelementptr i8, ptr %next.gep3460, i64 16
  store <2 x i64> %wide.load3462, ptr %next.gep3460, align 8, !alias.scope !1419, !noalias !1422
  store <2 x i64> %wide.load3463, ptr %i.dcm, align 8, !alias.scope !1419, !noalias !1422
  %index.next3464 = add nuw i64 %index3459, 4     ; 2 uses
  %i.dcn = icmp eq i64 %index.next3464, %n.vec3457
  br i1 %i.dcn, label %middle.block3465, label %vector.body3458, !llvm.loop !1424

middle.block3465:                                 ; preds = %vector.body3458
  %cmp.n3466 = icmp eq i64 %i.dcf, %n.vec3457
  br i1 %cmp.n3466, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1302, label %.lr.ph.i.i.i.i.i.i.i1295.preheader3658

.lr.ph.i.i.i.i.i.i.i1295.preheader3658:           ; preds = %.lr.ph.i.i.i.i.i.i.i1295.preheader, %middle.block3465
  %.012.i.i.i.i.i.i.i1296.ph = phi ptr [ %i.dcb, %.lr.ph.i.i.i.i.i.i.i1295.preheader ], [ %i.dci, %middle.block3465 ]
  %.0911.i.i.i.i.i.i.i1297.ph = phi ptr [ %.sroa.01486.39, %.lr.ph.i.i.i.i.i.i.i1295.preheader ], [ %i.dcj, %middle.block3465 ]
  br label %.lr.ph.i.i.i.i.i.i.i1295

.lr.ph.i.i.i.i.i.i.i1295:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1295.preheader3658, %.lr.ph.i.i.i.i.i.i.i1295
  %.012.i.i.i.i.i.i.i1296 = phi ptr [ %i.dcq, %.lr.ph.i.i.i.i.i.i.i1295 ], [ %.012.i.i.i.i.i.i.i1296.ph, %.lr.ph.i.i.i.i.i.i.i1295.preheader3658 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1297 = phi ptr [ %i.dcp, %.lr.ph.i.i.i.i.i.i.i1295 ], [ %.0911.i.i.i.i.i.i.i1297.ph, %.lr.ph.i.i.i.i.i.i.i1295.preheader3658 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.dco = load i64, ptr %.0911.i.i.i.i.i.i.i1297, align 8, !alias.scope !1422, !noalias !1419
  store i64 %i.dco, ptr %.012.i.i.i.i.i.i.i1296, align 8, !alias.scope !1419, !noalias !1422
  %i.dcp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1297, i64 8 ; 2 uses
  %i.dcq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1296, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1298 = icmp eq ptr %i.dcp, %.sroa.289.39
  br i1 %.not.i.i.i.i.i.i.i1298, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1302, label %.lr.ph.i.i.i.i.i.i.i1295, !llvm.loop !1425

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1302: ; preds = %.lr.ph.i.i.i.i.i.i.i1295, %middle.block3465, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1291
  %.0.lcssa.i.i.i.i.i.i.i1300 = phi ptr [ %i.dcb, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1291 ], [ %i.dci, %middle.block3465 ], [ %i.dcq, %.lr.ph.i.i.i.i.i.i.i1295 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.39, i64 noundef %i.dbt) #28
  %i.dcr = getelementptr inbounds nuw [8 x i8], ptr %i.dcb, i64 %i.dbz
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1303

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1303: ; preds = %bb.iq, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1302
  %.sroa.289.40 = phi ptr [ %i.dcr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1302 ], [ %.sroa.289.39, %bb.iq ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1300.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1300, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1302 ], [ %.sroa.100.39, %bb.iq ] ; 4 uses
  %.sroa.01486.40 = phi ptr [ %i.dcb, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1302 ], [ %.sroa.01486.39, %bb.iq ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1300.pn3471 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1300.pn to i64 ; 2 uses
  %.sroa.100.40 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1300.pn, i64 8 ; 2 uses
  %i.dcs = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.95, i32 noundef 1, i32 noundef 13) #25 ; 2 uses
  %i.dct = icmp eq ptr %i.dcs, null
  br i1 %i.dct, label %bb.it, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.it:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1303
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1303, %bb.it
  %i.dcu = ptrtoint ptr %i.dcs to i64             ; 2 uses
  %.not.i.i.i1304 = icmp eq ptr %.sroa.100.40, %.sroa.289.40
  br i1 %.not.i.i.i1304, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  store i64 %i.dcu, ptr %.sroa.100.40, align 8
  %i.dcv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1300.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1317

bb.iv:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.dcw = ptrtoint ptr %.sroa.289.40 to i64
  %i.dcx = ptrtoint ptr %.sroa.01486.40 to i64    ; 3 uses
  %i.dcy = sub i64 %i.dcw, %i.dcx                 ; 4 uses
  %i.dcz = icmp eq i64 %i.dcy, 9223372036854775800
  br i1 %i.dcz, label %bb.iw, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1305

bb.iw:                                            ; preds = %bb.iv
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1305: ; preds = %bb.iv
  %i.dda = ashr exact i64 %i.dcy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1306 = tail call i64 @llvm.umax.i64(i64 %i.dda, i64 1)
  %i.ddb = add nsw i64 %.sroa.speculated.i.i.i.i.i1306, %i.dda ; 2 uses
  %i.ddc = icmp ult i64 %i.ddb, %i.dda
  %i.ddd = tail call i64 @llvm.umin.i64(i64 %i.ddb, i64 1152921504606846975)
  %i.dde = select i1 %i.ddc, i64 1152921504606846975, i64 %i.ddd ; 3 uses
  %.not.i.i.i.i.i1307 = icmp ne i64 %i.dde, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1307)
  %i.ddf = shl nuw nsw i64 %i.dde, 3
  %i.ddg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ddf) #27 ; 8 uses
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.ddg, i64 %i.dcy
  store i64 %i.dcu, ptr %i.ddh, align 8
  %.not10.i.i.i.i.i.i.i1308 = icmp eq ptr %.sroa.01486.40, %.sroa.289.40
  br i1 %.not10.i.i.i.i.i.i.i1308, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316, label %.lr.ph.i.i.i.i.i.i.i1309.preheader

.lr.ph.i.i.i.i.i.i.i1309.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1305
  %i.ddi = ptrtoaddr ptr %i.ddg to i64
  %i.ddj = sub i64 %.0.lcssa.i.i.i.i.i.i.i1300.pn3471, %i.dcx ; 2 uses
  %i.ddk = lshr i64 %i.ddj, 3
  %i.ddl = add nuw nsw i64 %i.ddk, 1              ; 2 uses
  %min.iters.check3473 = icmp ult i64 %i.ddj, 56
  %i.ddm = sub i64 %i.ddi, %i.dcx
  %diff.check3470 = icmp ult i64 %i.ddm, 32
  %or.cond3641 = or i1 %min.iters.check3473, %diff.check3470
  br i1 %or.cond3641, label %.lr.ph.i.i.i.i.i.i.i1309.preheader3656, label %vector.ph3474

vector.ph3474:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1309.preheader
  %n.vec3476 = and i64 %i.ddl, 4611686018427387900 ; 3 uses
  %i.ddn = shl i64 %n.vec3476, 3                  ; 2 uses
  %i.ddo = getelementptr i8, ptr %i.ddg, i64 %i.ddn ; 2 uses
  %i.ddp = getelementptr i8, ptr %.sroa.01486.40, i64 %i.ddn
  br label %vector.body3477

vector.body3477:                                  ; preds = %vector.body3477, %vector.ph3474
  %index3478 = phi i64 [ 0, %vector.ph3474 ], [ %index.next3483, %vector.body3477 ] ; 2 uses
  %i.ddq = shl i64 %index3478, 3                  ; 2 uses
  %next.gep3479 = getelementptr i8, ptr %i.ddg, i64 %i.ddq ; 2 uses
  %next.gep3480 = getelementptr i8, ptr %.sroa.01486.40, i64 %i.ddq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.ddr = getelementptr i8, ptr %next.gep3480, i64 16
  %wide.load3481 = load <2 x i64>, ptr %next.gep3480, align 8, !alias.scope !1429, !noalias !1426
  %wide.load3482 = load <2 x i64>, ptr %i.ddr, align 8, !alias.scope !1429, !noalias !1426
  %i.dds = getelementptr i8, ptr %next.gep3479, i64 16
  store <2 x i64> %wide.load3481, ptr %next.gep3479, align 8, !alias.scope !1426, !noalias !1429
  store <2 x i64> %wide.load3482, ptr %i.dds, align 8, !alias.scope !1426, !noalias !1429
  %index.next3483 = add nuw i64 %index3478, 4     ; 2 uses
  %i.ddt = icmp eq i64 %index.next3483, %n.vec3476
  br i1 %i.ddt, label %middle.block3484, label %vector.body3477, !llvm.loop !1431

middle.block3484:                                 ; preds = %vector.body3477
  %cmp.n3485 = icmp eq i64 %i.ddl, %n.vec3476
  br i1 %cmp.n3485, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316, label %.lr.ph.i.i.i.i.i.i.i1309.preheader3656

.lr.ph.i.i.i.i.i.i.i1309.preheader3656:           ; preds = %.lr.ph.i.i.i.i.i.i.i1309.preheader, %middle.block3484
  %.012.i.i.i.i.i.i.i1310.ph = phi ptr [ %i.ddg, %.lr.ph.i.i.i.i.i.i.i1309.preheader ], [ %i.ddo, %middle.block3484 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1311.ph = phi ptr [ %.sroa.01486.40, %.lr.ph.i.i.i.i.i.i.i1309.preheader ], [ %i.ddp, %middle.block3484 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1311.ph3893 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1311.ph to i64
  %i.ddu = sub i64 %.0.lcssa.i.i.i.i.i.i.i1300.pn3471, %.0911.i.i.i.i.i.i.i1311.ph3893 ; 2 uses
  %i.ddv = lshr i64 %i.ddu, 3
  %i.ddw = add nuw nsw i64 %i.ddv, 1
  %xtraiter3894 = and i64 %i.ddw, 7               ; 2 uses
  %lcmp.mod3895.not = icmp eq i64 %xtraiter3894, 0
  br i1 %lcmp.mod3895.not, label %.lr.ph.i.i.i.i.i.i.i1309.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1309.prol

.lr.ph.i.i.i.i.i.i.i1309.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1309.preheader3656, %.lr.ph.i.i.i.i.i.i.i1309.prol
  %.012.i.i.i.i.i.i.i1310.prol = phi ptr [ %i.ddz, %.lr.ph.i.i.i.i.i.i.i1309.prol ], [ %.012.i.i.i.i.i.i.i1310.ph, %.lr.ph.i.i.i.i.i.i.i1309.preheader3656 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1311.prol = phi ptr [ %i.ddy, %.lr.ph.i.i.i.i.i.i.i1309.prol ], [ %.0911.i.i.i.i.i.i.i1311.ph, %.lr.ph.i.i.i.i.i.i.i1309.preheader3656 ] ; 2 uses
  %prol.iter3896 = phi i64 [ %prol.iter3896.next, %.lr.ph.i.i.i.i.i.i.i1309.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1309.preheader3656 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.ddx = load i64, ptr %.0911.i.i.i.i.i.i.i1311.prol, align 8, !alias.scope !1429, !noalias !1426
  store i64 %i.ddx, ptr %.012.i.i.i.i.i.i.i1310.prol, align 8, !alias.scope !1426, !noalias !1429
  %i.ddy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311.prol, i64 8 ; 2 uses
  %i.ddz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310.prol, i64 8 ; 3 uses
  %prol.iter3896.next = add i64 %prol.iter3896, 1 ; 2 uses
  %prol.iter3896.cmp.not = icmp eq i64 %prol.iter3896.next, %xtraiter3894
  br i1 %prol.iter3896.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1309.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1309.prol, !llvm.loop !1432

.lr.ph.i.i.i.i.i.i.i1309.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1309.prol, %.lr.ph.i.i.i.i.i.i.i1309.preheader3656
  %.lcssa3657.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1309.preheader3656 ], [ %i.ddz, %.lr.ph.i.i.i.i.i.i.i1309.prol ]
  %.012.i.i.i.i.i.i.i1310.unr = phi ptr [ %.012.i.i.i.i.i.i.i1310.ph, %.lr.ph.i.i.i.i.i.i.i1309.preheader3656 ], [ %i.ddz, %.lr.ph.i.i.i.i.i.i.i1309.prol ]
  %.0911.i.i.i.i.i.i.i1311.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1311.ph, %.lr.ph.i.i.i.i.i.i.i1309.preheader3656 ], [ %i.ddy, %.lr.ph.i.i.i.i.i.i.i1309.prol ]
  %i.dea = icmp ult i64 %i.ddu, 56
  br i1 %i.dea, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316, label %.lr.ph.i.i.i.i.i.i.i1309

.lr.ph.i.i.i.i.i.i.i1309:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1309.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1309
  %.012.i.i.i.i.i.i.i1310 = phi ptr [ %i.dey, %.lr.ph.i.i.i.i.i.i.i1309 ], [ %.012.i.i.i.i.i.i.i1310.unr, %.lr.ph.i.i.i.i.i.i.i1309.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1311 = phi ptr [ %i.dex, %.lr.ph.i.i.i.i.i.i.i1309 ], [ %.0911.i.i.i.i.i.i.i1311.unr, %.lr.ph.i.i.i.i.i.i.i1309.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.deb = load i64, ptr %.0911.i.i.i.i.i.i.i1311, align 8, !alias.scope !1429, !noalias !1426
  store i64 %i.deb, ptr %.012.i.i.i.i.i.i.i1310, align 8, !alias.scope !1426, !noalias !1429
  %i.dec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311, i64 8
  %i.ded = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.dee = load i64, ptr %i.dec, align 8, !alias.scope !1435, !noalias !1433
  store i64 %i.dee, ptr %i.ded, align 8, !alias.scope !1433, !noalias !1435
  %i.def = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311, i64 16
  %i.deg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.deh = load i64, ptr %i.def, align 8, !alias.scope !1439, !noalias !1437
  store i64 %i.deh, ptr %i.deg, align 8, !alias.scope !1437, !noalias !1439
  %i.dei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311, i64 24
  %i.dej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.dek = load i64, ptr %i.dei, align 8, !alias.scope !1443, !noalias !1441
  store i64 %i.dek, ptr %i.dej, align 8, !alias.scope !1441, !noalias !1443
  %i.del = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311, i64 32
  %i.dem = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.den = load i64, ptr %i.del, align 8, !alias.scope !1447, !noalias !1445
  store i64 %i.den, ptr %i.dem, align 8, !alias.scope !1445, !noalias !1447
  %i.deo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311, i64 40
  %i.dep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.deq = load i64, ptr %i.deo, align 8, !alias.scope !1451, !noalias !1449
  store i64 %i.deq, ptr %i.dep, align 8, !alias.scope !1449, !noalias !1451
  %i.der = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311, i64 48
  %i.des = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %i.det = load i64, ptr %i.der, align 8, !alias.scope !1455, !noalias !1453
  store i64 %i.det, ptr %i.des, align 8, !alias.scope !1453, !noalias !1455
  %i.deu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311, i64 56 ; 2 uses
  %i.dev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.dew = load i64, ptr %i.deu, align 8, !alias.scope !1459, !noalias !1457
  store i64 %i.dew, ptr %i.dev, align 8, !alias.scope !1457, !noalias !1459
  %i.dex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1311, i64 64
  %i.dey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1310, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1312.7 = icmp eq ptr %i.deu, %.0.lcssa.i.i.i.i.i.i.i1300.pn
  br i1 %.not.i.i.i.i.i.i.i1312.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316, label %.lr.ph.i.i.i.i.i.i.i1309, !llvm.loop !1461

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316: ; preds = %.lr.ph.i.i.i.i.i.i.i1309.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1309, %middle.block3484, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1305
  %.0.lcssa.i.i.i.i.i.i.i1314 = phi ptr [ %i.ddg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1305 ], [ %i.ddo, %middle.block3484 ], [ %.lcssa3657.unr, %.lr.ph.i.i.i.i.i.i.i1309.prol.loopexit ], [ %i.dey, %.lr.ph.i.i.i.i.i.i.i1309 ]
  %i.dez = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1314, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.40, i64 noundef %i.dcy) #28
  %i.dfa = getelementptr inbounds nuw [8 x i8], ptr %i.ddg, i64 %i.dde
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1317

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1317: ; preds = %bb.iu, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316
  %.sroa.289.41 = phi ptr [ %i.dfa, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316 ], [ %.sroa.289.40, %bb.iu ] ; 5 uses
  %.sroa.100.41 = phi ptr [ %i.dez, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316 ], [ %i.dcv, %bb.iu ] ; 3 uses
  %.sroa.01486.41 = phi ptr [ %i.ddg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1316 ], [ %.sroa.01486.40, %bb.iu ] ; 7 uses
  %i.dfb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.96, i32 noundef 1, i32 noundef 13) #25 ; 2 uses
  %i.dfc = icmp eq ptr %i.dfb, null
  br i1 %i.dfc, label %bb.ix, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1318, !prof !5

bb.ix:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1317
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1318

_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1318: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1317, %bb.ix
  %i.dfd = ptrtoint ptr %i.dfb to i64             ; 2 uses
  %.not.i.i.i1319 = icmp eq ptr %.sroa.100.41, %.sroa.289.41
  br i1 %.not.i.i.i1319, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1318
  store i64 %i.dfd, ptr %.sroa.100.41, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1332

bb.iz:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm14EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1318
  %i.dfe = ptrtoint ptr %.sroa.289.41 to i64      ; 2 uses
  %i.dff = ptrtoint ptr %.sroa.01486.41 to i64    ; 3 uses
  %i.dfg = sub i64 %i.dfe, %i.dff                 ; 4 uses
  %i.dfh = icmp eq i64 %i.dfg, 9223372036854775800
  br i1 %i.dfh, label %bb.ja, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1320

bb.ja:                                            ; preds = %bb.iz
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1320: ; preds = %bb.iz
  %i.dfi = ashr exact i64 %i.dfg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1321 = tail call i64 @llvm.umax.i64(i64 %i.dfi, i64 1)
  %i.dfj = add nsw i64 %.sroa.speculated.i.i.i.i.i1321, %i.dfi ; 2 uses
  %i.dfk = icmp ult i64 %i.dfj, %i.dfi
  %i.dfl = tail call i64 @llvm.umin.i64(i64 %i.dfj, i64 1152921504606846975)
  %i.dfm = select i1 %i.dfk, i64 1152921504606846975, i64 %i.dfl ; 3 uses
  %.not.i.i.i.i.i1322 = icmp ne i64 %i.dfm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1322)
  %i.dfn = shl nuw nsw i64 %i.dfm, 3
  %i.dfo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dfn) #27 ; 8 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dfo, i64 %i.dfg
  store i64 %i.dfd, ptr %i.dfp, align 8
  %.not10.i.i.i.i.i.i.i1323 = icmp eq ptr %.sroa.01486.41, %.sroa.289.41
  br i1 %.not10.i.i.i.i.i.i.i1323, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1331, label %.lr.ph.i.i.i.i.i.i.i1324.preheader

.lr.ph.i.i.i.i.i.i.i1324.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1320
  %i.dfq = ptrtoaddr ptr %i.dfo to i64
  %62 = sub i64 %i.dfe, %i.dff
  %63 = add i64 %62, -8                           ; 2 uses
  %i.dfr = lshr i64 %63, 3
  %i.dfs = add nuw nsw i64 %i.dfr, 1              ; 2 uses
  %min.iters.check3491 = icmp ult i64 %63, 56
  %i.dft = sub i64 %i.dfq, %i.dff
  %diff.check3489 = icmp ult i64 %i.dft, 32
  %or.cond3642 = or i1 %min.iters.check3491, %diff.check3489
  br i1 %or.cond3642, label %.lr.ph.i.i.i.i.i.i.i1324.preheader3654, label %vector.ph3492

vector.ph3492:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1324.preheader
  %n.vec3494 = and i64 %i.dfs, 4611686018427387900 ; 3 uses
  %i.dfu = shl i64 %n.vec3494, 3                  ; 2 uses
  %i.dfv = getelementptr i8, ptr %i.dfo, i64 %i.dfu ; 2 uses
  %i.dfw = getelementptr i8, ptr %.sroa.01486.41, i64 %i.dfu
  br label %vector.body3495

vector.body3495:                                  ; preds = %vector.body3495, %vector.ph3492
  %index3496 = phi i64 [ 0, %vector.ph3492 ], [ %index.next3501, %vector.body3495 ] ; 2 uses
  %i.dfx = shl i64 %index3496, 3                  ; 2 uses
  %next.gep3497 = getelementptr i8, ptr %i.dfo, i64 %i.dfx ; 2 uses
  %next.gep3498 = getelementptr i8, ptr %.sroa.01486.41, i64 %i.dfx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.dfy = getelementptr i8, ptr %next.gep3498, i64 16
  %wide.load3499 = load <2 x i64>, ptr %next.gep3498, align 8, !alias.scope !1465, !noalias !1462
  %wide.load3500 = load <2 x i64>, ptr %i.dfy, align 8, !alias.scope !1465, !noalias !1462
  %i.dfz = getelementptr i8, ptr %next.gep3497, i64 16
  store <2 x i64> %wide.load3499, ptr %next.gep3497, align 8, !alias.scope !1462, !noalias !1465
  store <2 x i64> %wide.load3500, ptr %i.dfz, align 8, !alias.scope !1462, !noalias !1465
  %index.next3501 = add nuw i64 %index3496, 4     ; 2 uses
  %i.dga = icmp eq i64 %index.next3501, %n.vec3494
  br i1 %i.dga, label %middle.block3502, label %vector.body3495, !llvm.loop !1467

middle.block3502:                                 ; preds = %vector.body3495
  %cmp.n3503 = icmp eq i64 %i.dfs, %n.vec3494
  br i1 %cmp.n3503, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1331, label %.lr.ph.i.i.i.i.i.i.i1324.preheader3654

.lr.ph.i.i.i.i.i.i.i1324.preheader3654:           ; preds = %.lr.ph.i.i.i.i.i.i.i1324.preheader, %middle.block3502
  %.012.i.i.i.i.i.i.i1325.ph = phi ptr [ %i.dfo, %.lr.ph.i.i.i.i.i.i.i1324.preheader ], [ %i.dfv, %middle.block3502 ]
  %.0911.i.i.i.i.i.i.i1326.ph = phi ptr [ %.sroa.01486.41, %.lr.ph.i.i.i.i.i.i.i1324.preheader ], [ %i.dfw, %middle.block3502 ]
  br label %.lr.ph.i.i.i.i.i.i.i1324

.lr.ph.i.i.i.i.i.i.i1324:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1324.preheader3654, %.lr.ph.i.i.i.i.i.i.i1324
  %.012.i.i.i.i.i.i.i1325 = phi ptr [ %i.dgd, %.lr.ph.i.i.i.i.i.i.i1324 ], [ %.012.i.i.i.i.i.i.i1325.ph, %.lr.ph.i.i.i.i.i.i.i1324.preheader3654 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1326 = phi ptr [ %i.dgc, %.lr.ph.i.i.i.i.i.i.i1324 ], [ %.0911.i.i.i.i.i.i.i1326.ph, %.lr.ph.i.i.i.i.i.i.i1324.preheader3654 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.dgb = load i64, ptr %.0911.i.i.i.i.i.i.i1326, align 8, !alias.scope !1465, !noalias !1462
  store i64 %i.dgb, ptr %.012.i.i.i.i.i.i.i1325, align 8, !alias.scope !1462, !noalias !1465
  %i.dgc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1326, i64 8 ; 2 uses
  %i.dgd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1325, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1327 = icmp eq ptr %i.dgc, %.sroa.289.41
  br i1 %.not.i.i.i.i.i.i.i1327, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1331, label %.lr.ph.i.i.i.i.i.i.i1324, !llvm.loop !1468

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1331: ; preds = %.lr.ph.i.i.i.i.i.i.i1324, %middle.block3502, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1320
  %.0.lcssa.i.i.i.i.i.i.i1329 = phi ptr [ %i.dfo, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1320 ], [ %i.dfv, %middle.block3502 ], [ %i.dgd, %.lr.ph.i.i.i.i.i.i.i1324 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.41, i64 noundef %i.dfg) #28
  %i.dge = getelementptr inbounds nuw [8 x i8], ptr %i.dfo, i64 %i.dfm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1332

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1332: ; preds = %bb.iy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1331
  %.sroa.289.42 = phi ptr [ %i.dge, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1331 ], [ %.sroa.289.41, %bb.iy ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1329.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1329, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1331 ], [ %.sroa.100.41, %bb.iy ] ; 4 uses
  %.sroa.01486.42 = phi ptr [ %i.dfo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1331 ], [ %.sroa.01486.41, %bb.iy ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1329.pn3508 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1329.pn to i64 ; 2 uses
  %.sroa.100.42 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1329.pn, i64 8 ; 2 uses
  %i.dgf = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.97, i32 noundef 1, i32 noundef 8) #25 ; 2 uses
  %i.dgg = icmp eq ptr %i.dgf, null
  br i1 %i.dgg, label %bb.jb, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1333, !prof !5

bb.jb:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1332
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1333

_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1333: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1332, %bb.jb
  %i.dgh = ptrtoint ptr %i.dgf to i64             ; 2 uses
  %.not.i.i.i1334 = icmp eq ptr %.sroa.100.42, %.sroa.289.42
  br i1 %.not.i.i.i1334, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1333
  store i64 %i.dgh, ptr %.sroa.100.42, align 8
  %i.dgi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1329.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1347

bb.jd:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm9EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1333
  %i.dgj = ptrtoint ptr %.sroa.289.42 to i64
  %i.dgk = ptrtoint ptr %.sroa.01486.42 to i64    ; 3 uses
  %i.dgl = sub i64 %i.dgj, %i.dgk                 ; 4 uses
  %i.dgm = icmp eq i64 %i.dgl, 9223372036854775800
  br i1 %i.dgm, label %bb.je, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1335

bb.je:                                            ; preds = %bb.jd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1335: ; preds = %bb.jd
  %i.dgn = ashr exact i64 %i.dgl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1336 = tail call i64 @llvm.umax.i64(i64 %i.dgn, i64 1)
  %i.dgo = add nsw i64 %.sroa.speculated.i.i.i.i.i1336, %i.dgn ; 2 uses
  %i.dgp = icmp ult i64 %i.dgo, %i.dgn
  %i.dgq = tail call i64 @llvm.umin.i64(i64 %i.dgo, i64 1152921504606846975)
  %i.dgr = select i1 %i.dgp, i64 1152921504606846975, i64 %i.dgq ; 3 uses
  %.not.i.i.i.i.i1337 = icmp ne i64 %i.dgr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1337)
  %i.dgs = shl nuw nsw i64 %i.dgr, 3
  %i.dgt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dgs) #27 ; 8 uses
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dgt, i64 %i.dgl
  store i64 %i.dgh, ptr %i.dgu, align 8
  %.not10.i.i.i.i.i.i.i1338 = icmp eq ptr %.sroa.01486.42, %.sroa.289.42
  br i1 %.not10.i.i.i.i.i.i.i1338, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346, label %.lr.ph.i.i.i.i.i.i.i1339.preheader

.lr.ph.i.i.i.i.i.i.i1339.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1335
  %i.dgv = ptrtoaddr ptr %i.dgt to i64
  %i.dgw = sub i64 %.0.lcssa.i.i.i.i.i.i.i1329.pn3508, %i.dgk ; 2 uses
  %i.dgx = lshr i64 %i.dgw, 3
  %i.dgy = add nuw nsw i64 %i.dgx, 1              ; 2 uses
  %min.iters.check3510 = icmp ult i64 %i.dgw, 56
  %i.dgz = sub i64 %i.dgv, %i.dgk
  %diff.check3507 = icmp ult i64 %i.dgz, 32
  %or.cond3643 = or i1 %min.iters.check3510, %diff.check3507
  br i1 %or.cond3643, label %.lr.ph.i.i.i.i.i.i.i1339.preheader3652, label %vector.ph3511

vector.ph3511:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1339.preheader
  %n.vec3513 = and i64 %i.dgy, 4611686018427387900 ; 3 uses
  %i.dha = shl i64 %n.vec3513, 3                  ; 2 uses
  %i.dhb = getelementptr i8, ptr %i.dgt, i64 %i.dha ; 2 uses
  %i.dhc = getelementptr i8, ptr %.sroa.01486.42, i64 %i.dha
  br label %vector.body3514

vector.body3514:                                  ; preds = %vector.body3514, %vector.ph3511
  %index3515 = phi i64 [ 0, %vector.ph3511 ], [ %index.next3520, %vector.body3514 ] ; 2 uses
  %i.dhd = shl i64 %index3515, 3                  ; 2 uses
  %next.gep3516 = getelementptr i8, ptr %i.dgt, i64 %i.dhd ; 2 uses
  %next.gep3517 = getelementptr i8, ptr %.sroa.01486.42, i64 %i.dhd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.dhe = getelementptr i8, ptr %next.gep3517, i64 16
  %wide.load3518 = load <2 x i64>, ptr %next.gep3517, align 8, !alias.scope !1472, !noalias !1469
  %wide.load3519 = load <2 x i64>, ptr %i.dhe, align 8, !alias.scope !1472, !noalias !1469
  %i.dhf = getelementptr i8, ptr %next.gep3516, i64 16
  store <2 x i64> %wide.load3518, ptr %next.gep3516, align 8, !alias.scope !1469, !noalias !1472
  store <2 x i64> %wide.load3519, ptr %i.dhf, align 8, !alias.scope !1469, !noalias !1472
  %index.next3520 = add nuw i64 %index3515, 4     ; 2 uses
  %i.dhg = icmp eq i64 %index.next3520, %n.vec3513
  br i1 %i.dhg, label %middle.block3521, label %vector.body3514, !llvm.loop !1474

middle.block3521:                                 ; preds = %vector.body3514
  %cmp.n3522 = icmp eq i64 %i.dgy, %n.vec3513
  br i1 %cmp.n3522, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346, label %.lr.ph.i.i.i.i.i.i.i1339.preheader3652

.lr.ph.i.i.i.i.i.i.i1339.preheader3652:           ; preds = %.lr.ph.i.i.i.i.i.i.i1339.preheader, %middle.block3521
  %.012.i.i.i.i.i.i.i1340.ph = phi ptr [ %i.dgt, %.lr.ph.i.i.i.i.i.i.i1339.preheader ], [ %i.dhb, %middle.block3521 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1341.ph = phi ptr [ %.sroa.01486.42, %.lr.ph.i.i.i.i.i.i.i1339.preheader ], [ %i.dhc, %middle.block3521 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1341.ph3897 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1341.ph to i64
  %i.dhh = sub i64 %.0.lcssa.i.i.i.i.i.i.i1329.pn3508, %.0911.i.i.i.i.i.i.i1341.ph3897 ; 2 uses
  %i.dhi = lshr i64 %i.dhh, 3
  %i.dhj = add nuw nsw i64 %i.dhi, 1
  %xtraiter3898 = and i64 %i.dhj, 7               ; 2 uses
  %lcmp.mod3899.not = icmp eq i64 %xtraiter3898, 0
  br i1 %lcmp.mod3899.not, label %.lr.ph.i.i.i.i.i.i.i1339.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1339.prol

.lr.ph.i.i.i.i.i.i.i1339.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1339.preheader3652, %.lr.ph.i.i.i.i.i.i.i1339.prol
  %.012.i.i.i.i.i.i.i1340.prol = phi ptr [ %i.dhm, %.lr.ph.i.i.i.i.i.i.i1339.prol ], [ %.012.i.i.i.i.i.i.i1340.ph, %.lr.ph.i.i.i.i.i.i.i1339.preheader3652 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1341.prol = phi ptr [ %i.dhl, %.lr.ph.i.i.i.i.i.i.i1339.prol ], [ %.0911.i.i.i.i.i.i.i1341.ph, %.lr.ph.i.i.i.i.i.i.i1339.preheader3652 ] ; 2 uses
  %prol.iter3900 = phi i64 [ %prol.iter3900.next, %.lr.ph.i.i.i.i.i.i.i1339.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1339.preheader3652 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.dhk = load i64, ptr %.0911.i.i.i.i.i.i.i1341.prol, align 8, !alias.scope !1472, !noalias !1469
  store i64 %i.dhk, ptr %.012.i.i.i.i.i.i.i1340.prol, align 8, !alias.scope !1469, !noalias !1472
  %i.dhl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341.prol, i64 8 ; 2 uses
  %i.dhm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340.prol, i64 8 ; 3 uses
  %prol.iter3900.next = add i64 %prol.iter3900, 1 ; 2 uses
  %prol.iter3900.cmp.not = icmp eq i64 %prol.iter3900.next, %xtraiter3898
  br i1 %prol.iter3900.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1339.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1339.prol, !llvm.loop !1475

.lr.ph.i.i.i.i.i.i.i1339.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1339.prol, %.lr.ph.i.i.i.i.i.i.i1339.preheader3652
  %.lcssa3653.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1339.preheader3652 ], [ %i.dhm, %.lr.ph.i.i.i.i.i.i.i1339.prol ]
  %.012.i.i.i.i.i.i.i1340.unr = phi ptr [ %.012.i.i.i.i.i.i.i1340.ph, %.lr.ph.i.i.i.i.i.i.i1339.preheader3652 ], [ %i.dhm, %.lr.ph.i.i.i.i.i.i.i1339.prol ]
  %.0911.i.i.i.i.i.i.i1341.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1341.ph, %.lr.ph.i.i.i.i.i.i.i1339.preheader3652 ], [ %i.dhl, %.lr.ph.i.i.i.i.i.i.i1339.prol ]
  %i.dhn = icmp ult i64 %i.dhh, 56
  br i1 %i.dhn, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346, label %.lr.ph.i.i.i.i.i.i.i1339

.lr.ph.i.i.i.i.i.i.i1339:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1339.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1339
  %.012.i.i.i.i.i.i.i1340 = phi ptr [ %i.dil, %.lr.ph.i.i.i.i.i.i.i1339 ], [ %.012.i.i.i.i.i.i.i1340.unr, %.lr.ph.i.i.i.i.i.i.i1339.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1341 = phi ptr [ %i.dik, %.lr.ph.i.i.i.i.i.i.i1339 ], [ %.0911.i.i.i.i.i.i.i1341.unr, %.lr.ph.i.i.i.i.i.i.i1339.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.dho = load i64, ptr %.0911.i.i.i.i.i.i.i1341, align 8, !alias.scope !1472, !noalias !1469
  store i64 %i.dho, ptr %.012.i.i.i.i.i.i.i1340, align 8, !alias.scope !1469, !noalias !1472
  %i.dhp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341, i64 8
  %i.dhq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.dhr = load i64, ptr %i.dhp, align 8, !alias.scope !1478, !noalias !1476
  store i64 %i.dhr, ptr %i.dhq, align 8, !alias.scope !1476, !noalias !1478
  %i.dhs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341, i64 16
  %i.dht = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.dhu = load i64, ptr %i.dhs, align 8, !alias.scope !1482, !noalias !1480
  store i64 %i.dhu, ptr %i.dht, align 8, !alias.scope !1480, !noalias !1482
  %i.dhv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341, i64 24
  %i.dhw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.dhx = load i64, ptr %i.dhv, align 8, !alias.scope !1486, !noalias !1484
  store i64 %i.dhx, ptr %i.dhw, align 8, !alias.scope !1484, !noalias !1486
  %i.dhy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341, i64 32
  %i.dhz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.dia = load i64, ptr %i.dhy, align 8, !alias.scope !1490, !noalias !1488
  store i64 %i.dia, ptr %i.dhz, align 8, !alias.scope !1488, !noalias !1490
  %i.dib = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341, i64 40
  %i.dic = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  %i.did = load i64, ptr %i.dib, align 8, !alias.scope !1494, !noalias !1492
  store i64 %i.did, ptr %i.dic, align 8, !alias.scope !1492, !noalias !1494
  %i.die = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341, i64 48
  %i.dif = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %i.dig = load i64, ptr %i.die, align 8, !alias.scope !1498, !noalias !1496
  store i64 %i.dig, ptr %i.dif, align 8, !alias.scope !1496, !noalias !1498
  %i.dih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341, i64 56 ; 2 uses
  %i.dii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %i.dij = load i64, ptr %i.dih, align 8, !alias.scope !1502, !noalias !1500
  store i64 %i.dij, ptr %i.dii, align 8, !alias.scope !1500, !noalias !1502
  %i.dik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1341, i64 64
  %i.dil = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1340, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1342.7 = icmp eq ptr %i.dih, %.0.lcssa.i.i.i.i.i.i.i1329.pn
  br i1 %.not.i.i.i.i.i.i.i1342.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346, label %.lr.ph.i.i.i.i.i.i.i1339, !llvm.loop !1504

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346: ; preds = %.lr.ph.i.i.i.i.i.i.i1339.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1339, %middle.block3521, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1335
  %.0.lcssa.i.i.i.i.i.i.i1344 = phi ptr [ %i.dgt, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1335 ], [ %i.dhb, %middle.block3521 ], [ %.lcssa3653.unr, %.lr.ph.i.i.i.i.i.i.i1339.prol.loopexit ], [ %i.dil, %.lr.ph.i.i.i.i.i.i.i1339 ]
  %i.dim = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1344, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.42, i64 noundef %i.dgl) #28
  %i.din = getelementptr inbounds nuw [8 x i8], ptr %i.dgt, i64 %i.dgr
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1347

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1347: ; preds = %bb.jc, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346
  %.sroa.289.43 = phi ptr [ %i.din, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346 ], [ %.sroa.289.42, %bb.jc ] ; 5 uses
  %.sroa.100.43 = phi ptr [ %i.dim, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346 ], [ %i.dgi, %bb.jc ] ; 3 uses
  %.sroa.01486.43 = phi ptr [ %i.dgt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1346 ], [ %.sroa.01486.42, %bb.jc ] ; 7 uses
  %i.dio = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.98, i32 noundef 1, i32 noundef 6) #25 ; 2 uses
  %i.dip = icmp eq ptr %i.dio, null
  br i1 %i.dip, label %bb.jf, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1348, !prof !5

bb.jf:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1347
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1348

_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1348: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1347, %bb.jf
  %i.diq = ptrtoint ptr %i.dio to i64             ; 2 uses
  %.not.i.i.i1349 = icmp eq ptr %.sroa.100.43, %.sroa.289.43
  br i1 %.not.i.i.i1349, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1348
  store i64 %i.diq, ptr %.sroa.100.43, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1362

bb.jh:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm7EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1348
  %i.dir = ptrtoint ptr %.sroa.289.43 to i64      ; 2 uses
  %i.dis = ptrtoint ptr %.sroa.01486.43 to i64    ; 3 uses
  %i.dit = sub i64 %i.dir, %i.dis                 ; 4 uses
  %i.diu = icmp eq i64 %i.dit, 9223372036854775800
  br i1 %i.diu, label %bb.ji, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1350

bb.ji:                                            ; preds = %bb.jh
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1350: ; preds = %bb.jh
  %i.div = ashr exact i64 %i.dit, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1351 = tail call i64 @llvm.umax.i64(i64 %i.div, i64 1)
  %i.diw = add nsw i64 %.sroa.speculated.i.i.i.i.i1351, %i.div ; 2 uses
  %i.dix = icmp ult i64 %i.diw, %i.div
  %i.diy = tail call i64 @llvm.umin.i64(i64 %i.diw, i64 1152921504606846975)
  %i.diz = select i1 %i.dix, i64 1152921504606846975, i64 %i.diy ; 3 uses
  %.not.i.i.i.i.i1352 = icmp ne i64 %i.diz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1352)
  %i.dja = shl nuw nsw i64 %i.diz, 3
  %i.djb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dja) #27 ; 8 uses
  %i.djc = getelementptr inbounds nuw i8, ptr %i.djb, i64 %i.dit
  store i64 %i.diq, ptr %i.djc, align 8
  %.not10.i.i.i.i.i.i.i1353 = icmp eq ptr %.sroa.01486.43, %.sroa.289.43
  br i1 %.not10.i.i.i.i.i.i.i1353, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1361, label %.lr.ph.i.i.i.i.i.i.i1354.preheader

.lr.ph.i.i.i.i.i.i.i1354.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1350
  %i.djd = ptrtoaddr ptr %i.djb to i64
  %64 = sub i64 %i.dir, %i.dis
  %65 = add i64 %64, -8                           ; 2 uses
  %i.dje = lshr i64 %65, 3
  %i.djf = add nuw nsw i64 %i.dje, 1              ; 2 uses
  %min.iters.check3528 = icmp ult i64 %65, 56
  %i.djg = sub i64 %i.djd, %i.dis
  %diff.check3526 = icmp ult i64 %i.djg, 32
  %or.cond3644 = or i1 %min.iters.check3528, %diff.check3526
  br i1 %or.cond3644, label %.lr.ph.i.i.i.i.i.i.i1354.preheader3650, label %vector.ph3529

vector.ph3529:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1354.preheader
  %n.vec3531 = and i64 %i.djf, 4611686018427387900 ; 3 uses
  %i.djh = shl i64 %n.vec3531, 3                  ; 2 uses
  %i.dji = getelementptr i8, ptr %i.djb, i64 %i.djh ; 2 uses
  %i.djj = getelementptr i8, ptr %.sroa.01486.43, i64 %i.djh
  br label %vector.body3532

vector.body3532:                                  ; preds = %vector.body3532, %vector.ph3529
  %index3533 = phi i64 [ 0, %vector.ph3529 ], [ %index.next3538, %vector.body3532 ] ; 2 uses
  %i.djk = shl i64 %index3533, 3                  ; 2 uses
  %next.gep3534 = getelementptr i8, ptr %i.djb, i64 %i.djk ; 2 uses
  %next.gep3535 = getelementptr i8, ptr %.sroa.01486.43, i64 %i.djk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.djl = getelementptr i8, ptr %next.gep3535, i64 16
  %wide.load3536 = load <2 x i64>, ptr %next.gep3535, align 8, !alias.scope !1508, !noalias !1505
  %wide.load3537 = load <2 x i64>, ptr %i.djl, align 8, !alias.scope !1508, !noalias !1505
  %i.djm = getelementptr i8, ptr %next.gep3534, i64 16
  store <2 x i64> %wide.load3536, ptr %next.gep3534, align 8, !alias.scope !1505, !noalias !1508
  store <2 x i64> %wide.load3537, ptr %i.djm, align 8, !alias.scope !1505, !noalias !1508
  %index.next3538 = add nuw i64 %index3533, 4     ; 2 uses
  %i.djn = icmp eq i64 %index.next3538, %n.vec3531
  br i1 %i.djn, label %middle.block3539, label %vector.body3532, !llvm.loop !1510

middle.block3539:                                 ; preds = %vector.body3532
  %cmp.n3540 = icmp eq i64 %i.djf, %n.vec3531
  br i1 %cmp.n3540, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1361, label %.lr.ph.i.i.i.i.i.i.i1354.preheader3650

.lr.ph.i.i.i.i.i.i.i1354.preheader3650:           ; preds = %.lr.ph.i.i.i.i.i.i.i1354.preheader, %middle.block3539
  %.012.i.i.i.i.i.i.i1355.ph = phi ptr [ %i.djb, %.lr.ph.i.i.i.i.i.i.i1354.preheader ], [ %i.dji, %middle.block3539 ]
  %.0911.i.i.i.i.i.i.i1356.ph = phi ptr [ %.sroa.01486.43, %.lr.ph.i.i.i.i.i.i.i1354.preheader ], [ %i.djj, %middle.block3539 ]
  br label %.lr.ph.i.i.i.i.i.i.i1354

.lr.ph.i.i.i.i.i.i.i1354:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1354.preheader3650, %.lr.ph.i.i.i.i.i.i.i1354
  %.012.i.i.i.i.i.i.i1355 = phi ptr [ %i.djq, %.lr.ph.i.i.i.i.i.i.i1354 ], [ %.012.i.i.i.i.i.i.i1355.ph, %.lr.ph.i.i.i.i.i.i.i1354.preheader3650 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1356 = phi ptr [ %i.djp, %.lr.ph.i.i.i.i.i.i.i1354 ], [ %.0911.i.i.i.i.i.i.i1356.ph, %.lr.ph.i.i.i.i.i.i.i1354.preheader3650 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.djo = load i64, ptr %.0911.i.i.i.i.i.i.i1356, align 8, !alias.scope !1508, !noalias !1505
  store i64 %i.djo, ptr %.012.i.i.i.i.i.i.i1355, align 8, !alias.scope !1505, !noalias !1508
  %i.djp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1356, i64 8 ; 2 uses
  %i.djq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1355, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1357 = icmp eq ptr %i.djp, %.sroa.289.43
  br i1 %.not.i.i.i.i.i.i.i1357, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1361, label %.lr.ph.i.i.i.i.i.i.i1354, !llvm.loop !1511

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1361: ; preds = %.lr.ph.i.i.i.i.i.i.i1354, %middle.block3539, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1350
  %.0.lcssa.i.i.i.i.i.i.i1359 = phi ptr [ %i.djb, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1350 ], [ %i.dji, %middle.block3539 ], [ %i.djq, %.lr.ph.i.i.i.i.i.i.i1354 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.43, i64 noundef %i.dit) #28
  %i.djr = getelementptr inbounds nuw [8 x i8], ptr %i.djb, i64 %i.diz
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1362

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1362: ; preds = %bb.jg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1361
  %.sroa.289.44 = phi ptr [ %i.djr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1361 ], [ %.sroa.289.43, %bb.jg ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i1359.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1359, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1361 ], [ %.sroa.100.43, %bb.jg ] ; 4 uses
  %.sroa.01486.44 = phi ptr [ %i.djb, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1361 ], [ %.sroa.01486.43, %bb.jg ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.i1359.pn3545 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i1359.pn to i64 ; 2 uses
  %.sroa.100.44 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1359.pn, i64 8 ; 2 uses
  %i.djs = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.99, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.djt = icmp eq ptr %i.djs, null
  br i1 %i.djt, label %bb.jj, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1363, !prof !5

bb.jj:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1362
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1363

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1363: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1362, %bb.jj
  %i.dju = ptrtoint ptr %i.djs to i64             ; 2 uses
  %.not.i.i.i1364 = icmp eq ptr %.sroa.100.44, %.sroa.289.44
  br i1 %.not.i.i.i1364, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1363
  store i64 %i.dju, ptr %.sroa.100.44, align 8
  %i.djv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1359.pn, i64 16
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1377

bb.jl:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1363
  %i.djw = ptrtoint ptr %.sroa.289.44 to i64
  %i.djx = ptrtoint ptr %.sroa.01486.44 to i64    ; 3 uses
  %i.djy = sub i64 %i.djw, %i.djx                 ; 4 uses
  %i.djz = icmp eq i64 %i.djy, 9223372036854775800
  br i1 %i.djz, label %bb.jm, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1365

bb.jm:                                            ; preds = %bb.jl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1365: ; preds = %bb.jl
  %i.dka = ashr exact i64 %i.djy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1366 = tail call i64 @llvm.umax.i64(i64 %i.dka, i64 1)
  %i.dkb = add nsw i64 %.sroa.speculated.i.i.i.i.i1366, %i.dka ; 2 uses
  %i.dkc = icmp ult i64 %i.dkb, %i.dka
  %i.dkd = tail call i64 @llvm.umin.i64(i64 %i.dkb, i64 1152921504606846975)
  %i.dke = select i1 %i.dkc, i64 1152921504606846975, i64 %i.dkd ; 3 uses
  %.not.i.i.i.i.i1367 = icmp ne i64 %i.dke, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1367)
  %i.dkf = shl nuw nsw i64 %i.dke, 3
  %i.dkg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dkf) #27 ; 8 uses
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 %i.djy
  store i64 %i.dju, ptr %i.dkh, align 8
  %.not10.i.i.i.i.i.i.i1368 = icmp eq ptr %.sroa.01486.44, %.sroa.289.44
  br i1 %.not10.i.i.i.i.i.i.i1368, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376, label %.lr.ph.i.i.i.i.i.i.i1369.preheader

.lr.ph.i.i.i.i.i.i.i1369.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1365
  %i.dki = ptrtoaddr ptr %i.dkg to i64
  %i.dkj = sub i64 %.0.lcssa.i.i.i.i.i.i.i1359.pn3545, %i.djx ; 2 uses
  %i.dkk = lshr i64 %i.dkj, 3
  %i.dkl = add nuw nsw i64 %i.dkk, 1              ; 2 uses
  %min.iters.check3547 = icmp ult i64 %i.dkj, 56
  %i.dkm = sub i64 %i.dki, %i.djx
  %diff.check3544 = icmp ult i64 %i.dkm, 32
  %or.cond3645 = or i1 %min.iters.check3547, %diff.check3544
  br i1 %or.cond3645, label %.lr.ph.i.i.i.i.i.i.i1369.preheader3648, label %vector.ph3548

vector.ph3548:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1369.preheader
  %n.vec3550 = and i64 %i.dkl, 4611686018427387900 ; 3 uses
  %i.dkn = shl i64 %n.vec3550, 3                  ; 2 uses
  %i.dko = getelementptr i8, ptr %i.dkg, i64 %i.dkn ; 2 uses
  %i.dkp = getelementptr i8, ptr %.sroa.01486.44, i64 %i.dkn
  br label %vector.body3551

vector.body3551:                                  ; preds = %vector.body3551, %vector.ph3548
  %index3552 = phi i64 [ 0, %vector.ph3548 ], [ %index.next3557, %vector.body3551 ] ; 2 uses
  %i.dkq = shl i64 %index3552, 3                  ; 2 uses
  %next.gep3553 = getelementptr i8, ptr %i.dkg, i64 %i.dkq ; 2 uses
  %next.gep3554 = getelementptr i8, ptr %.sroa.01486.44, i64 %i.dkq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.dkr = getelementptr i8, ptr %next.gep3554, i64 16
  %wide.load3555 = load <2 x i64>, ptr %next.gep3554, align 8, !alias.scope !1515, !noalias !1512
  %wide.load3556 = load <2 x i64>, ptr %i.dkr, align 8, !alias.scope !1515, !noalias !1512
  %i.dks = getelementptr i8, ptr %next.gep3553, i64 16
  store <2 x i64> %wide.load3555, ptr %next.gep3553, align 8, !alias.scope !1512, !noalias !1515
  store <2 x i64> %wide.load3556, ptr %i.dks, align 8, !alias.scope !1512, !noalias !1515
  %index.next3557 = add nuw i64 %index3552, 4     ; 2 uses
  %i.dkt = icmp eq i64 %index.next3557, %n.vec3550
  br i1 %i.dkt, label %middle.block3558, label %vector.body3551, !llvm.loop !1517

middle.block3558:                                 ; preds = %vector.body3551
  %cmp.n3559 = icmp eq i64 %i.dkl, %n.vec3550
  br i1 %cmp.n3559, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376, label %.lr.ph.i.i.i.i.i.i.i1369.preheader3648

.lr.ph.i.i.i.i.i.i.i1369.preheader3648:           ; preds = %.lr.ph.i.i.i.i.i.i.i1369.preheader, %middle.block3558
  %.012.i.i.i.i.i.i.i1370.ph = phi ptr [ %i.dkg, %.lr.ph.i.i.i.i.i.i.i1369.preheader ], [ %i.dko, %middle.block3558 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1371.ph = phi ptr [ %.sroa.01486.44, %.lr.ph.i.i.i.i.i.i.i1369.preheader ], [ %i.dkp, %middle.block3558 ] ; 3 uses
  %.0911.i.i.i.i.i.i.i1371.ph3901 = ptrtoint ptr %.0911.i.i.i.i.i.i.i1371.ph to i64
  %i.dku = sub i64 %.0.lcssa.i.i.i.i.i.i.i1359.pn3545, %.0911.i.i.i.i.i.i.i1371.ph3901 ; 2 uses
  %i.dkv = lshr i64 %i.dku, 3
  %i.dkw = add nuw nsw i64 %i.dkv, 1
  %xtraiter3902 = and i64 %i.dkw, 7               ; 2 uses
  %lcmp.mod3903.not = icmp eq i64 %xtraiter3902, 0
  br i1 %lcmp.mod3903.not, label %.lr.ph.i.i.i.i.i.i.i1369.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1369.prol

.lr.ph.i.i.i.i.i.i.i1369.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i1369.preheader3648, %.lr.ph.i.i.i.i.i.i.i1369.prol
  %.012.i.i.i.i.i.i.i1370.prol = phi ptr [ %i.dkz, %.lr.ph.i.i.i.i.i.i.i1369.prol ], [ %.012.i.i.i.i.i.i.i1370.ph, %.lr.ph.i.i.i.i.i.i.i1369.preheader3648 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1371.prol = phi ptr [ %i.dky, %.lr.ph.i.i.i.i.i.i.i1369.prol ], [ %.0911.i.i.i.i.i.i.i1371.ph, %.lr.ph.i.i.i.i.i.i.i1369.preheader3648 ] ; 2 uses
  %prol.iter3904 = phi i64 [ %prol.iter3904.next, %.lr.ph.i.i.i.i.i.i.i1369.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i1369.preheader3648 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.dkx = load i64, ptr %.0911.i.i.i.i.i.i.i1371.prol, align 8, !alias.scope !1515, !noalias !1512
  store i64 %i.dkx, ptr %.012.i.i.i.i.i.i.i1370.prol, align 8, !alias.scope !1512, !noalias !1515
  %i.dky = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371.prol, i64 8 ; 2 uses
  %i.dkz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370.prol, i64 8 ; 3 uses
  %prol.iter3904.next = add i64 %prol.iter3904, 1 ; 2 uses
  %prol.iter3904.cmp.not = icmp eq i64 %prol.iter3904.next, %xtraiter3902
  br i1 %prol.iter3904.cmp.not, label %.lr.ph.i.i.i.i.i.i.i1369.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i1369.prol, !llvm.loop !1518

.lr.ph.i.i.i.i.i.i.i1369.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i1369.prol, %.lr.ph.i.i.i.i.i.i.i1369.preheader3648
  %.lcssa3649.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i1369.preheader3648 ], [ %i.dkz, %.lr.ph.i.i.i.i.i.i.i1369.prol ]
  %.012.i.i.i.i.i.i.i1370.unr = phi ptr [ %.012.i.i.i.i.i.i.i1370.ph, %.lr.ph.i.i.i.i.i.i.i1369.preheader3648 ], [ %i.dkz, %.lr.ph.i.i.i.i.i.i.i1369.prol ]
  %.0911.i.i.i.i.i.i.i1371.unr = phi ptr [ %.0911.i.i.i.i.i.i.i1371.ph, %.lr.ph.i.i.i.i.i.i.i1369.preheader3648 ], [ %i.dky, %.lr.ph.i.i.i.i.i.i.i1369.prol ]
  %i.dla = icmp ult i64 %i.dku, 56
  br i1 %i.dla, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376, label %.lr.ph.i.i.i.i.i.i.i1369

.lr.ph.i.i.i.i.i.i.i1369:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1369.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1369
  %.012.i.i.i.i.i.i.i1370 = phi ptr [ %i.dly, %.lr.ph.i.i.i.i.i.i.i1369 ], [ %.012.i.i.i.i.i.i.i1370.unr, %.lr.ph.i.i.i.i.i.i.i1369.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i.i.i1371 = phi ptr [ %i.dlx, %.lr.ph.i.i.i.i.i.i.i1369 ], [ %.0911.i.i.i.i.i.i.i1371.unr, %.lr.ph.i.i.i.i.i.i.i1369.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.dlb = load i64, ptr %.0911.i.i.i.i.i.i.i1371, align 8, !alias.scope !1515, !noalias !1512
  store i64 %i.dlb, ptr %.012.i.i.i.i.i.i.i1370, align 8, !alias.scope !1512, !noalias !1515
  %i.dlc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371, i64 8
  %i.dld = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.dle = load i64, ptr %i.dlc, align 8, !alias.scope !1521, !noalias !1519
  store i64 %i.dle, ptr %i.dld, align 8, !alias.scope !1519, !noalias !1521
  %i.dlf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371, i64 16
  %i.dlg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.dlh = load i64, ptr %i.dlf, align 8, !alias.scope !1525, !noalias !1523
  store i64 %i.dlh, ptr %i.dlg, align 8, !alias.scope !1523, !noalias !1525
  %i.dli = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371, i64 24
  %i.dlj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %i.dlk = load i64, ptr %i.dli, align 8, !alias.scope !1529, !noalias !1527
  store i64 %i.dlk, ptr %i.dlj, align 8, !alias.scope !1527, !noalias !1529
  %i.dll = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371, i64 32
  %i.dlm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.dln = load i64, ptr %i.dll, align 8, !alias.scope !1533, !noalias !1531
  store i64 %i.dln, ptr %i.dlm, align 8, !alias.scope !1531, !noalias !1533
  %i.dlo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371, i64 40
  %i.dlp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.dlq = load i64, ptr %i.dlo, align 8, !alias.scope !1537, !noalias !1535
  store i64 %i.dlq, ptr %i.dlp, align 8, !alias.scope !1535, !noalias !1537
  %i.dlr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371, i64 48
  %i.dls = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  %i.dlt = load i64, ptr %i.dlr, align 8, !alias.scope !1541, !noalias !1539
  store i64 %i.dlt, ptr %i.dls, align 8, !alias.scope !1539, !noalias !1541
  %i.dlu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371, i64 56 ; 2 uses
  %i.dlv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %i.dlw = load i64, ptr %i.dlu, align 8, !alias.scope !1545, !noalias !1543
  store i64 %i.dlw, ptr %i.dlv, align 8, !alias.scope !1543, !noalias !1545
  %i.dlx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1371, i64 64
  %i.dly = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1370, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i1372.7 = icmp eq ptr %i.dlu, %.0.lcssa.i.i.i.i.i.i.i1359.pn
  br i1 %.not.i.i.i.i.i.i.i1372.7, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376, label %.lr.ph.i.i.i.i.i.i.i1369, !llvm.loop !1547

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376: ; preds = %.lr.ph.i.i.i.i.i.i.i1369.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i1369, %middle.block3558, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1365
  %.0.lcssa.i.i.i.i.i.i.i1374 = phi ptr [ %i.dkg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1365 ], [ %i.dko, %middle.block3558 ], [ %.lcssa3649.unr, %.lr.ph.i.i.i.i.i.i.i1369.prol.loopexit ], [ %i.dly, %.lr.ph.i.i.i.i.i.i.i1369 ]
  %i.dlz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1374, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.44, i64 noundef %i.djy) #28
  %i.dma = getelementptr inbounds nuw [8 x i8], ptr %i.dkg, i64 %i.dke
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1377

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1377: ; preds = %bb.jk, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376
  %.sroa.289.45 = phi ptr [ %i.dma, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376 ], [ %.sroa.289.44, %bb.jk ] ; 5 uses
  %.sroa.100.45 = phi ptr [ %i.dlz, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376 ], [ %i.djv, %bb.jk ] ; 3 uses
  %.sroa.01486.45 = phi ptr [ %i.dkg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1376 ], [ %.sroa.01486.44, %bb.jk ] ; 7 uses
  %i.dmb = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.87, i32 noundef 1, i32 noundef 5) #25 ; 2 uses
  %i.dmc = icmp eq ptr %i.dmb, null
  br i1 %i.dmc, label %bb.jn, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1378, !prof !5

bb.jn:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1377
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1378

_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1378: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1377, %bb.jn
  %i.dmd = ptrtoint ptr %i.dmb to i64             ; 2 uses
  %.not.i.i.i1379 = icmp eq ptr %.sroa.100.45, %.sroa.289.45
  br i1 %.not.i.i.i1379, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1378
  store i64 %i.dmd, ptr %.sroa.100.45, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1392

bb.jp:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm6EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1378
  %i.dme = ptrtoint ptr %.sroa.289.45 to i64      ; 2 uses
  %i.dmf = ptrtoint ptr %.sroa.01486.45 to i64    ; 3 uses
  %i.dmg = sub i64 %i.dme, %i.dmf                 ; 4 uses
  %i.dmh = icmp eq i64 %i.dmg, 9223372036854775800
  br i1 %i.dmh, label %bb.jq, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1380

bb.jq:                                            ; preds = %bb.jp
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #26
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1380: ; preds = %bb.jp
  %i.dmi = ashr exact i64 %i.dmg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i1381 = tail call i64 @llvm.umax.i64(i64 %i.dmi, i64 1)
  %i.dmj = add nsw i64 %.sroa.speculated.i.i.i.i.i1381, %i.dmi ; 2 uses
  %i.dmk = icmp ult i64 %i.dmj, %i.dmi
  %i.dml = tail call i64 @llvm.umin.i64(i64 %i.dmj, i64 1152921504606846975)
  %i.dmm = select i1 %i.dmk, i64 1152921504606846975, i64 %i.dml ; 3 uses
  %.not.i.i.i.i.i1382 = icmp ne i64 %i.dmm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i1382)
  %i.dmn = shl nuw nsw i64 %i.dmm, 3
  %i.dmo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dmn) #27 ; 8 uses
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 %i.dmg
  store i64 %i.dmd, ptr %i.dmp, align 8
  %.not10.i.i.i.i.i.i.i1383 = icmp eq ptr %.sroa.01486.45, %.sroa.289.45
  br i1 %.not10.i.i.i.i.i.i.i1383, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1391, label %.lr.ph.i.i.i.i.i.i.i1384.preheader

.lr.ph.i.i.i.i.i.i.i1384.preheader:               ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1380
  %i.dmq = ptrtoaddr ptr %i.dmo to i64
  %66 = sub i64 %i.dme, %i.dmf
  %67 = add i64 %66, -8                           ; 2 uses
  %i.dmr = lshr i64 %67, 3
  %i.dms = add nuw nsw i64 %i.dmr, 1              ; 2 uses
  %min.iters.check3565 = icmp ult i64 %67, 56
  %i.dmt = sub i64 %i.dmq, %i.dmf
  %diff.check3563 = icmp ult i64 %i.dmt, 32
  %or.cond3646 = or i1 %min.iters.check3565, %diff.check3563
  br i1 %or.cond3646, label %.lr.ph.i.i.i.i.i.i.i1384.preheader3647, label %vector.ph3566

vector.ph3566:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i1384.preheader
  %n.vec3568 = and i64 %i.dms, 4611686018427387900 ; 3 uses
  %i.dmu = shl i64 %n.vec3568, 3                  ; 2 uses
  %i.dmv = getelementptr i8, ptr %i.dmo, i64 %i.dmu ; 2 uses
  %i.dmw = getelementptr i8, ptr %.sroa.01486.45, i64 %i.dmu
  br label %vector.body3569

vector.body3569:                                  ; preds = %vector.body3569, %vector.ph3566
  %index3570 = phi i64 [ 0, %vector.ph3566 ], [ %index.next3575, %vector.body3569 ] ; 2 uses
  %i.dmx = shl i64 %index3570, 3                  ; 2 uses
  %next.gep3571 = getelementptr i8, ptr %i.dmo, i64 %i.dmx ; 2 uses
  %next.gep3572 = getelementptr i8, ptr %.sroa.01486.45, i64 %i.dmx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.dmy = getelementptr i8, ptr %next.gep3572, i64 16
  %wide.load3573 = load <2 x i64>, ptr %next.gep3572, align 8, !alias.scope !1551, !noalias !1548
  %wide.load3574 = load <2 x i64>, ptr %i.dmy, align 8, !alias.scope !1551, !noalias !1548
  %i.dmz = getelementptr i8, ptr %next.gep3571, i64 16
  store <2 x i64> %wide.load3573, ptr %next.gep3571, align 8, !alias.scope !1548, !noalias !1551
  store <2 x i64> %wide.load3574, ptr %i.dmz, align 8, !alias.scope !1548, !noalias !1551
  %index.next3575 = add nuw i64 %index3570, 4     ; 2 uses
  %i.dna = icmp eq i64 %index.next3575, %n.vec3568
  br i1 %i.dna, label %middle.block3576, label %vector.body3569, !llvm.loop !1553

middle.block3576:                                 ; preds = %vector.body3569
  %cmp.n3577 = icmp eq i64 %i.dms, %n.vec3568
  br i1 %cmp.n3577, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1391, label %.lr.ph.i.i.i.i.i.i.i1384.preheader3647

.lr.ph.i.i.i.i.i.i.i1384.preheader3647:           ; preds = %.lr.ph.i.i.i.i.i.i.i1384.preheader, %middle.block3576
  %.012.i.i.i.i.i.i.i1385.ph = phi ptr [ %i.dmo, %.lr.ph.i.i.i.i.i.i.i1384.preheader ], [ %i.dmv, %middle.block3576 ]
  %.0911.i.i.i.i.i.i.i1386.ph = phi ptr [ %.sroa.01486.45, %.lr.ph.i.i.i.i.i.i.i1384.preheader ], [ %i.dmw, %middle.block3576 ]
  br label %.lr.ph.i.i.i.i.i.i.i1384

.lr.ph.i.i.i.i.i.i.i1384:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1384.preheader3647, %.lr.ph.i.i.i.i.i.i.i1384
  %.012.i.i.i.i.i.i.i1385 = phi ptr [ %i.dnd, %.lr.ph.i.i.i.i.i.i.i1384 ], [ %.012.i.i.i.i.i.i.i1385.ph, %.lr.ph.i.i.i.i.i.i.i1384.preheader3647 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1386 = phi ptr [ %i.dnc, %.lr.ph.i.i.i.i.i.i.i1384 ], [ %.0911.i.i.i.i.i.i.i1386.ph, %.lr.ph.i.i.i.i.i.i.i1384.preheader3647 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.dnb = load i64, ptr %.0911.i.i.i.i.i.i.i1386, align 8, !alias.scope !1551, !noalias !1548
  store i64 %i.dnb, ptr %.012.i.i.i.i.i.i.i1385, align 8, !alias.scope !1548, !noalias !1551
  %i.dnc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1386, i64 8 ; 2 uses
  %i.dnd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1385, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1387 = icmp eq ptr %i.dnc, %.sroa.289.45
  br i1 %.not.i.i.i.i.i.i.i1387, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1391, label %.lr.ph.i.i.i.i.i.i.i1384, !llvm.loop !1554

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1391: ; preds = %.lr.ph.i.i.i.i.i.i.i1384, %middle.block3576, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1380
  %.0.lcssa.i.i.i.i.i.i.i1389 = phi ptr [ %i.dmo, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i1380 ], [ %i.dmv, %middle.block3576 ], [ %i.dnd, %.lr.ph.i.i.i.i.i.i.i1384 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.45, i64 noundef %i.dmg) #28
  %i.dne = getelementptr inbounds nuw [8 x i8], ptr %i.dmo, i64 %i.dmm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1392

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1392: ; preds = %bb.jo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1391
  %.sroa.289.46 = phi ptr [ %i.dne, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1391 ], [ %.sroa.289.45, %bb.jo ]
  %.0.lcssa.i.i.i.i.i.i.i1389.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i1389, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1391 ], [ %.sroa.100.45, %bb.jo ]
  %.sroa.01486.46 = phi ptr [ %i.dmo, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i1391 ], [ %.sroa.01486.45, %bb.jo ] ; 3 uses
  %.sroa.100.46 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1389.pn, i64 8
  %i.dnf = ptrtoint ptr %.sroa.76.34 to i64
  %i.dng = ptrtoint ptr %.sroa.01677.34 to i64    ; 2 uses
  %i.dnh = sub i64 %i.dnf, %i.dng
  %i.dni = ashr exact i64 %i.dnh, 3
  %i.dnj = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.m, ptr noundef nonnull %.sroa.01677.34, i64 noundef %i.dni) #25
  %i.dnk = ptrtoint ptr %.sroa.100.46 to i64
  %i.dnl = ptrtoint ptr %.sroa.01486.46 to i64    ; 2 uses
  %i.dnm = sub i64 %i.dnk, %i.dnl
  %i.dnn = ashr exact i64 %i.dnm, 3
  %i.dno = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.m, ptr noundef nonnull %.sroa.01486.46, i64 noundef %i.dnn) #25
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.k, i64 3008 ; 2 uses
  %i.dnq = load ptr, ptr %i.dnp, align 8
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.dnq, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dnr, align 8
  %i.dns = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 7) #25 ; 2 uses
  %i.dnt = icmp eq ptr %i.dns, null
  br i1 %i.dnt, label %bb.jr, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1393, !prof !5

bb.jr:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1392
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1393

_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1393: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit1392, %bb.jr
  %i.dnu = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.dns, ptr %i.dnj) #25
  %i.dnv = trunc i16 %i.dnu to i1
  br i1 %i.dnv, label %bb.js, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit1397

bb.js:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1393
  %i.dnw = load ptr, ptr %i.dnp, align 8
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnw, i64 192
  %.sroa.0.0.copyload.i.i.i1394 = load ptr, ptr %i.dnx, align 8
  %i.dny = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.m, ptr noundef nonnull @.str.101, i32 noundef 1, i32 noundef 10) #25 ; 2 uses
  %i.dnz = icmp eq ptr %i.dny, null
  br i1 %i.dnz, label %bb.jt, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, !prof !5

bb.jt:                                            ; preds = %bb.js
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %bb.jt, %bb.js
  %i.doa = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.sroa.0.0.copyload.i.i.i1394, ptr %i.dny, ptr %i.dno) #25 ; 0 uses
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit1397

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit1397:     ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm8EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit1393, %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit
  %i.dob = ptrtoint ptr %.sroa.289.46 to i64
  %i.doc = sub i64 %i.dob, %i.dnl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01486.46, i64 noundef %i.doc) #28
  %i.dod = ptrtoint ptr %.sroa.217.34 to i64
  %i.doe = sub i64 %i.dod, %i.dng
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01677.34, i64 noundef %i.doe) #28
  br label %bb.ju

bb.ju:                                            ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i, %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit1397
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4node5Realm14AddBindingDataINS_11http_parser11BindingDataEJEEEPT_N2v85LocalINS6_6ObjectEEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27, !noalias !1555 ; 5 uses
  tail call void @_ZN4node10BaseObjectC2EPNS_5RealmEN2v85LocalINS3_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(73) %i.a, ptr noundef nonnull %0, ptr %1) #25, !noalias !1555
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node11http_parser11BindingDataE, i64 16), ptr %i.a, align 8, !noalias !1555
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false), !noalias !1555
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !noalias !1555
  %i.c = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !noalias !1555 ; 7 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4node18MakeWeakBaseObjectINS_11http_parser11BindingDataEJPNS_5RealmERN2v85LocalINS5_6ObjectEEEEEENS_17BaseObjectPtrImplIT_Lb1EEEDpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_11http_parser11BindingDataELb1EEC1EPS2_E20error_and_abort_args) #25, !noalias !1555
  tail call void @abort() #26, !noalias !1555
  unreachable

_ZN4node18MakeWeakBaseObjectINS_11http_parser11BindingDataEJPNS_5RealmERN2v85LocalINS5_6ObjectEEEEEENS_17BaseObjectPtrImplIT_Lb1EEEDpOT0_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !1555
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !noalias !1555
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.i, label %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit

_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit: ; preds = %_ZN4node18MakeWeakBaseObjectINS_11http_parser11BindingDataEJPNS_5RealmERN2v85LocalINS5_6ObjectEEEEEENS_17BaseObjectPtrImplIT_Lb1EEEDpOT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.thread.i, label %bb.c, !prof !1558

bb.c:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node5Realm14AddBindingDataINS_11http_parser11BindingDataEJEEEPT_N2v85LocalINS6_6ObjectEEEDpOT0_E20error_and_abort_args) #25
  tail call void @abort() #26
  unreachable

_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.i: ; preds = %_ZN4node18MakeWeakBaseObjectINS_11http_parser11BindingDataEJPNS_5RealmERN2v85LocalINS5_6ObjectEEEEEENS_17BaseObjectPtrImplIT_Lb1EEEDpOT0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %_ZNK4node17BaseObjectPtrImplINS_11http_parser11BindingDataELb1EE3getEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.thread.i: ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EEcvbEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.r, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %_ZNK4node17BaseObjectPtrImplINS_11http_parser11BindingDataELb1EE3getEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %_ZNK4node17BaseObjectPtrImplINS_11http_parser11BindingDataELb1EE3getEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 24) #28
  br label %_ZNK4node17BaseObjectPtrImplINS_11http_parser11BindingDataELb1EE3getEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_11http_parser11BindingDataELb1EE3getEv.exit.i.i: ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb1EE3getEv.exit.i, %bb.d, %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  store ptr null, ptr %i.g, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_11http_parser11BindingDataELb1EE3getEv.exit.i.i
  %i.ac = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aa) #25 ; 3 uses
  store ptr %i.ac, ptr %i.g, align 8
end_hunk_3
