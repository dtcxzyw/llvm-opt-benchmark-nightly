Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/internal?download=true
inline.NumInlined: 2057
inline.NumDeleted: 1077
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7CaDiCaL8Internal4dumpEv:bb.a
  %.not9.i.epil = icmp eq i32 %i.v, 0
  %i.w = zext i1 %.not9.i.epil to i64
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit.epil

_ZN7CaDiCaL8Internal5fixedEi.exit.epil:           ; preds = %bb.b, %.epil.preheader
  %.0.i.epil = phi i64 [ 0, %.epil.preheader ], [ %i.w, %bb.b ]
  %spec.select.epil = add nsw i64 %.0.i.epil, %.061.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ %i.h, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %_ZN7CaDiCaL8Internal5fixedEi.exit.epil ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !222  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !222 ; 2 uses
  %.not5562 = icmp eq ptr %i.y, %i.aa
  br i1 %.not5562, label %._crit_edge67, label %.lr.ph66

bb.c:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit.1, %.lr.ph.new
  %.061 = phi i64 [ %i.h, %.lr.ph.new ], [ %spec.select.1, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ]
  %.sroa.051.060 = phi i32 [ 1, %.lr.ph.new ], [ %i.aq, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ]
  %i.ab = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.051.060, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !165
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !304
  %.not9.i = icmp eq i32 %i.ag, 0
  %i.ah = zext i1 %.not9.i to i64
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.c ], [ %i.ah, %bb.d ]
  %spec.select = add nsw i64 %.0.i, %.061
  %i.ai = add nuw i32 %.sroa.051.060, 1
  %i.aj = tail call noundef i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !165
  %.not.i.1 = icmp eq i8 %i.am, 0
  br i1 %.not.i.1, label %_ZN7CaDiCaL8Internal5fixedEi.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ak
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !304
  %.not9.i.1 = icmp eq i32 %i.ao, 0
  %i.ap = zext i1 %.not9.i.1 to i64
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit.1

_ZN7CaDiCaL8Internal5fixedEi.exit.1:              ; preds = %bb.e, %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.0.i.1 = phi i64 [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit ], [ %i.ap, %bb.e ]
  %spec.select.1 = add nsw i64 %.0.i.1, %spec.select ; 3 uses
  %i.aq = add nuw i32 %.sroa.051.060, 2           ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c

._crit_edge67:                                    ; preds = %.lr.ph66, %._crit_edge
  %.2.lcssa = phi i64 [ %.0.lcssa, %._crit_edge ], [ %spec.select27, %.lr.ph66 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !169
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.as, i64 noundef %.2.lcssa) ; 0 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !301, !nonnull !213, !align !302
  %i.av = load i32, ptr %i.au, align 4, !tbaa !174 ; 2 uses
  %.not5669 = icmp eq i32 %i.av, 0
  br i1 %.not5669, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge67
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %bb.f

.lr.ph66:                                         ; preds = %._crit_edge, %.lr.ph66
  %.264 = phi i64 [ %spec.select27, %.lr.ph66 ], [ %.0.lcssa, %._crit_edge ]
  %.sroa.047.063 = phi ptr [ %i.bd, %.lr.ph66 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.047.063, align 8, !tbaa !224
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = and i32 %i.ba, 16
  %.not25 = icmp eq i32 %i.bb, 0
  %i.bc = zext i1 %.not25 to i64
  %spec.select27 = add nsw i64 %.264, %i.bc       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.047.063, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.bd, %i.aa
  br i1 %.not55, label %._crit_edge67, label %.lr.ph66

._crit_edge73:                                    ; preds = %bb.i, %._crit_edge67
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !222 ; 2 uses
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !222 ; 2 uses
  %.not5774 = icmp eq ptr %i.be, %i.bf
  br i1 %.not5774, label %._crit_edge78, label %.lr.ph77

bb.f:                                             ; preds = %.lr.ph72, %bb.i
  %.sroa.043.070 = phi i32 [ 1, %.lr.ph72 ], [ %i.bv, %bb.i ] ; 6 uses
  %i.bg = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.043.070, i1 true)
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !228
  %i.bi = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !165 ; 2 uses
  %.not.i28 = icmp eq i8 %i.bk, 0
  br i1 %.not.i28, label %_ZN7CaDiCaL8Internal5fixedEi.exit33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = sext i8 %i.bk to i32
  %i.bm = load ptr, ptr %i.ax, align 8, !tbaa !187
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bi
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !304
  %.not9.i29 = icmp eq i32 %i.bo, 0
  %spec.select.i30 = select i1 %.not9.i29, i32 %i.bl, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit33

_ZN7CaDiCaL8Internal5fixedEi.exit33:              ; preds = %bb.f, %bb.g
  %.0.i31 = phi i32 [ 0, %bb.f ], [ %spec.select.i30, %bb.g ] ; 2 uses
  %i.bp = icmp slt i32 %.sroa.043.070, 0
  %i.bq = sub nsw i32 0, %.0.i31
  %spec.select10.i32 = select i1 %i.bp, i32 %i.bq, i32 %.0.i31 ; 2 uses
  %.not24 = icmp eq i32 %spec.select10.i32, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit33
  %i.br = icmp slt i32 %spec.select10.i32, 0
  %i.bs = sub nsw i32 0, %.sroa.043.070
  %i.bt = select i1 %i.br, i32 %i.bs, i32 %.sroa.043.070
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.bt) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal5fixedEi.exit33
  %i.bv = add i32 %.sroa.043.070, 1
  %.not56 = icmp eq i32 %.sroa.043.070, %i.av
  br i1 %.not56, label %._crit_edge73, label %bb.f

._crit_edge78:                                    ; preds = %bb.k, %._crit_edge73
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !173 ; 2 uses
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %.not5879 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not5879, label %._crit_edge83, label %.lr.ph82

.lr.ph77:                                         ; preds = %._crit_edge73, %bb.k
  %.sroa.039.075 = phi ptr [ %i.ck, %bb.k ], [ %i.be, %._crit_edge73 ] ; 2 uses
  %i.by = load ptr, ptr %.sroa.039.075, align 8, !tbaa !224 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = and i32 %i.ca, 16
  %.not = icmp eq i32 %i.cb, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph77
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !174 ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %.idx.i = shl nsw i64 %i.cf, 2
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.ce, 0
  br i1 %.not8.i, label %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.09.i = phi ptr [ %i.cj, %.lr.ph.i ], [ %i.cc, %bb.j ] ; 2 uses
  %i.ch = load i32, ptr %.09.i, align 4, !tbaa !174
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ch) ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i34 = icmp eq ptr %i.cj, %i.cg
  br i1 %.not.i34, label %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, label %.lr.ph.i

_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit:      ; preds = %.lr.ph.i, %bb.j
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, %.lr.ph77
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.039.075, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.ck, %i.bf
  br i1 %.not57, label %._crit_edge78, label %.lr.ph77

._crit_edge83:                                    ; preds = %.lr.ph82, %._crit_edge78
  %i.cl = load ptr, ptr @stdout, align 8, !tbaa !488
  %i.cm = tail call i32 @fflush(ptr noundef %i.cl) ; 0 uses
  ret void

.lr.ph82:                                         ; preds = %._crit_edge78, %.lr.ph82
  %.sroa.035.080 = phi ptr [ %i.cp, %.lr.ph82 ], [ %i.bw, %._crit_edge78 ] ; 2 uses
  %i.cn = load i32, ptr %.sroa.035.080, align 4, !tbaa !174
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.cn) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.035.080, i64 4 ; 2 uses
  %.not58 = icmp eq ptr %i.cp, %i.bx
  br i1 %.not58, label %._crit_edge83, label %.lr.ph82
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal19traverse_constraintERNS_14ClauseIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 3 uses
  %i.e = icmp ne ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.g = load i8, ptr %i.f, align 8, !range !212
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !262, !range !212, !noundef !213
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not43 = icmp eq ptr %i.b, %i.d
  br i1 %.not43, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %1, align 8, !tbaa !226
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.q unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.e:                                             ; preds = %.lr.ph, %bb.n
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.bg, %bb.n ] ; 6 uses
  %i.w = phi ptr [ null, %.lr.ph ], [ %i.bh, %bb.n ] ; 4 uses
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.bi, %bb.n ] ; 4 uses
  %.sroa.033.044 = phi ptr [ %i.b, %.lr.ph ], [ %i.bj, %bb.n ] ; 2 uses
  %i.y = load i32, ptr %.sroa.033.044, align 4, !tbaa !174 ; 2 uses
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.y, i1 true)
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !228
  %i.ab = zext nneg i32 %i.z to i64               ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !165 ; 2 uses
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sext i8 %i.ad to i32
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ab
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !304
  %.not9.i = icmp eq i32 %i.ah, 0
  %spec.select.i = select i1 %.not9.i, i32 %i.ae, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ 0, %bb.e ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.ai = icmp slt i32 %i.y, 0                    ; 2 uses
  %i.aj = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %i.ai, i32 %i.aj, i32 %.0.i ; 2 uses
  %i.ak = icmp sgt i32 %spec.select10.i, 0
  br i1 %i.ak, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread39, label %bb.g

bb.g:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.al = icmp slt i32 %spec.select10.i, 0
  br i1 %i.al, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ab
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !174 ; 2 uses
  %i.ap = sub nsw i32 0, %i.ao
  %spec.select.i26 = select i1 %i.ai, i32 %i.ap, i32 %i.ao ; 2 uses
  %.not.i27 = icmp eq ptr %i.x, %i.w
  br i1 %.not.i27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %spec.select.i26, ptr %i.x, align 4, !tbaa !174
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store ptr %i.aq, ptr %i.o, align 8, !tbaa !236
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.w to i64
  %i.as = ptrtoint ptr %i.v to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 5 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775804
  br i1 %i.au, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.av = ashr exact i64 %i.at, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951)
  %i.az = select i1 %i.ax, i64 2305843009213693951, i64 %i.ay ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #21
          to label %.noexc28 unwind label %.loopexit ; 5 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store i32 %spec.select.i26, ptr %i.bc, align 4, !tbaa !174
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %.noexc28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.v, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %.noexc28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bb, ptr %2, align 8, !tbaa !184
  store ptr %i.be, ptr %i.o, align 8, !tbaa !236
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  store ptr %i.bf, ptr %i.p, align 8, !tbaa !244
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.i
  %i.bg = phi ptr [ %i.v, %bb.g ], [ %i.bb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.v, %bb.i ]
  %i.bh = phi ptr [ %i.w, %bb.g ], [ %i.bf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.w, %bb.i ]
  %i.bi = phi ptr [ %i.x, %bb.g ], [ %i.be, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.aq, %bb.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.d
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.e

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.n, %.preheader
  %i.bk = load ptr, ptr %1, align 8, !tbaa !226
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  br i1 %i.bn, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread39, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread39: ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.o
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread39, %bb.o, %bb.c
  %.120 = phi i1 [ %i.t, %bb.c ], [ true, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread39 ], [ false, %bb.o ]
  %i.bp = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.u

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.d
  %.pn24 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.bo, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bq = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn24

bb.u:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.221 = phi i1 [ %.120, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.221
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal16traverse_clausesERNS_14ClauseIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_0
