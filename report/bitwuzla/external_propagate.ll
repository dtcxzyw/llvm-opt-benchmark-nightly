Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/external_propagate?download=true
inline.NumInlined: 553
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal18external_propagateEv:bb.a
  store <2 x i64> %i.by, ptr %i.k, align 8, !tbaa !199
  invoke void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.027, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !170 ; 2 uses
  store <2 x ptr> %i.bu, ptr %i.l, align 8, !tbaa !200
  store ptr %i.bw, ptr %i.m, align 8, !tbaa !195
  %.not.i.i.i.i.i.i55 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i55, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdlPv(ptr noundef nonnull %i.bz) #20
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57: ; preds = %bb.s, %bb.t
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !197
  %.not39 = icmp eq i64 %i.ca, %i.bt
  br i1 %.not39, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !161
  %.not40 = icmp eq i32 %i.cb, %i.bs
  br i1 %.not40, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = load i64, ptr %i.o, align 8, !tbaa !203
  %i.cd = load ptr, ptr %i.q, align 8, !tbaa !169
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !170
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = icmp uge i64 %i.cc, %i.ci
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57
  %.not49 = phi i1 [ false, %bb.u ], [ false, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit57 ], [ %i.cj, %bb.v ]
  %i.ck = load i8, ptr %i.r, align 4, !tbaa !202, !range !168, !noundef !165
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.thread64, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not41 = icmp ne ptr %i.cm, null               ; 2 uses
  %brmerge = select i1 %.not41, i1 true, i1 %.not49
  br i1 %brmerge, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  %i.co = load i8, ptr %i.r, align 4, !tbaa !202, !range !168, !noundef !165
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.thread64, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not42 = icmp eq ptr %i.cq, null
  br i1 %.not42, label %.sink.split, label %.thread64

bb.aa:                                            ; preds = %bb.x
  br i1 %.not41, label %bb.ac, label %bb.ab

.sink.split:                                      ; preds = %bb.z, %bb.o
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.p, %bb.aa
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 384
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !191 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !193
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(10) %i.ct)
  %i.cy = load <2 x i64>, ptr %i.i, align 8, !tbaa !199
  %i.cz = add nsw <2 x i64> %i.cy, splat (i64 1)
  store <2 x i64> %i.cz, ptr %i.i, align 8, !tbaa !199
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.128 = phi i32 [ %i.cx, %bb.ab ], [ %.027, %bb.aa ]
  %i.da = phi i1 [ true, %bb.ab ], [ false, %bb.aa ]
  br i1 %i.da, label %bb.e, label %.thread64

.thread64:                                        ; preds = %bb.z, %bb.w, %bb.y, %bb.n, %bb.o, %bb.m, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, %bb.ac, %bb.e
  %i.db = load i8, ptr %i.r, align 4, !tbaa !202, !range !168, !noundef !165
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %.thread64
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not43 = icmp eq ptr %i.dd, null
  br i1 %.not43, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.t, align 2, !tbaa !204
  %i.de = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 384
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !191 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !193
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(10) %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %i.t), !inline_history !205
  %i.dl = load i64, ptr %i.i, align 8, !tbaa !206
  %i.dm = add nsw i64 %i.dl, 1
  store i64 %i.dm, ptr %i.i, align 8, !tbaa !206
  %storemerge.in73 = load i64, ptr %i.u, align 8, !tbaa !207
  %storemerge74 = add nsw i64 %storemerge.in73, 1
  store i64 %storemerge74, ptr %i.u, align 8, !tbaa !207
  br i1 %i.dk, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ae, %bb.an
  %i.dn = load i32, ptr %i.a, align 4, !tbaa !161
  %i.do = load i64, ptr %i.b, align 8, !tbaa !197
  tail call void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0, i1 noundef zeroext false)
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !197
  %.not44 = icmp eq i64 %i.dp, %i.do
  br i1 %.not44, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !161
  %.not45 = icmp eq i32 %i.dq, %i.dn
  br i1 %.not45, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dr = load i64, ptr %i.o, align 8, !tbaa !203
  %i.ds = load ptr, ptr %i.q, align 8, !tbaa !169
  %i.dt = load ptr, ptr %i.p, align 8, !tbaa !170
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 2
  %i.dy = icmp ult i64 %i.dr, %i.dx
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph
  %i.dz = phi i1 [ true, %bb.af ], [ true, %.lr.ph ], [ %i.dy, %bb.ag ]
  %i.ea = load i8, ptr %i.r, align 4, !tbaa !202, !range !168, !noundef !165
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not46 = icmp eq ptr %i.ec, null
  br i1 %.not46, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dz, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ed = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  %i.ee = load i8, ptr %i.r, align 4, !tbaa !202, !range !168, !noundef !165
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not47 = icmp eq ptr %i.eg, null
  br i1 %.not47, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am
  store i8 0, ptr %i.t, align 2, !tbaa !204
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 384
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !191 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !193
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(10) %i.ej, ptr noundef nonnull align 1 dereferenceable(1) %i.t), !inline_history !205
  %i.eo = load i64, ptr %i.i, align 8, !tbaa !206
  %i.ep = add nsw i64 %i.eo, 1
  store i64 %i.ep, ptr %i.i, align 8, !tbaa !206
  %storemerge.in = load i64, ptr %i.u, align 8, !tbaa !207
  %storemerge = add nsw i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.u, align 8, !tbaa !207
  br i1 %i.en, label %.lr.ph, label %.thread68.loopexit, !llvm.loop !234

.critedge:                                        ; preds = %bb.c, %.thread68.loopexit, %.lr.ph94, %bb.b, %bb.ae, %bb.ad, %.thread64, %bb.al, %bb.ai, %bb.ah, %bb.ak, %bb.a
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !197
  %i.er = icmp ult i64 %i.c, %i.eq
  br i1 %i.er, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.critedge
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 1, ptr %i.es, align 1, !tbaa !238
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not48 = icmp eq ptr %i.et, null
  ret i1 %.not48
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !167, !range !168, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  %.not12 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !168
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not12, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !168
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond17 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond17, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !169
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !171  ; 2 uses
  %.not = icmp ult i64 %i.s, %i.q
  br i1 %.not, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %2 = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %3 = phi i64 [ %i.s, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.z = add nuw i64 %3, 1                        ; 3 uses
  store i64 %i.z, ptr %i.r, align 8, !tbaa !171
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %3
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14 ; 2 uses
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !14
  %.not23 = icmp eq i32 %i.ah, 0
  br i1 %.not23, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.d, !llvm.loop !239

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !170
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14 ; 2 uses
  %i.al = icmp slt i32 %i.ac, 0
  %i.am = sub nsw i32 0, %i.ak
  %spec.select.i = select i1 %i.al, i32 %i.am, i32 %i.ak ; 2 uses
  %.not.i = icmp eq ptr %2, %i.y
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %spec.select.i, ptr %2, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store ptr %i.an, ptr %i.v, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.y to i64
  %i.ap = ptrtoint ptr %i.x to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 2305843009213693951)
  %i.aw = select i1 %i.au, i64 2305843009213693951, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #19
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store i32 %spec.select.i, ptr %i.az, align 4, !tbaa !14
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.x, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ay, ptr %1, align 8, !tbaa !170
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !169
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw ; 2 uses
  store ptr %i.bc, ptr %i.w, align 8, !tbaa !195
  %.pre = load i64, ptr %i.r, align 8, !tbaa !171
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.c
  %i.bd = phi i64 [ %i.z, %bb.e ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.be = phi ptr [ %i.x, %bb.e ], [ %i.ay, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.x, %bb.c ]
  %i.bf = phi ptr [ %i.y, %bb.e ], [ %i.bc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.y, %bb.c ]
  %i.bg = phi ptr [ %i.an, %bb.e ], [ %i.bb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %2, %bb.c ]
  %i.bh = icmp ult i64 %i.bd, %i.q
  br i1 %i.bh, label %bb.c, label %._crit_edge

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge, %bb.g
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  %.pre25 = load ptr, ptr %1, align 8, !tbaa !170
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.bi = phi ptr [ %i.x, %.loopexit.split-lp.loopexit ], [ %.pre25, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp24, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i20 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.l

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !172
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 384
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !191 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !193
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(10) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %._crit_edge
  %i.bq = load ptr, ptr %1, align 8, !tbaa !170   ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.m

bb.l:                                             ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %.loopexit.split-lp, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %lpad.phi

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) initializes((992, 994)) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !200
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4032 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !201
  %i.h = add nsw i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !201
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.k = zext nneg i32 %i.i to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14   ; 2 uses
  %i.o = icmp slt i32 %1, 0
  %i.p = sub nsw i32 0, %i.n
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 %i.n
  br label %bb.e

bb.c:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %spec.select.i, %bb.b ], [ %2, %bb.a ]
  invoke void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.0, i1 noundef zeroext %3)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  store <2 x ptr> %i.b, ptr %i.a, align 8, !tbaa !200
  store ptr %i.e, ptr %i.d, align 8, !tbaa !195
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !208
  ret ptr %i.t
}

declare void @_ZN7CaDiCaL8Internal22search_assign_externalEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal19ask_external_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) initializes((994, 995)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 994 ; 2 uses
  store i8 0, ptr %i.a, align 2, !tbaa !204
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(10) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) initializes((992, 994)) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191  ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !242, !range !168, !noundef !165
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 994
  store i8 %i.g, ptr %i.h, align 2, !tbaa !204
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(10) %i.e, i32 noundef %1)
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(10) %i.e)
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.c ]  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !209
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !210  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !211
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !170  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !169
  %.not.i.i13 = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i13, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  store i8 %i.a, ptr %i.z, align 8, !tbaa !212
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 993 ; 2 uses
  store i8 1, ptr %i.aa, align 1, !tbaa !213
  %.not1218 = icmp eq i32 %.0, 0
  br i1 %.not1218, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 4 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.119.us = phi i32 [ %i.aj, %bb.e ], [ %.0, %.lr.ph ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !172
  invoke void @_ZN7CaDiCaL8External3addEi(ptr noundef nonnull align 8 dereferenceable(568) %i.ac, i32 noundef %.119.us)
          to label %bb.d unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !172
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 384
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !191 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !193
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(10) %i.af)
          to label %bb.e unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not12.us = icmp eq i32 %i.aj, 0
  br i1 %.not12.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !240
end_hunk_0
