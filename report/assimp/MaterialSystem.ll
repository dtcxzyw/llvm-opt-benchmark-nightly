Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MaterialSystem?download=true
inline.NumInlined: 310
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@aiGetMaterialIntegerArray:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %5, align 4
  %.sroa.speculated65 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.076 = phi i32 [ %.sroa.speculated, %bb.c ], [ %.sroa.speculated65, %bb.d ] ; 4 uses
  %i.l = icmp eq i32 %i.i, 1
  br i1 %i.l, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not83 = icmp eq i32 %.076, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1048 ; 5 uses
  %wide.trip.count89 = zext nneg i32 %.076 to i64 ; 2 uses
  %xtraiter102 = and i64 %wide.trip.count89, 3    ; 3 uses
  %i.n = icmp ult i32 %.076, 4
  br i1 %i.n, label %.epil.preheader101, label %.lr.ph81.new

.lr.ph81.new:                                     ; preds = %.lr.ph81
  %unroll_iter106 = and i64 %wide.trip.count89, 2147483644
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1048
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i8, ptr %i.p, align 1
  %i.r = sext i8 %i.q to i32
  store i32 %i.r, ptr %4, align 4
  br label %.loopexit

bb.g:                                             ; preds = %bb.g, %.lr.ph81.new
  %indvars.iv86 = phi i64 [ 0, %.lr.ph81.new ], [ %indvars.iv.next87.3, %bb.g ] ; 6 uses
  %niter107 = phi i64 [ 0, %.lr.ph81.new ], [ %niter107.next.3, %bb.g ]
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv86
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv86
  store i32 %i.u, ptr %i.v, align 4
  %indvars.iv.next87 = or disjoint i64 %indvars.iv86, 1 ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next87
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next87
  store i32 %i.y, ptr %i.z, align 4
  %indvars.iv.next87.1 = or disjoint i64 %indvars.iv86, 2 ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next87.1
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next87.1
  store i32 %i.ac, ptr %i.ad, align 4
  %indvars.iv.next87.2 = or disjoint i64 %indvars.iv86, 3 ; 2 uses
  %i.ae = load ptr, ptr %i.m, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next87.2
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next87.2
  store i32 %i.ag, ptr %i.ah, align 4
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %niter107.next.3 = add i64 %niter107, 4         ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !14

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod104.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %.loopexit, label %.epil.preheader101

.epil.preheader101:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph81
  %indvars.iv86.epil.init = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next87.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod105 = icmp ne i64 %xtraiter102, 0
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader101
  %indvars.iv86.epil = phi i64 [ %indvars.iv86.epil.init, %.epil.preheader101 ], [ %indvars.iv.next87.epil, %bb.h ] ; 3 uses
  %epil.iter103 = phi i64 [ 0, %.epil.preheader101 ], [ %epil.iter103.next, %bb.h ]
  %i.ai = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv86.epil
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv86.epil
  store i32 %i.ak, ptr %i.al, align 4
  %indvars.iv.next87.epil = add nuw nsw i64 %indvars.iv86.epil, 1
  %epil.iter103.next = add i64 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i64 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !15

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.preheader, %bb.f
  br i1 %.not45, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %.loopexit
  store i32 %.076, ptr %5, align 4
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 1036
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = lshr i32 %i.an, 2                       ; 2 uses
  %.not44 = icmp eq ptr %5, null                  ; 2 uses
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %5, align 4
  %.sroa.speculated62 = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.ap)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi i32 [ %i.ao, %bb.j ], [ %.sroa.speculated62, %bb.k ] ; 4 uses
  %.not82 = icmp eq i32 %.1, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1048 ; 5 uses
  %wide.trip.count = zext nneg i32 %.1 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ar = icmp ult i32 %.1, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.n

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.m ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.as = load ptr, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.epil
  %i.au = load float, ptr %i.at, align 4
  %i.av = fptosi float %i.au to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil
  store i32 %i.av, ptr %i.aw, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.m, !llvm.loop !16

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.m, %bb.l
  br i1 %.not44, label %bb.ab, label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.n ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.n ]
  %i.ax = load ptr, ptr %i.aq, align 8
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fptosi float %i.az to i32
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bb, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %i.aq, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = fptosi float %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store i32 %i.bf, ptr %i.bg, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bh = load ptr, ptr %i.aq, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.1
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = fptosi float %i.bj to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.1
  store i32 %i.bk, ptr %i.bl, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bm = load ptr, ptr %i.aq, align 8
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.2
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = fptosi float %i.bo to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.2
  store i32 %i.bp, ptr %i.bq, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !17

bb.o:                                             ; preds = %._crit_edge
  store i32 %.1, ptr %5, align 4
  br label %bb.ab

bb.p:                                             ; preds = %bb.b
  %.not43 = icmp eq ptr %5, null                  ; 2 uses
  br i1 %.not43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr %5, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.277 = phi i32 [ 0, %bb.p ], [ %i.br, %bb.q ]  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 1048
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = add i32 %.277, -1
  %i.bw = zext i32 %i.bv to i64
  %.pre = load i8, ptr %i.bu, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %bb.r
  %6 = phi i8 [ %i.co, %bb.z ], [ %.pre, %bb.r ]  ; 3 uses
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.z ], [ 0, %bb.r ] ; 3 uses
  %.075 = phi ptr [ %.08.lcssa.i.i, %bb.z ], [ %i.bu, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.075, ptr %i.a, align 8
  %i.bx = icmp eq i8 %6, 45
  switch i8 %6, label %bb.u [
    i8 45, label %bb.t
    i8 43, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %.075, i64 1 ; 3 uses
  store ptr %i.by, ptr %i.a, align 8
  %.pre.i = load i8, ptr %i.by, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bz = phi i8 [ %6, %bb.s ], [ %.pre.i, %bb.t ] ; 2 uses
  %i.ca = phi ptr [ %.075, %bb.s ], [ %i.by, %bb.t ] ; 2 uses
  %i.cb = add i8 %i.bz, -58
  %or.cond11.i.i = icmp ult i8 %i.cb, -10
  br i1 %or.cond11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.i
  %i.cc = phi i8 [ %i.ch, %.lr.ph.i.i ], [ %i.bz, %bb.u ]
  %.013.i.i = phi i32 [ %i.cf, %.lr.ph.i.i ], [ 0, %bb.u ]
  %.0812.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.ca, %bb.u ]
  %i.cd = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.cc, -48
  %i.ce = zext nneg i8 %narrow.i.i to i32
  %i.cf = add i32 %i.cd, %i.ce                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1             ; 2 uses
  %i.ci = add i8 %i.ch, -58
  %or.cond.i.i = icmp ult i8 %i.ci, -10
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !18

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.08.lcssa.i.i = phi ptr [ %i.ca, %bb.u ], [ %i.cg, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ 0, %bb.u ], [ %i.cf, %.lr.ph.i.i ] ; 4 uses
  br i1 %i.bx, label %bb.v, label %_ZN6Assimp8strtol10EPKcPS1_.exit

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.cj = add i32 %.0.lcssa.i.i, 2147483647
  %or.cond.i = icmp ult i32 %i.cj, -2
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = sub nsw i32 0, %.0.lcssa.i.i
  br label %_ZN6Assimp8strtol10EPKcPS1_.exit

bb.x:                                             ; preds = %bb.v
  %i.cl = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cl, ptr noundef nonnull align 1 dereferenceable(24) @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(47) @.str.13)
  br label %_ZN6Assimp8strtol10EPKcPS1_.exit

_ZN6Assimp8strtol10EPKcPS1_.exit:                 ; preds = %._crit_edge.i.i, %bb.w, %bb.x
  %.0.i = phi i32 [ %i.ck, %bb.w ], [ %.0.lcssa.i.i, %bb.x ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv91
  store i32 %.0.i, ptr %i.cm, align 4
  %i.cn = icmp eq i64 %indvars.iv91, %i.bw
  br i1 %i.cn, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_ZN6Assimp8strtol10EPKcPS1_.exit
  %i.co = load i8, ptr %.08.lcssa.i.i, align 1    ; 2 uses
  switch i8 %i.co, label %.critedge47 [
    i8 32, label %bb.z
    i8 9, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %bb.s, !llvm.loop !19

.critedge:                                        ; preds = %_ZN6Assimp8strtol10EPKcPS1_.exit
  br i1 %.not43, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  store i32 %.277, ptr %5, align 4
  br label %bb.ab

.critedge47:                                      ; preds = %bb.y
  %i.cp = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA18_KcRPS2_RA58_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cp, ptr noundef nonnull align 1 dereferenceable(18) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(58) @.str.1)
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge47, %bb.aa, %.critedge, %bb.o, %._crit_edge, %.loopexit, %bb.i, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %.critedge47 ], [ 0, %bb.aa ], [ 0, %.critedge ], [ 0, %bb.o ], [ 0, %._crit_edge ], [ 0, %.loopexit ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret i32 %.2
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA18_KcRPS2_RA58_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(58) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %1) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(18) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA18_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA18_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA58_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(58) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA18_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #26
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA18_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @aiGetMaterialColor(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 4, ptr %i.a, align 4
  %i.b = call fastcc noundef range(i32 -1, 1) i32 @_ZN12_GLOBAL__N_121GetMaterialFloatArrayIfEE8aiReturnPK10aiMaterialPKcjjPT_Pj(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %i.a)
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 1.000000e+00, ptr %i.e, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @aiGetMaterialUVTransform(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 5, ptr %i.a, align 4
  %i.b = call fastcc noundef range(i32 -1, 1) i32 @_ZN12_GLOBAL__N_121GetMaterialFloatArrayIfEE8aiReturnPK10aiMaterialPKcjjPT_Pj(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @aiGetMaterialString(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = call i32 @aiGetMaterialProperty(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1040
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1048 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  store i32 %i.j, ptr %4, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = add i32 %i.j, 1
  %i.o = zext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA18_KcRPS2_RA29_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 1 dereferenceable(18) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(29) @.str.2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i32 %.0
end_hunk_0
