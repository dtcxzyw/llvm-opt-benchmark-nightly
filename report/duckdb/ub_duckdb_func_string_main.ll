Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_string_main?download=true
inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN6duckdb14ScalarFunction13UnaryFunctionINS_8string_tElNS_12_GLOBAL__N_116OctetLenOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %lpad.loopexit6.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ad, %bb.ab
  %lpad.loopexit9.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.v, %bb.u
  %lpad.loopexit.split-lp10.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %bb.as, %bb.ar
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.fv, %bb.ar ], [ %i.fw, %bb.as ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit2.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit6.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit9.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp10.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn.i.i

_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_116OctetLenOperatorEEEvRNS_6VectorES6_m.exit: ; preds = %.loopexit5.i.i.i, %.lr.ph17.i.i.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, %.preheader.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN6duckdb4GlobEPKcmS1_mb(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #7 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.v, %bb.a
  %.0112 = phi i64 [ 0, %bb.a ], [ %i.cd, %bb.v ] ; 4 uses
  %.0107 = phi i64 [ 0, %bb.a ], [ %i.bn, %bb.v ] ; 4 uses
  %i.a = icmp ult i64 %.0112, %1
  %i.b = icmp ult i64 %.0107, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %.preheader150

.lr.ph:                                           ; preds = %bb.b
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.1108163.us = phi i64 [ %i.m, %bb.f ], [ %.0107, %.lr.ph ] ; 6 uses
  %.1113162.us = phi i64 [ %i.l, %bb.f ], [ %.0112, %.lr.ph ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.1113162.us
  %i.e = load i8, ptr %i.d, align 1, !tbaa !30    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.1108163.us
  %i.g = load i8, ptr %i.f, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.g, label %bb.e [
    i8 42, label %.preheader149
    i8 63, label %bb.f
    i8 91, label %.split.us
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.h = add nuw i64 %.1108163.us, 1              ; 3 uses
  %i.i = icmp eq i64 %i.h, %3
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %.not.us = icmp eq i8 %i.e, %i.k
  br i1 %.not.us, label %bb.f, label %.thread

bb.e:                                             ; preds = %.lr.ph.split.us
  %.not123.us = icmp eq i8 %i.e, %i.g
  br i1 %.not123.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph.split.us, %bb.e, %bb.d
  %.3110.us = phi i64 [ %.1108163.us, %bb.e ], [ %i.h, %bb.d ], [ %.1108163.us, %.lr.ph.split.us ]
  %i.l = add nuw i64 %.1113162.us, 1              ; 3 uses
  %i.m = add i64 %.3110.us, 1                     ; 3 uses
  %i.n = icmp ult i64 %i.l, %1
  %i.o = icmp ult i64 %i.m, %3
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.split.us, label %.preheader150

.preheader150:                                    ; preds = %bb.b, %bb.l, %bb.f
  %.1113.lcssa = phi i64 [ %i.l, %bb.f ], [ %i.an, %bb.l ], [ %.0112, %bb.b ]
  %.1108.lcssa = phi i64 [ %i.m, %bb.f ], [ %i.ao, %bb.l ], [ %.0107, %bb.b ] ; 3 uses
  %i.q = icmp ult i64 %.1108.lcssa, %3
  br i1 %i.q, label %.lr.ph188, label %.critedge2

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.1108163 = phi i64 [ %i.ao, %bb.l ], [ %.0107, %.lr.ph ] ; 6 uses
  %.1113162 = phi i64 [ %i.an, %bb.l ], [ %.0112, %.lr.ph ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.1113162
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.1108163
  %i.u = load i8, ptr %i.t, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.u, label %bb.k [
    i8 42, label %.preheader149
    i8 63, label %.split.us
    i8 91, label %.split.us
    i8 92, label %bb.i
  ]

.preheader149:                                    ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %.1113162.us, %.lr.ph.split.us ], [ %.1113162, %.lr.ph.split ] ; 2 uses
  %.us-phi168 = phi i64 [ %.1108163.us, %.lr.ph.split.us ], [ %.1108163, %.lr.ph.split ] ; 2 uses
  %i.v = add nuw i64 %.us-phi168, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.v) ; 2 uses
  %.2109347 = add i64 %.us-phi168, 1              ; 2 uses
  %i.w = icmp ult i64 %.2109347, %3
  br i1 %i.w, label %.lr.ph349, label %.critedge

bb.g:                                             ; preds = %.lr.ph349
  %.2109 = add i64 %.2109348, 1                   ; 2 uses
  %i.x = icmp ult i64 %.2109, %3
  br i1 %i.x, label %.lr.ph349, label %.critedge, !llvm.loop !667

.lr.ph349:                                        ; preds = %.preheader149, %bb.g
  %.2109348 = phi i64 [ %.2109, %bb.g ], [ %.2109347, %.preheader149 ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.2109348
  %i.z = load i8, ptr %i.y, align 1, !tbaa !30
  %i.aa = icmp eq i8 %i.z, 42
  br i1 %i.aa, label %bb.g, label %..critedge_crit_edge350, !llvm.loop !667

..critedge_crit_edge350:                          ; preds = %.lr.ph349
  br label %.critedge, !llvm.loop !667

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge350, %.preheader149
  %.2109.lcssa = phi i64 [ %umax, %.preheader149 ], [ %.2109348, %..critedge_crit_edge350 ], [ %umax, %bb.g ] ; 3 uses
  %i.ab = icmp eq i64 %.2109.lcssa, %3
  br i1 %i.ab, label %.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.ac = icmp ult i64 %.us-phi, %1
  br i1 %i.ac, label %.lr.ph193, label %.thread

.lr.ph193:                                        ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.2109.lcssa
  %i.ae = sub i64 %3, %.2109.lcssa
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph193
  %.2114192 = phi i64 [ %.us-phi, %.lr.ph193 ], [ %i.ai, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.2114192
  %i.ag = sub nuw i64 %1, %.2114192
  %i.ah = tail call noundef zeroext i1 @_ZN6duckdb4GlobEPKcmS1_mb(ptr noundef %i.af, i64 noundef %i.ag, ptr noundef %i.ad, i64 noundef %i.ae, i1 noundef zeroext true) ; 2 uses
  %i.ai = add i64 %.2114192, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %1
  %or.cond352 = or i1 %i.ah, %exitcond.not
  br i1 %or.cond352, label %.thread, label %bb.h, !llvm.loop !668

bb.i:                                             ; preds = %.lr.ph.split
  %i.aj = add nuw i64 %.1108163, 1                ; 3 uses
  %i.ak = icmp eq i64 %i.aj, %3
  br i1 %i.ak, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.am = load i8, ptr %i.al, align 1, !tbaa !30
  %.not = icmp eq i8 %i.s, %i.am
  br i1 %.not, label %bb.l, label %.thread

bb.k:                                             ; preds = %.lr.ph.split
  %.not123 = icmp eq i8 %i.s, %i.u
  br i1 %.not123, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.j, %bb.k
  %.3110 = phi i64 [ %.1108163, %bb.k ], [ %i.aj, %bb.j ]
  %i.an = add nuw i64 %.1113162, 1                ; 3 uses
  %i.ao = add i64 %.3110, 1                       ; 3 uses
  %i.ap = icmp ult i64 %i.an, %1
  %i.aq = icmp ult i64 %i.ao, %3
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.split, label %.preheader150

.lr.ph188:                                        ; preds = %.preheader150, %bb.m
  %.5187 = phi i64 [ %i.av, %bb.m ], [ %.1108.lcssa, %.preheader150 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.5187
  %i.at = load i8, ptr %i.as, align 1, !tbaa !30
  %i.au = icmp eq i8 %i.at, 42
  br i1 %i.au, label %bb.m, label %.critedge2

bb.m:                                             ; preds = %.lr.ph188
  %i.av = add i64 %.5187, 1                       ; 2 uses
  %exitcond238.not = icmp eq i64 %i.av, %3
  br i1 %exitcond238.not, label %.critedge2, label %.lr.ph188, !llvm.loop !669

.critedge2:                                       ; preds = %.lr.ph188, %bb.m, %.preheader150
  %.5.lcssa = phi i64 [ %.1108.lcssa, %.preheader150 ], [ %3, %bb.m ], [ %.5187, %.lr.ph188 ]
  %i.aw = icmp eq i64 %.5.lcssa, %3
  %i.ax = icmp eq i64 %.1113.lcssa, %1
  %i.ay = and i1 %i.ax, %i.aw
  br label %.thread

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split.us
  %i.az = phi i8 [ %i.e, %.lr.ph.split.us ], [ %i.s, %.lr.ph.split ], [ %i.s, %.lr.ph.split ] ; 3 uses
  %.us-phi169 = phi i64 [ %.1113162.us, %.lr.ph.split.us ], [ %.1113162, %.lr.ph.split ], [ %.1113162, %.lr.ph.split ]
  %.us-phi170 = phi i64 [ %.1108163.us, %.lr.ph.split.us ], [ %.1108163, %.lr.ph.split ], [ %.1108163, %.lr.ph.split ] ; 2 uses
  %i.ba = add nuw i64 %.us-phi170, 1              ; 3 uses
  %i.bb = icmp eq i64 %i.ba, %3
  br i1 %i.bb, label %.thread, label %bb.n

bb.n:                                             ; preds = %.split.us
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !30
  %i.be = icmp eq i8 %i.bd, 33                    ; 3 uses
  %i.bf = add i64 %.us-phi170, 2
  %spec.select = select i1 %i.be, i64 %i.bf, i64 %i.ba ; 3 uses
  %5 = zext i1 %i.be to i8                        ; 2 uses
  %i.bg = icmp ult i64 %spec.select, %3
  br i1 %i.bg, label %.lr.ph183, label %.thread

.lr.ph183:                                        ; preds = %bb.n
  %i.bh = xor i1 %i.be, true
  %i.bi = zext i1 %i.bh to i8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph183, %bb.u
  %.099182 = phi i8 [ %5, %.lr.ph183 ], [ %.1100, %bb.u ] ; 3 uses
  %.7181 = phi i64 [ %spec.select, %.lr.ph183 ], [ %.8, %bb.u ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %.7181
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !30  ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 93
  %i.bm = icmp ugt i64 %.7181, %spec.select
  %or.cond124 = and i1 %i.bl, %i.bm
  %i.bn = add i64 %.7181, 1                       ; 4 uses
  br i1 %or.cond124, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp eq i64 %i.bn, %3
  br i1 %i.bo, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !30
  %i.br = icmp eq i8 %i.bq, 45
  br i1 %i.br, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bs = add i64 %.7181, 2                       ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %3
  br i1 %i.bt, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !30
  %i.bw = icmp sge i8 %i.az, %i.bk
  %i.bx = icmp sle i8 %i.az, %i.bv
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  %i.bz = add i64 %.7181, 3
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ca = icmp eq i8 %i.bk, %i.az
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.8 = phi i64 [ %i.bz, %bb.s ], [ %i.bn, %bb.t ] ; 2 uses
  %.097.in = phi i1 [ %i.by, %bb.s ], [ %i.ca, %bb.t ]
  %6 = icmp eq i8 %.099182, %5
  %or.cond = select i1 %6, i1 %.097.in, i1 false
  %.1100 = select i1 %or.cond, i8 %i.bi, i8 %.099182
  %i.cb = icmp ult i64 %.8, %3
  br i1 %i.cb, label %bb.o, label %.thread

bb.v:                                             ; preds = %bb.o
  %i.cc = trunc nuw i8 %.099182 to i1
  %i.cd = add i64 %.us-phi169, 1
  br i1 %i.cc, label %bb.b, label %.thread

.thread:                                          ; preds = %.split.us, %bb.v, %bb.n, %bb.j, %bb.i, %bb.k, %bb.e, %bb.d, %bb.c, %bb.p, %bb.u, %bb.r, %bb.h, %.preheader, %.critedge, %.critedge2
  %.4 = phi i1 [ false, %bb.p ], [ %i.ay, %.critedge2 ], [ false, %bb.e ], [ false, %bb.j ], [ true, %.critedge ], [ false, %.preheader ], [ %i.ah, %bb.h ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.v ], [ false, %.split.us ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10NotLikeFun11GetFunctionEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunction") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %3 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
          to label %bb.a unwind label %.thread

.thread:                                          ; preds = %._crit_edge.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef zeroext 25)
          to label %bb.b unwind label %.loopexit.loopexit26

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc19 unwind label %.body20.thread ; 7 uses

.noexc19:                                         ; preds = %bb.b
  store ptr %i.f, ptr %2, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !42
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread36

.thread36:                                        ; preds = %.noexc19
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = call ptr @__cxa_begin_catch(ptr %i.j) #28 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc19
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !43
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 10)
          to label %bb.f unwind label %bb.l

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #28 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #28
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread36
  invoke void @__cxa_rethrow() #30
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body20 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #31
  unreachable

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body20.thread:                                   ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body20:                                          ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.f) #32
  br label %.body

bb.f:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.x, align 8
  store ptr @_ZN6duckdb12_GLOBAL__N_119RegularLikeFunctionINS0_15NotLikeOperatorELb1EEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %5, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.w, align 8, !tbaa !47
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.v, align 8, !tbaa !48
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 0)
          to label %bb.g unwind label %.thread41

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb14ScalarFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISL_ELb1EEERNS_13ClientContextERS0_RNS7_INSK_INS_10ExpressionESM_ISS_ELb1EEELb1ESaISU_EEEEPFSO_RNS_23ScalarFunctionBindInputESR_SX_EPFNSK_INS_14BaseStatisticsESM_IS14_ELb1EEESQ_RNS_23FunctionStatisticsInputEEPFNSK_INS_18FunctionLocalStateESM_IS1B_ELb1EEESF_RKNS_23BoundFunctionExpressionEPSL_ES8_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS8_SQ_RKSA_mE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_116LikeBindFunctionERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  %i.ac = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.ac, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.af = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.af) #32
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ah = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ah) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 235
  store i8 1, ptr %i.aj, align 1, !tbaa !201
  ret void

.loopexit.loopexit26:                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  br label %.loopexit

bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p
end_hunk_0
