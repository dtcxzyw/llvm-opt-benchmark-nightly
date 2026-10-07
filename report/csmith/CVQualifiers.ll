Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/CVQualifiers?download=true
inline.NumInlined: 806
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12CVQualifiers14match_indirectERKS_:bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.ac, %bb.c ], [ %i.ag, %_ZN12CVQualifiersD2Ev.exit ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers19indirect_qualifiersEi(ptr dead_on_unwind noalias writable sret(%class.CVQualifiers) align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !37   ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12CVQualifiers, i64 16), ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29, !range !37, !noundef !38
  store i8 %i.h, ptr %i.f, align 1, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_ZN12CVQualifiersC2ERKS_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.u
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.s) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.q, %bb.r, %bb.g, %bb.h, %bb.c, %bb.d, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.o ], [ %i.m, %bb.c ], [ %i.af, %bb.g ], [ %i.m, %bb.d ], [ %i.af, %bb.h ], [ %i.bo, %bb.r ], [ %i.bo, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.w = icmp slt i32 %2, 0
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12CVQualifiers, i64 16), ptr %0, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29, !range !37, !noundef !38
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_ZN12CVQualifiersC2ERKS_.exit14 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i12, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = ashr exact i64 %i.al, 3
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.an
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.al) #19
  br label %common.resume

_ZN12CVQualifiersC2ERKS_.exit14:                  ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.aq, %i.as
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.2.0.copyload.i11.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 4 uses
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN12CVQualifiersC2ERKS_.exit14
  %i.at = add i32 %.sroa.2.0.copyload.i11.i.i, 1
  store i32 %i.at, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !31
  %i.au = icmp eq i32 %.sroa.2.0.copyload.i11.i.i, 63
  br i1 %i.au, label %bb.j, label %_ZNSt13_Bit_iteratorppEi.exit.i.i

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i:                ; preds = %bb.j, %bb.i
  %i.aw = zext nneg i32 %.sroa.2.0.copyload.i11.i.i to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = xor i64 %i.ax, -1
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !35
  %i.ba = and i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.k:                                             ; preds = %_ZN12CVQualifiersC2ERKS_.exit14
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr %i.aq, i32 %.sroa.2.0.copyload.i11.i.i, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i unwind label %bb.o

_ZNSt6vectorIbSaIbEE9push_backEb.exit.i:          ; preds = %bb.k, %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32
  %.not.i2.i = icmp eq ptr %i.bc, %i.be
  %.sroa.2.0..sroa_idx.i.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.sroa.2.0.copyload.i11.i4.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i3.i, align 8 ; 4 uses
  br i1 %.not.i2.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i
  %i.bf = add i32 %.sroa.2.0.copyload.i11.i4.i, 1
  store i32 %i.bf, ptr %.sroa.2.0..sroa_idx.i.i3.i, align 8, !tbaa !31
  %i.bg = icmp eq i32 %.sroa.2.0.copyload.i11.i4.i, 63
  br i1 %i.bg, label %bb.m, label %_ZNSt13_Bit_iteratorppEi.exit.i5.i

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i3.i, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bh, ptr %i.bb, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i5.i

_ZNSt13_Bit_iteratorppEi.exit.i5.i:               ; preds = %bb.m, %bb.l
  %i.bi = zext nneg i32 %.sroa.2.0.copyload.i11.i4.i to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = xor i64 %i.bj, -1
  %i.bl = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.bm = and i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.bc, align 8, !tbaa !35
  br label %_ZN12CVQualifiersC2ERKS_.exit

bb.n:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr %i.bc, i32 %.sroa.2.0.copyload.i11.i4.i, i1 noundef zeroext false)
          to label %_ZN12CVQualifiersC2ERKS_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12CVQualifiersD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #21
  br label %common.resume

bb.p:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %.lr.ph.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i16, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !32 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bw
  tail call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.bu) #19
  br label %common.resume

.lr.ph.i:                                         ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %.promoted.i = load i32, ptr %i.by, align 8, !tbaa !31 ; 2 uses
  %.promoted5.i = load ptr, ptr %i.bz, align 8    ; 2 uses
  %.promoted6.i = load i32, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %.promoted8.i = load ptr, ptr %i.cb, align 8    ; 2 uses
  %i.cc = icmp eq i32 %2, 1
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %2, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1, %.lr.ph.i.new
  %i.cd = phi ptr [ %.promoted8.i, %.lr.ph.i.new ], [ %i.cz, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1 ] ; 2 uses
  %i.ce = phi i32 [ %.promoted6.i, %.lr.ph.i.new ], [ %i.da, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1 ] ; 2 uses
  %i.cf = phi ptr [ %.promoted5.i, %.lr.ph.i.new ], [ %i.cu, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1 ] ; 2 uses
  %i.cg = phi i32 [ %.promoted.i, %.lr.ph.i.new ], [ %i.cv, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1 ]
  %i.ch = add i32 %i.cg, -1
  %i.ci = icmp eq i32 %i.cg, 0
  br i1 %i.ci, label %bb.t, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i

_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i:           ; preds = %bb.t, %bb.s
  %i.ck = phi ptr [ %i.cf, %bb.s ], [ %i.cj, %bb.t ] ; 2 uses
  %i.cl = phi i32 [ %i.ch, %bb.s ], [ 63, %bb.t ] ; 2 uses
  %i.cm = add i32 %i.ce, -1
  %i.cn = icmp eq i32 %i.ce, 0
  br i1 %i.cn, label %bb.u, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i

bb.u:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i
  %i.co = getelementptr inbounds i8, ptr %i.cd, i64 -8 ; 2 uses
  store ptr %i.co, ptr %i.cb, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i

_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i:          ; preds = %bb.u, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i
  %i.cp = phi ptr [ %i.cd, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i ], [ %i.co, %bb.u ] ; 2 uses
  %i.cq = phi i32 [ %i.cm, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i ], [ 63, %bb.u ] ; 2 uses
  %i.cr = add i32 %i.cl, -1
  %i.cs = icmp eq i32 %i.cl, 0
  br i1 %i.cs, label %bb.v, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.1

bb.v:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i
  %i.ct = getelementptr inbounds i8, ptr %i.ck, i64 -8 ; 2 uses
  store ptr %i.ct, ptr %i.bz, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.1

_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.1:         ; preds = %bb.v, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i
  %i.cu = phi ptr [ %i.ck, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i ], [ %i.ct, %bb.v ] ; 2 uses
  %i.cv = phi i32 [ %i.cr, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i ], [ 63, %bb.v ] ; 3 uses
  %i.cw = add i32 %i.cq, -1
  %i.cx = icmp eq i32 %i.cq, 0
  br i1 %i.cx, label %bb.w, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1

bb.w:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.1
  %i.cy = getelementptr inbounds i8, ptr %i.cp, i64 -8 ; 2 uses
  store ptr %i.cy, ptr %i.cb, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1

_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1:        ; preds = %bb.w, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.1
  %i.cz = phi ptr [ %i.cp, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.1 ], [ %i.cy, %bb.w ] ; 2 uses
  %i.da = phi i32 [ %i.cw, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.1 ], [ 63, %bb.w ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa, label %bb.s, !llvm.loop !1

_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa: ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.i.1
  %lcmp.mod.not = trunc i32 %2 to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_ZN12CVQualifiers17remove_qualifiersEi.exit

.epil.preheader:                                  ; preds = %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi ptr [ %.promoted8.i, %.lr.ph.i ], [ %i.cz, %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa ]
  %.epil.init32 = phi i32 [ %.promoted6.i, %.lr.ph.i ], [ %i.da, %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa ] ; 2 uses
  %.epil.init34 = phi ptr [ %.promoted5.i, %.lr.ph.i ], [ %i.cu, %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa ]
  %.epil.init36 = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.cv, %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.db = add i32 %.epil.init36, -1
  %i.dc = icmp eq i32 %.epil.init36, 0
  br i1 %i.dc, label %bb.x, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.epil

bb.x:                                             ; preds = %.epil.preheader
  %i.dd = getelementptr inbounds i8, ptr %.epil.init34, i64 -8
  store ptr %i.dd, ptr %i.bz, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.epil

_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.epil:      ; preds = %bb.x, %.epil.preheader
  %i.de = phi i32 [ %i.db, %.epil.preheader ], [ 63, %bb.x ] ; 2 uses
  %i.df = add i32 %.epil.init32, -1
  %i.dg = icmp eq i32 %.epil.init32, 0
  br i1 %i.dg, label %bb.y, label %_ZN12CVQualifiers17remove_qualifiersEi.exit

bb.y:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.epil
  %i.dh = getelementptr inbounds i8, ptr %.epil.init, i64 -8
  store ptr %i.dh, ptr %i.cb, align 8, !tbaa !30
  br label %_ZN12CVQualifiers17remove_qualifiersEi.exit

_ZN12CVQualifiers17remove_qualifiersEi.exit:      ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.epil, %bb.y, %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa
  %.lcssa30 = phi i32 [ %i.da, %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa ], [ %i.df, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.epil ], [ 63, %bb.y ]
  %.lcssa = phi i32 [ %i.cv, %_ZN12CVQualifiers17remove_qualifiersEi.exit.unr-lcssa ], [ %i.de, %bb.y ], [ %i.de, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.i.epil ]
  store i32 %.lcssa, ptr %i.by, align 8, !tbaa !31
  store i32 %.lcssa30, ptr %i.ca, align 8, !tbaa !31
  br label %_ZN12CVQualifiersC2ERKS_.exit

_ZN12CVQualifiersC2ERKS_.exit:                    ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i5.i, %bb.n, %bb.b, %_ZN12CVQualifiers17remove_qualifiersEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN9CGOptions17volatile_pointersEv()
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN9CGOptions16global_variablesEv()
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %i.f to i64
  %i.m = add nsw i64 %i.k, %i.l                   ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04 = phi i64 [ %i.x, %.lr.ph ], [ 1, %bb.c ]  ; 4 uses
  %i.o = sdiv i64 %.04, 64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.o
  %i.q = and i64 %.04, -9223372036854775745
  %i.r = icmp ugt i64 %i.q, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.r, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.s = and i64 %.04, 63
  %i.t = shl nuw i64 1, %i.s
  %i.u = xor i64 %i.t, -1
  %i.v = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.w = and i64 %i.v, %i.u
  store i64 %i.w, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.x = add nuw i64 %.04, 1                      ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.m
  br i1 %i.y, label %.lr.ph, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN9CGOptions17volatile_pointersEv() local_unnamed_addr #6

declare noundef zeroext i1 @_ZN9CGOptions16global_variablesEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12CVQualifiers18make_scalar_constsERSt6vectorIbSaIbEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN9CGOptions14const_pointersEv()
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext i32 %i.e to i64
  %i.l = add nsw i64 %i.j, %i.k                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.04 = phi i64 [ %i.w, %.lr.ph ], [ 1, %.preheader ] ; 4 uses
  %i.n = sdiv i64 %.04, 64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.n
  %i.p = and i64 %.04, -9223372036854775745
  %i.q = icmp ugt i64 %i.p, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.q, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.o, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.r = and i64 %.04, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = xor i64 %i.s, -1
  %i.u = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.v = and i64 %i.u, %i.t
  store i64 %i.v, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.w = add nuw i64 %.04, 1                      ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.l
  br i1 %i.x, label %.lr.ph, label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN9CGOptions14const_pointersEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers17random_qualifiersEbN6Effect6AccessERK9CGContext(ptr dead_on_unwind noalias writable sret(%class.CVQualifiers) align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 19 uses
  %6 = alloca %"class.std::vector", align 8       ; 18 uses
  %7 = alloca %"class.std::vector", align 8       ; 6 uses
  %8 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  store ptr null, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !28, !range !37, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29, !range !37, !noundef !38
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12CVQualifiers, i64 16), ptr %0, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.n, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.m, ptr %i.o, align 1, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.w, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  br label %_ZN12CVQualifiersC2ERKSt6vectorIbSaIbEES4_.exit

bb.c:                                             ; preds = %bb.aj, %bb.ad, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit32, %bb.x, %bb.w, %bb.t, %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %2, label %.preheader, label %bb.i
end_hunk_0
begin_hunk_1_@_ZNK12CVQualifiers23random_looser_volatilesEv:bb.a

.loopexit.split-lp57:                             ; preds = %bb.e, %_Z19RegularVolatileProbv.exit.peel, %bb.l
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !30  ; 7 uses
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i36 = icmp eq ptr %i.bn, %i.bo
  %.sroa.2.0.copyload.i11.i38 = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i36, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = add i32 %.sroa.2.0.copyload.i11.i38, 1
  store i32 %i.bp, ptr %i.c, align 8, !tbaa !31
  %i.bq = icmp eq i32 %.sroa.2.0.copyload.i11.i38, 63
  br i1 %i.bq, label %bb.ab, label %_ZNSt13_Bit_iteratorppEi.exit.i39

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.br, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i39

_ZNSt13_Bit_iteratorppEi.exit.i39:                ; preds = %bb.ab, %bb.aa
  %i.bs = zext nneg i32 %.sroa.2.0.copyload.i11.i38 to i64
  %i.bt = shl nuw i64 1, %i.bs                    ; 2 uses
  br i1 %i.bl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i39
  %i.bu = load i64, ptr %i.bn, align 8, !tbaa !35
  %i.bv = or i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ad:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i39
  %i.bw = xor i64 %i.bt, -1
  %i.bx = load i64, ptr %i.bn, align 8, !tbaa !35
  %i.by = and i64 %i.bx, %i.bw
  store i64 %i.by, ptr %i.bn, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ae:                                            ; preds = %bb.z
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.bn, i32 %.sroa.2.0.copyload.i11.i38, i1 noundef zeroext %i.bl)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %.loopexit56

_ZNSt6vectorIbSaIbEE9push_backEb.exit41:          ; preds = %bb.y, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.ae, %bb.ac, %bb.ad, %bb.t, %bb.s, %bb.u
  %i.bz = add nuw i64 %.052, 1                    ; 2 uses
  %.not23 = icmp ult i64 %i.bz, %i.p
  br i1 %.not23, label %.peel.next, label %.critedge, !llvm.loop !128

.critedge.sink.split:                             ; preds = %bb.k, %bb.j
  %.sink = phi i64 [ %i.ah, %bb.j ], [ %i.aj, %bb.k ]
  store i64 %.sink, ptr %i.y, align 8, !tbaa !35
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %.critedge.sink.split, %bb.l, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel, %.preheader
  %i.ca = invoke noundef zeroext i1 @_ZN9CGOptions17volatile_pointersEv()
          to label %.noexc42 unwind label %bb.o

.noexc42:                                         ; preds = %.critedge
  br i1 %i.ca, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc42
  %i.cb = invoke noundef zeroext i1 @_ZN9CGOptions16global_variablesEv()
          to label %.noexc43 unwind label %bb.o

.noexc43:                                         ; preds = %bb.af
  br i1 %i.cb, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit, label %bb.ag

bb.ag:                                            ; preds = %.noexc43, %.noexc42
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !31
  %i.ce = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = shl nsw i64 %i.ch, 3
  %i.cj = zext i32 %i.cd to i64
  %i.ck = add nsw i64 %i.ci, %i.cj                ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.i, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.i
  %.04.i = phi i64 [ %i.cv, %.lr.ph.i ], [ 1, %bb.ag ] ; 4 uses
  %i.cm = sdiv i64 %.04.i, 64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cm
  %i.co = and i64 %.04.i, -9223372036854775745
  %i.cp = icmp ugt i64 %i.co, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.cp, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cn, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.cq = and i64 %.04.i, 63
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = xor i64 %i.cr, -1
  %i.ct = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !35
  %i.cu = and i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !35
  %i.cv = add nuw i64 %.04.i, 1                   ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.ck
  br i1 %i.cw, label %.lr.ph.i, label %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit, !llvm.loop !2

_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit: ; preds = %.lr.ph.i, %bb.ag, %.noexc43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.ah:                                            ; preds = %bb.n
  %.pr = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %.pr to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = ashr exact i64 %i.da, 3
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.dc
  tail call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.da) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN12CVQualifiers21make_scalar_volatilesERSt6vectorIbSaIbEE.exit, %_ZNSt6vectorIbSaIbEE9push_backEb.exit41, %.loopexit55, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.aj:                                            ; preds = %.loopexit56, %.loopexit.split-lp57, %.loopexit, %.loopexit.split-lp, %bb.o
  %.pn25 = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit58, %.loopexit56 ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp57 ]
  %i.de = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.de, null
  br i1 %.not.i.i48, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit49, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dk
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.di) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit49

_ZNSt13_Bvector_baseISaIbEED2Ev.exit49:           ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn25
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers25random_stricter_volatilesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 17 uses
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  store ptr null, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o                   ; 5 uses
  %i.q = invoke noundef zeroext i1 @_ZN9CGOptions22match_exact_qualifiersEv()
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not2461.not = icmp eq i64 %i.p, 0
  br i1 %.not2461.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.t = load i64, ptr %i.s, align 8, !tbaa !35
  %i.u = trunc i64 %i.t to i1                     ; 2 uses
  %.not83 = icmp ne i64 %i.p, 1
  %or.cond.not = select i1 %i.u, i1 true, i1 %.not83
  br i1 %or.cond.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.w = load i64, ptr %i.v, align 8, !tbaa !35
  %.not60.peel = trunc i64 %i.w to i1
  br i1 %.not60.peel, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.x = invoke noundef zeroext i1 @_ZN9CGOptions20allow_const_volatileEv()
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !30   ; 5 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i34.peel = icmp eq ptr %i.y, %i.z
  %.sroa.2.0.copyload.i11.i36.peel = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i34.peel, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i32 %.sroa.2.0.copyload.i11.i36.peel, 1
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !31
  %i.ab = icmp eq i32 %.sroa.2.0.copyload.i11.i36.peel, 63
  br i1 %i.ab, label %bb.h, label %_ZNSt13_Bit_iteratorppEi.exit.i37.peel

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i37.peel

_ZNSt13_Bit_iteratorppEi.exit.i37.peel:           ; preds = %bb.h, %bb.g
  %i.ad = zext nneg i32 %.sroa.2.0.copyload.i11.i36.peel to i64
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = xor i64 %i.ae, -1
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !35
  %i.ah = and i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !35
  br label %.critedge

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.y, i32 %.sroa.2.0.copyload.i11.i36.peel, i1 noundef zeroext false)
          to label %.critedge unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.e, %bb.c
  %i.ai = invoke noundef i32 @_ZN9DepthSpec20depth_guard_by_depthEi(i32 noundef 1)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %.not.peel = icmp eq i32 %i.ai, 0
  br i1 %.not.peel, label %bb.l, label %.loopexit65

bb.l:                                             ; preds = %bb.k
  %i.aj = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 8)
          to label %_Z19RegularVolatileProbv.exit.peel unwind label %.loopexit.split-lp67

_Z19RegularVolatileProbv.exit.peel:               ; preds = %bb.l
  %i.ak = invoke noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.aj, ptr noundef null, ptr noundef null)
          to label %bb.m unwind label %.loopexit.split-lp67 ; 2 uses

bb.m:                                             ; preds = %_Z19RegularVolatileProbv.exit.peel
  %i.al = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !40
  %.not23.peel = icmp eq i32 %i.al, 0
  br i1 %.not23.peel, label %bb.n, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit50

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !30  ; 7 uses
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i45.peel = icmp eq ptr %i.am, %i.an
  %.sroa.2.0.copyload.i11.i47.peel = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i45.peel, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = add i32 %.sroa.2.0.copyload.i11.i47.peel, 1
  store i32 %i.ao, ptr %i.c, align 8, !tbaa !31
  %i.ap = icmp eq i32 %.sroa.2.0.copyload.i11.i47.peel, 63
  br i1 %i.ap, label %bb.p, label %_ZNSt13_Bit_iteratorppEi.exit.i48.peel

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i48.peel

_ZNSt13_Bit_iteratorppEi.exit.i48.peel:           ; preds = %bb.p, %bb.o
  %i.ar = zext nneg i32 %.sroa.2.0.copyload.i11.i47.peel to i64
  %i.as = shl nuw i64 1, %i.ar                    ; 2 uses
  br i1 %i.ak, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i48.peel
  %i.at = xor i64 %i.as, -1
  %i.au = load i64, ptr %i.am, align 8, !tbaa !35
  %i.av = and i64 %i.au, %i.at
  store i64 %i.av, ptr %i.am, align 8, !tbaa !35
  br label %.critedge

bb.r:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i48.peel
  %i.aw = load i64, ptr %i.am, align 8, !tbaa !35
  %i.ax = or i64 %i.aw, %i.as
  store i64 %i.ax, ptr %i.am, align 8, !tbaa !35
  br label %.critedge

bb.s:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.am, i32 %.sroa.2.0.copyload.i11.i47.peel, i1 noundef zeroext %i.ak)
          to label %.critedge unwind label %.loopexit.split-lp67

bb.t:                                             ; preds = %.lr.ph
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr null, i32 0, i1 noundef zeroext %i.u)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel unwind label %.loopexit.split-lp

_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel:       ; preds = %bb.t
  %.not24.peel.not = icmp eq i64 %i.p, 1
  br i1 %.not24.peel.not, label %.critedge, label %.peel.next

bb.u:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.at unwind label %bb.v

bb.v:                                             ; preds = %bb.ar, %.critedge, %bb.u, %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.peel.next:                                       ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.062 = phi i64 [ %i.df, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ 1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.peel ] ; 5 uses
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.ba = sdiv i64 %.062, 64                      ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = and i64 %.062, -9223372036854775745
  %i.bd = icmp ugt i64 %i.bc, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bd, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bb, i64 %storemerge.idx.i.i.i.i.i
  %i.be = and i64 %.062, 63
  %i.bf = shl nuw i64 1, %i.be                    ; 2 uses
  %i.bg = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.bh = and i64 %i.bg, %i.bf
  %i.bi = icmp ne i64 %i.bh, 0                    ; 3 uses
  %i.bj = sub nuw i64 %i.p, %.062
  %i.bk = icmp ugt i64 %i.bj, 2
  %or.cond87 = select i1 %i.bi, i1 true, i1 %i.bk
  br i1 %or.cond87, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %.peel.next
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !30  ; 7 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.bl, %i.bm
  %.sroa.2.0.copyload.i11.i = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i, label %.invoke, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.bn, ptr %i.c, align 8, !tbaa !31
  %i.bo = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.bo, label %bb.y, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.y, %bb.x
  %i.bq = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.br = shl nuw i64 1, %i.bq                    ; 2 uses
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !35
  %i.bt = or i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.aa:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.bu = xor i64 %i.br, -1
  %i.bv = load i64, ptr %i.bl, align 8, !tbaa !35
  %i.bw = and i64 %i.bv, %i.bu
  store i64 %i.bw, ptr %i.bl, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

.invoke:                                          ; preds = %bb.w, %bb.ae
  %i.bx = phi ptr [ %i.cf, %bb.ae ], [ %i.bl, %bb.w ]
  %i.by = phi i32 [ %.sroa.2.0.copyload.i11.i36, %bb.ae ], [ %.sroa.2.0.copyload.i11.i, %bb.w ]
  %i.bz = phi i1 [ false, %bb.ae ], [ %i.bi, %bb.w ]
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.bx, i32 %i.by, i1 noundef zeroext %i.bz)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %.loopexit

.loopexit:                                        ; preds = %.invoke, %bb.ac, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.d, %bb.i, %bb.j, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ab:                                            ; preds = %.peel.next
  %i.ca = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ba
  %storemerge.i.i.i.i.i33 = getelementptr inbounds i8, ptr %i.cb, i64 %storemerge.idx.i.i.i.i.i
  %i.cc = load i64, ptr %storemerge.i.i.i.i.i33, align 8, !tbaa !35
  %i.cd = and i64 %i.cc, %i.bf
  %.not60 = icmp eq i64 %i.cd, 0
  br i1 %.not60, label %bb.ah, label %bb.ac
end_hunk_1
begin_hunk_2_@_ZNK12CVQualifiers21random_add_qualifiersEb:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.q) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.c, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %.pn17, %bb.ac ], [ %i.k, %bb.c ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN12CVQualifiersC2ERKS_.exit:                    ; preds = %bb.a
  %i.u = invoke noundef zeroext i1 @_ZN9CGOptions22match_exact_qualifiersEv()
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZN12CVQualifiersC2ERKS_.exit
  br i1 %i.u, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.w, %i.y
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.2.0.copyload.i11.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 4 uses
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add i32 %.sroa.2.0.copyload.i11.i.i, 1
  store i32 %i.z, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !31
  %i.aa = icmp eq i32 %.sroa.2.0.copyload.i11.i.i, 63
  br i1 %i.aa, label %bb.g, label %_ZNSt13_Bit_iteratorppEi.exit.i.i

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i:                ; preds = %bb.g, %bb.f
  %i.ac = zext nneg i32 %.sroa.2.0.copyload.i11.i.i to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = xor i64 %i.ad, -1
  %i.af = load i64, ptr %i.w, align 8, !tbaa !35
  %i.ag = and i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.w, align 8, !tbaa !35
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.h:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr %i.w, i32 %.sroa.2.0.copyload.i11.i.i, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i unwind label %bb.l

_ZNSt6vectorIbSaIbEE9push_backEb.exit.i:          ; preds = %bb.h, %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32
  %.not.i2.i = icmp eq ptr %i.ai, %i.ak
  %.sroa.2.0..sroa_idx.i.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.sroa.2.0.copyload.i11.i4.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i3.i, align 8 ; 4 uses
  br i1 %.not.i2.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i
  %i.al = add i32 %.sroa.2.0.copyload.i11.i4.i, 1
  store i32 %i.al, ptr %.sroa.2.0..sroa_idx.i.i3.i, align 8, !tbaa !31
  %i.am = icmp eq i32 %.sroa.2.0.copyload.i11.i4.i, 63
  br i1 %i.am, label %bb.j, label %_ZNSt13_Bit_iteratorppEi.exit.i5.i

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i3.i, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !30
  br label %_ZNSt13_Bit_iteratorppEi.exit.i5.i

_ZNSt13_Bit_iteratorppEi.exit.i5.i:               ; preds = %bb.j, %bb.i
  %i.ao = zext nneg i32 %.sroa.2.0.copyload.i11.i4.i to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = xor i64 %i.ap, -1
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !35
  %i.as = and i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !35
  br label %_ZN12CVQualifiers14add_qualifiersEbb.exit

bb.k:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr %i.ai, i32 %.sroa.2.0.copyload.i11.i4.i, i1 noundef zeroext false)
          to label %_ZN12CVQualifiers14add_qualifiersEbb.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.p, %bb.n, %_ZN12CVQualifiersC2ERKS_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.m:                                             ; preds = %bb.d
  br i1 %2, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.au = invoke noundef i32 @_ZN9DepthSpec20depth_guard_by_depthEi(i32 noundef 1)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  %.not13 = icmp eq i32 %i.au, 0
  br i1 %.not13, label %bb.r, label %_ZN12CVQualifiers14add_qualifiersEbb.exit

bb.p:                                             ; preds = %bb.m
  %i.av = invoke noundef i32 @_ZN9DepthSpec20depth_guard_by_depthEi(i32 noundef 2)
          to label %bb.q unwind label %bb.l

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.r, label %_ZN12CVQualifiers14add_qualifiersEbb.exit

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.aw = invoke noundef zeroext i1 @_ZN9CGOptions14const_pointersEv()
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.aw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.u, %_Z16RegularConstProbv.exit, %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  %i.ay = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 9)
          to label %_Z16RegularConstProbv.exit unwind label %bb.t

_Z16RegularConstProbv.exit:                       ; preds = %bb.u
  %i.az = invoke noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.ay, ptr noundef null, ptr noundef null)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %_Z16RegularConstProbv.exit, %bb.s
  %.07 = phi i1 [ false, %bb.s ], [ %i.az, %_Z16RegularConstProbv.exit ]
  %i.ba = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !40
  %.not14 = icmp eq i32 %i.ba, 0
  br i1 %.not14, label %bb.w, label %_ZN12CVQualifiers14add_qualifiersEbb.exit

bb.w:                                             ; preds = %bb.v
  br i1 %2, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = invoke noundef zeroext i1 @_ZN9CGOptions17volatile_pointersEv()
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  br i1 %i.bb, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.aa, %.thread, %_Z19RegularVolatileProbv.exit, %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.bd = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 8)
          to label %_Z19RegularVolatileProbv.exit unwind label %bb.z

_Z19RegularVolatileProbv.exit:                    ; preds = %bb.aa
  %i.be = invoke noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.bd, ptr noundef null, ptr noundef null)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %_Z19RegularVolatileProbv.exit, %bb.y
  %.0.ph = phi i1 [ %i.be, %_Z19RegularVolatileProbv.exit ], [ false, %bb.y ]
  %.pr = load i32, ptr @_ZN5Error8r_error_E, align 4, !tbaa !40
  %.not15 = icmp eq i32 %.pr, 0
  br i1 %.not15, label %.thread, label %_ZN12CVQualifiers14add_qualifiersEbb.exit

.thread:                                          ; preds = %bb.w, %bb.ab
  %.024 = phi i1 [ %.0.ph, %bb.ab ], [ false, %bb.w ]
  invoke void @_ZN12CVQualifiers14add_qualifiersEbb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %.07, i1 noundef zeroext %.024)
          to label %_ZN12CVQualifiers14add_qualifiersEbb.exit unwind label %bb.z

_ZN12CVQualifiers14add_qualifiersEbb.exit:        ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i5.i, %bb.k, %bb.o, %bb.q, %bb.ab, %.thread, %bb.v
  ret void

bb.ac:                                            ; preds = %bb.t, %bb.z, %bb.l
  %.pn17 = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.bc, %bb.z ], [ %i.ax, %bb.t ]
  tail call void @_ZN12CVQualifiersD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #21
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN12CVQualifiers17remove_qualifiersEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %bb.d

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !31 ; 2 uses
  %.promoted5 = load ptr, ptr %i.c, align 8       ; 2 uses
  %.promoted6 = load i32, ptr %i.d, align 8, !tbaa !31 ; 2 uses
  %.promoted8 = load ptr, ptr %i.e, align 8       ; 2 uses
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %1, 2147483646
  br label %bb.e

._crit_edge.unr-lcssa:                            ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1
  %lcmp.mod.not = trunc i32 %1 to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.promoted8, %.lr.ph ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %.epil.init15 = phi i32 [ %.promoted6, %.lr.ph ], [ %i.ak, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init17 = phi ptr [ %.promoted5, %.lr.ph ], [ %i.ae, %._crit_edge.unr-lcssa ]
  %.epil.init19 = phi i32 [ %.promoted, %.lr.ph ], [ %i.af, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod22 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.g = add i32 %.epil.init19, -1
  %i.h = icmp eq i32 %.epil.init19, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.epil

bb.b:                                             ; preds = %.epil.preheader
  %i.i = getelementptr inbounds i8, ptr %.epil.init17, i64 -8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.epil

_ZNSt6vectorIbSaIbEE8pop_backEv.exit.epil:        ; preds = %bb.b, %.epil.preheader
  %i.j = phi i32 [ %i.g, %.epil.preheader ], [ 63, %bb.b ] ; 2 uses
  %i.k = add i32 %.epil.init15, -1
  %i.l = icmp eq i32 %.epil.init15, 0
  br i1 %i.l, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.epil
  %i.m = getelementptr inbounds i8, ptr %.epil.init, i64 -8
  store ptr %i.m, ptr %i.e, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.epil, %bb.c, %._crit_edge.unr-lcssa
  %.lcssa13 = phi i32 [ %i.ak, %._crit_edge.unr-lcssa ], [ %i.k, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.epil ], [ 63, %bb.c ]
  %.lcssa = phi i32 [ %i.af, %._crit_edge.unr-lcssa ], [ %i.j, %bb.c ], [ %i.j, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.epil ]
  store i32 %.lcssa, ptr %i.b, align 8, !tbaa !31
  store i32 %.lcssa13, ptr %i.d, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1, %.lr.ph.new
  %i.n = phi ptr [ %.promoted8, %.lr.ph.new ], [ %i.aj, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1 ] ; 2 uses
  %i.o = phi i32 [ %.promoted6, %.lr.ph.new ], [ %i.ak, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1 ] ; 2 uses
  %i.p = phi ptr [ %.promoted5, %.lr.ph.new ], [ %i.ae, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1 ] ; 2 uses
  %i.q = phi i32 [ %.promoted, %.lr.ph.new ], [ %i.af, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1 ]
  %i.r = add i32 %i.q, -1
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.e, %bb.f
  %i.u = phi ptr [ %i.p, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %i.v = phi i32 [ %i.r, %bb.e ], [ 63, %bb.f ]   ; 2 uses
  %i.w = add i32 %i.o, -1
  %i.x = icmp eq i32 %i.o, 0
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3

bb.g:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  store ptr %i.y, ptr %i.e, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3

_ZNSt6vectorIbSaIbEE8pop_backEv.exit3:            ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.g
  %i.z = phi ptr [ %i.n, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit ], [ %i.y, %bb.g ] ; 2 uses
  %i.aa = phi i32 [ %i.w, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit ], [ 63, %bb.g ] ; 2 uses
  %i.ab = add i32 %i.v, -1
  %i.ac = icmp eq i32 %i.v, 0
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.1

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.1

_ZNSt6vectorIbSaIbEE8pop_backEv.exit.1:           ; preds = %bb.h, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3
  %i.ae = phi ptr [ %i.u, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3 ], [ %i.ad, %bb.h ] ; 2 uses
  %i.af = phi i32 [ %i.ab, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3 ], [ 63, %bb.h ] ; 3 uses
  %i.ag = add i32 %i.aa, -1
  %i.ah = icmp eq i32 %i.aa, 0
  br i1 %i.ah, label %bb.i, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.1
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !30
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1

_ZNSt6vectorIbSaIbEE8pop_backEv.exit3.1:          ; preds = %bb.i, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.1
  %i.aj = phi ptr [ %i.z, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.1 ], [ %i.ai, %bb.i ] ; 2 uses
  %i.ak = phi i32 [ %i.ag, %_ZNSt6vectorIbSaIbEE8pop_backEv.exit.1 ], [ 63, %bb.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK12CVQualifiers12sanity_checkEPK4Type(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4Type18get_indirect_levelEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !28, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = zext i32 %i.u to i64
  %i.ab = add nsw i64 %i.z, %i.aa
  %i.ac = icmp eq i64 %i.p, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = sext i32 %i.a to i64
  %i.ae = add nsw i64 %i.ad, 1
  %i.af = icmp eq i64 %i.ae, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.ag = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.af, %bb.c ]
  ret i1 %i.ag
}

declare noundef i32 @_ZNK4Type18get_indirect_levelEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers21output_qualified_typeEPK4TypeRSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4Type13get_base_typeEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.f = load i32, ptr %i.d, align 8, !tbaa !31
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %i.f to i64
  %i.m = sub nsw i64 0, %i.l
  %.not22 = icmp eq i64 %i.k, %i.m
  br i1 %.not22, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre = load i64, ptr %i.g, align 8, !tbaa !35
  %.not19.peel = trunc i64 %.pre to i1
  br i1 %.not19.peel, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef zeroext i1 @_ZN9CGOptions6constsEv() ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.2, i64 noundef 6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.r = load i64, ptr %i.q, align 8, !tbaa !35
  %.not20.peel = trunc i64 %i.r to i1
  br i1 %.not20.peel, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZN9CGOptions9volatilesEv() ; 0 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 9) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZNK4Type6OutputERSo(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.w = load i32, ptr %i.d, align 8, !tbaa !31
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = zext i32 %i.w to i64
  %i.ad = add nsw i64 %i.ab, %i.ac
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge29, %bb.f, %bb.a
  ret void

.peel.next:                                       ; preds = %bb.f, %._crit_edge29
  %.021 = phi i64 [ %i.ay, %._crit_edge29 ], [ 1, %bb.f ] ; 4 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ag = sdiv i64 %.021, 64                      ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.pre26, i64 %i.ag
  %i.ai = and i64 %.021, -9223372036854775745
  %i.aj = icmp ugt i64 %i.ai, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.aj, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ah, i64 %storemerge.idx.i.i.i.i.i
  %i.ak = and i64 %.021, 63
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  %i.am = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.an = and i64 %i.am, %i.al
  %.not19 = icmp eq i64 %i.an, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.ao = tail call noundef zeroext i1 @_ZN9CGOptions6constsEv() ; 0 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.2, i64 noundef 6) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.peel.next
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ag
  %storemerge.i.i.i.i.i18 = getelementptr inbounds i8, ptr %i.as, i64 %storemerge.idx.i.i.i.i.i
  %i.at = load i64, ptr %storemerge.i.i.i.i.i18, align 8, !tbaa !35
  %i.au = and i64 %i.at, %i.al
  %.not20 = icmp eq i64 %i.au, 0
  br i1 %.not20, label %._crit_edge29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = tail call noundef zeroext i1 @_ZN9CGOptions9volatilesEv() ; 0 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 9) ; 0 uses
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %bb.i, %bb.h
  %.pre32 = load ptr, ptr %i.b, align 8, !tbaa !30
  %.pre31 = load i32, ptr %i.d, align 8, !tbaa !31
  %.pre30 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.ay = add nuw i64 %.021, 1                    ; 2 uses
  %i.az = ptrtoint ptr %.pre30 to i64
  %i.ba = ptrtoint ptr %.pre32 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = shl nsw i64 %i.bb, 3
  %i.bd = zext i32 %.pre31 to i64
  %i.be = add nsw i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.ay, %i.be
  br i1 %i.bf, label %.peel.next, label %._crit_edge, !llvm.loop !146
}

declare noundef ptr @_ZNK4Type13get_base_typeEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN9CGOptions6constsEv() local_unnamed_addr #6

declare noundef zeroext i1 @_ZN9CGOptions9volatilesEv() local_unnamed_addr #6

declare void @_ZNK4Type6OutputERSo(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK12CVQualifiers20is_const_after_derefEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %i.f to i64
  %i.m = xor i32 %1, -1
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.l, %i.n
  %i.p = add i64 %i.o, %i.k                       ; 3 uses
  %i.q = sdiv i64 %i.p, 64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.q
  %i.s = and i64 %i.p, -9223372036854775745
  %i.t = icmp ugt i64 %i.s, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.t, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.r, i64 %storemerge.idx.i.i.i.i.i
  %i.u = and i64 %i.p, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.x = and i64 %i.v, %i.w
  %i.y = icmp ne i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.y, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK12CVQualifiers23is_volatile_after_derefEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %i.f to i64
  %i.m = xor i32 %1, -1
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.l, %i.n
  %i.p = add i64 %i.o, %i.k                       ; 3 uses
  %i.q = sdiv i64 %i.p, 64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.q
  %i.s = and i64 %i.p, -9223372036854775745
  %i.t = icmp ugt i64 %i.s, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.t, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.r, i64 %storemerge.idx.i.i.i.i.i
  %i.u = and i64 %i.p, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.x = and i64 %i.v, %i.w
  %i.y = icmp ne i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.y, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN12CVQualifiers9set_constEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.tr = trunc i64 %i.i to i32
  %i.j = shl i32 %.tr, 3
  %i.k = add i32 %i.j, %i.e                       ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %_ZNSt14_Bit_referenceaSEb.exit

bb.b:                                             ; preds = %bb.a
  %i.m = xor i32 %2, -1
  %i.n = add i32 %i.k, %i.m                       ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = sdiv i32 %i.n, 64
  %.sext = sext i32 %i.p to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.sext
  %i.r = and i64 %i.o, -9223372036854775745
  %i.s = icmp ugt i64 %i.r, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.s, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.q, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  %i.t = and i64 %i.o, 63
  %i.u = shl nuw i64 1, %i.t                      ; 2 uses
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
end_hunk_2
begin_hunk_3_@_ZN12CVQualifiers18get_all_qualifiersERSt6vectorIS_SaIS_EEjj:._crit_edge.i.i
  %i.jf = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i115, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit116, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit114
  %i.jg = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 2 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 2 uses
  %i.jk = ashr exact i64 %i.jj, 3
  %i.jl = sub nsw i64 0, %i.jk
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.jl
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jj) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit116

_ZNSt13_Bvector_baseISaIbEED2Ev.exit116:          ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit114, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.az

bb.az:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn33.pn = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.ck, %bb.q ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn28.pn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit116 ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ]
  call void @_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn33.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br i1 %i.d, label %.split.us, label %.lr.ph.i

.split.us:                                        ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106  ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !tbaa !106
  %i.m = load i32, ptr %i.i, align 4, !tbaa !105
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us, %tailrecurse.us
  %i.o = phi i32 [ %i.y, %tailrecurse.us ], [ %i.k, %.split.us ]
  %i.p = phi ptr [ %i.x, %tailrecurse.us ], [ %i.j, %.split.us ]
  %i.q = phi ptr [ %i.t, %tailrecurse.us ], [ %i.g, %.split.us ]
  store i32 %i.o, ptr %i.p, align 4, !tbaa !106
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.q) #22 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !111
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.split5.us, label %tailrecurse.us

tailrecurse.us:                                   ; preds = %.lr.ph
  store ptr %i.c, ptr %i.e, align 8, !tbaa !97
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.c) #22 ; 5 uses
  store ptr %i.t, ptr %i.e, align 8, !tbaa !111
  %.cast.i.us = ptrtoint ptr %i.t to i64
  store i64 %.cast.i.us, ptr %i.f, align 8, !tbaa !97
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.t) #22
  store ptr %i.u, ptr %i.f, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !106  ; 2 uses
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !106
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !105
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit.thread, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i.backedge
  %.sroa.02.05.i = phi ptr [ %.sroa.02.05.i.be, %.lr.ph.i.backedge ], [ %i.b, %bb.a ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  store i8 0, ptr %i.ae, align 2, !tbaa !107
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i) #22 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE17reset_all_changedEv.exit.loopexit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %.lr.ph.i, %bb.c
  %.sroa.02.05.i.be = phi ptr [ %i.af, %.lr.ph.i ], [ %i.b, %bb.c ]
  br label %.lr.ph.i, !llvm.loop !153

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE17reset_all_changedEv.exit.loopexit: ; preds = %.lr.ph.i
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !111 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !113 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106 ; 2 uses
  %i.am = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !106
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !105
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit.thread, label %bb.b

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit.thread: ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE17reset_all_changedEv.exit.loopexit, %tailrecurse.us, %.split.us
  %.us-phi = phi ptr [ %i.w, %tailrecurse.us ], [ %i.i, %.split.us ], [ %i.aj, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE17reset_all_changedEv.exit.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi, i64 10
  store i8 1, ptr %i.ap, align 2, !tbaa !107
  br label %bb.d

bb.b:                                             ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE17reset_all_changedEv.exit.loopexit
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !106
  %i.aq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ah) #22 ; 2 uses
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !111
  %i.ar = icmp eq ptr %i.aq, %i.c
  br i1 %i.ar, label %.split5.us, label %bb.c

.split5.us:                                       ; preds = %bb.b, %.lr.ph
  %i.as = tail call noundef zeroext i1 @_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21roll_back_current_posEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %. = select i1 %i.as, ptr %0, ptr null
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %i.e, align 8, !tbaa !97
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.c) #22 ; 3 uses
  store ptr %i.at, ptr %i.e, align 8, !tbaa !111
  %.cast.i = ptrtoint ptr %i.at to i64
  store i64 %.cast.i, ptr %i.f, align 8, !tbaa !97
  %i.au = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.at) #22
  store ptr %i.au, ptr %i.f, align 8, !tbaa !111
  br label %.lr.ph.i.backedge

bb.d:                                             ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit.thread, %.split5.us
  %.0 = phi ptr [ %0, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit.thread ], [ %., %.split5.us ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.f)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10EnumeratorIS5_E10EnumObjectESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10EnumeratorIS5_E10EnumObjectESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %._crit_edge
  store ptr null, ptr %i.e, align 8, !tbaa !95
  store ptr %i.c, ptr %i.a, align 8, !tbaa !96
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.01.04 = phi ptr [ %i.l, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 12) #19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04) #22 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.c
  br i1 %i.m, label %._crit_edge, label %.lr.ph, !llvm.loop !4
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers16OutputFirstQualsERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext i32 %i.e to i64
  %i.l = sub nsw i64 0, %i.k
  %.not = icmp eq i64 %i.j, %i.l
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.f, align 8, !tbaa !35
  %.not4 = trunc i64 %i.m to i1
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN9CGOptions6constsEv() ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !31
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = shl nsw i64 %i.x, 3
  %i.z = zext i32 %i.t to i64
  %i.aa = sub nsw i64 0, %i.z
  %.not3 = icmp eq i64 %i.y, %i.aa
  br i1 %.not3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !35
  %.not5 = trunc i64 %i.ab to i1
  br i1 %.not5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef zeroext i1 @_ZN9CGOptions9volatilesEv() ; 0 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 9) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12CVQualifiers6outputEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.e = load i32, ptr %i.c, align 8, !tbaa !31
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext i32 %i.e to i64
  %i.l = sub nsw i64 0, %i.k
  %.not = icmp eq i64 %i.j, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.r = load i32, ptr %i.p, align 8, !tbaa !31
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = shl nsw i64 %i.v, 3
  %i.x = zext i32 %i.r to i64
  %i.y = sub nsw i64 0, %i.x
  %.not14 = icmp eq i64 %i.w, %i.y
  br i1 %.not14, label %._crit_edge13, label %.lr.ph12

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.z = phi ptr [ %i.ao, %.lr.ph ], [ %i.f, %bb.a ]
  %.069 = phi i64 [ %i.al, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.aa = sdiv i64 %.069, 64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = and i64 %.069, -9223372036854775745
  %i.ad = icmp ugt i64 %i.ac, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ad, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ab, i64 %storemerge.idx.i.i.i.i.i
  %i.ae = and i64 %.069, 63
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.ah = and i64 %i.ag, %i.af
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext %i.ai)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.al = add nuw i64 %.069, 1                    ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.an = load i32, ptr %i.c, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = zext i32 %i.an to i64
  %i.au = add nsw i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.al, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !154

._crit_edge13:                                    ; preds = %.lr.ph12, %._crit_edge
  %i.aw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !171 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %._crit_edge13
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !176
  %.not.i1.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 67
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !103
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bb)
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef signext i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(570) %i.bb, i8 noundef signext 10), !inline_history !155
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.bf, %bb.c ], [ %i.bj, %bb.d ]
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) ; 0 uses
  ret void

.lr.ph12:                                         ; preds = %._crit_edge, %.lr.ph12
  %i.bm = phi ptr [ %i.cb, %.lr.ph12 ], [ %i.s, %._crit_edge ]
  %.010 = phi i64 [ %i.by, %.lr.ph12 ], [ 0, %._crit_edge ] ; 4 uses
  %i.bn = sdiv i64 %.010, 64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = and i64 %.010, -9223372036854775745
  %i.bq = icmp ugt i64 %i.bp, -9223372036854775808
  %storemerge.idx.i.i.i.i.i7 = select i1 %i.bq, i64 -8, i64 0
  %storemerge.i.i.i.i.i8 = getelementptr inbounds i8, ptr %i.bo, i64 %storemerge.idx.i.i.i.i.i7
  %i.br = and i64 %.010, 63
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = load i64, ptr %storemerge.i.i.i.i.i8, align 8, !tbaa !35
  %i.bu = and i64 %i.bt, %i.bs
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i1 noundef zeroext %i.bv)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.by = add nuw i64 %.010, 1                    ; 2 uses
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.ca = load i32, ptr %i.p, align 8, !tbaa !31
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !30  ; 2 uses
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = shl nsw i64 %i.ce, 3
  %i.cg = zext i32 %i.ca to i64
  %i.ch = add nsw i64 %i.cf, %i.cg
  %i.ci = icmp ult i64 %i.by, %i.ch
  br i1 %i.ci, label %.lr.ph12, label %._crit_edge13, !llvm.loop !156
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

end_hunk_3
