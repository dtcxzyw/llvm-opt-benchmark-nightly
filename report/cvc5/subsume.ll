Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/subsume?download=true
inline.NumInlined: 469
inline.NumDeleted: 239
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7CaDiCaL8Internal13shrink_clauseEPNS_6ClauseEi

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal13subsume_roundEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.0", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3756
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !155
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond196 = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond196, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 4 uses
  %i.g = load volatile i8, ptr %i.f, align 8, !tbaa !189, !range !155, !noundef !156
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !190  ; 3 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !190
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !169
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !191  ; 3 uses
  %.not3.i = icmp eq ptr %i.q, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.i, align 8, !tbaa !192  ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.i, align 8, !tbaa !192
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.u = load i32, ptr %i.t, align 8, !tbaa !193
  store i32 %i.u, ptr %i.i, align 8, !tbaa !192
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !194
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !196
  br i1 %i.y, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.f, align 8, !tbaa !189
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !197
  %.not157 = icmp eq i64 %i.aa, 0
  br i1 %.not157, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !198
  %.not158 = icmp eq i64 %i.ac, 0
  br i1 %.not158, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !154, !range !155, !noundef !156
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %._crit_edge457, label %bb.k

._crit_edge457:                                   ; preds = %bb.j
  %.pre = load i32, ptr %0, align 8, !tbaa !199
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !200, !range !155, !noundef !156
  %i.ai = trunc nuw i8 %i.ah to i1
  %.pre458 = load i32, ptr %0, align 8, !tbaa !199 ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = and i32 %.pre458, -257                  ; 2 uses
  store i32 %i.aj, ptr %0, align 8, !tbaa !199
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge457, %bb.l, %bb.k
  %i.ak = phi i32 [ %.pre, %._crit_edge457 ], [ %i.aj, %bb.l ], [ %.pre458, %bb.k ]
  %i.al = or i32 %i.ak, 1536
  store i32 %i.al, ptr %0, align 8, !tbaa !199
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4824 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !201
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !201
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !202
  %.not159 = icmp eq i32 %i.aq, 0
  br i1 %.not159, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !203
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3788
  %i.au = load i32, ptr %i.at, align 4, !tbaa !204
  %i.av = sitofp i32 %i.au to double
  %i.aw = fmul nnan double %i.av, 1.000000e-03
  %i.ax = sitofp i64 %i.as to double
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = fptosi double %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !205
  %i.bc = sext i32 %i.bb to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.az, i64 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3776
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !206
  %i.bf = sext i32 %i.be to i64
  %spec.store.select197 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5536
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !207
  %sext314 = shl i64 %i.bh, 32
  %i.bi = ashr exact i64 %sext314, 31
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %spec.store.select197, i64 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4800
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !208
  %i.bl = add nsw i64 %.sroa.speculated, %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0120 = phi i64 [ %i.bl, %bb.n ], [ 9223372036854775807, %bb.m ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !163
  tail call void @_ZN7CaDiCaL8Internal10init_noccsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !209 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !209 ; 2 uses
  %.not315376 = icmp eq ptr %i.bp, %i.br
  br i1 %.not315376, label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit, label %.lr.ph383

.lr.ph383:                                        ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3764
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2932
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.t

._crit_edge384:                                   ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292
  %i.by = icmp ne i64 %.3137, 0                   ; 3 uses
  %i.bz = ptrtoint ptr %.sroa.26.1 to i64
  %i.ca = ptrtoint ptr %.sroa.0268.1 to i64       ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ptrtoint ptr %.sroa.16.1 to i64
  %i.cd = sub i64 %i.cc, %i.ca                    ; 4 uses
  %i.ce = icmp ugt i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.p, label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit

bb.p:                                             ; preds = %._crit_edge384
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.16.1, %.sroa.0268.1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = icmp ugt i64 %i.cd, 9223372036854775792
  br i1 %i.cf, label %.noexc.i.i.i, label %bb.r, !prof !210

.noexc.i.i.i:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #13
          to label %.lr.ph.i.i.i.i.i.i unwind label %bb.aj ; 2 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %i.cg, %bb.r ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0268.1, %bb.r ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !211
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ch, %.sroa.16.1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !214

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.p
  %.sink.i = phi ptr [ null, %bb.p ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %bb.p ], [ %i.ci, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.cd ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0268.1, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0268.1) #14
  br label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit

bb.t:                                             ; preds = %.lr.ph383, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292
  %.0134381 = phi i64 [ 0, %.lr.ph383 ], [ %.3137, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292 ] ; 7 uses
  %.sroa.0268.0380 = phi ptr [ null, %.lr.ph383 ], [ %.sroa.0268.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292 ] ; 14 uses
  %.sroa.0265.0379 = phi ptr [ %i.bp, %.lr.ph383 ], [ %i.gn, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292 ] ; 2 uses
  %.sroa.26.0378 = phi ptr [ null, %.lr.ph383 ], [ %.sroa.26.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292 ] ; 11 uses
  %.sroa.16.0377 = phi ptr [ null, %.lr.ph383 ], [ %.sroa.16.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292 ] ; 10 uses
  %i.ck = load ptr, ptr %.sroa.0265.0379, align 8, !tbaa !213 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8            ; 3 uses
  %i.cn = and i32 %i.cm, 16
  %.not179 = icmp eq i32 %i.cn, 0
  br i1 %.not179, label %bb.u, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !165 ; 4 uses
  %i.cq = load i32, ptr %i.bs, align 4, !tbaa !215
  %i.cr = icmp sgt i32 %i.cp, %i.cq
  br i1 %i.cr, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = and i32 %i.cm, 2304
  %or.cond.i = icmp eq i32 %i.cs, 2048
  br i1 %or.cond.i, label %bb.w, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !165
  %i.cv = load i32, ptr %i.bt, align 4, !tbaa !216
  %i.cw = icmp sgt i32 %i.cu, %i.cv
  br i1 %i.cw, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit: ; preds = %bb.w
  %i.cx = load i32, ptr %i.bu, align 8, !tbaa !217
  %.not321 = icmp sgt i32 %i.cp, %i.cx
  br i1 %.not321, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread: ; preds = %bb.v, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 5 uses
  %i.cz = sext i32 %i.cp to i64                   ; 3 uses
  %.idx429 = shl nsw i64 %i.cz, 2                 ; 2 uses
  %.not180368 = icmp eq i32 %i.cp, 0
  br i1 %.not180368, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread
  %i.da = load ptr, ptr %i.bv, align 8, !tbaa !218 ; 3 uses
  %i.db = add nsw i64 %.idx429, -4                ; 3 uses
  %i.dc = lshr exact i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %i.de = icmp eq i64 %i.db, 0
  br i1 %i.de, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.dd, 9223372036854775806
  br label %bb.y

._crit_edge.unr-lcssa:                            ; preds = %bb.ac
  %i.df = and i64 %i.db, 4
  %lcmp.mod.not.not = icmp eq i64 %i.df, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0122371.epil.init = phi ptr [ %i.cy, %.lr.ph ], [ %i.eq, %._crit_edge.unr-lcssa ]
  %.0123370.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1124.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0125369.epil.init = phi i1 [ false, %.lr.ph ], [ %.1126.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod646 = trunc i64 %i.dd to i1
  tail call void @llvm.assume(i1 %lcmp.mod646)
  %i.dg = load i32, ptr %.0122371.epil.init, align 4, !tbaa !165 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.da, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !219
  %.not183.epil = icmp eq i8 %i.dj, 0
  br i1 %.not183.epil, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %.epil.preheader
  %i.dk = tail call noundef i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = load ptr, ptr %i.bw, align 8, !tbaa !162
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i32, ptr %i.dn, align 1
  %i.dp = lshr i32 %i.do, 9
  %i.dq = and i32 %i.dp, 1
  %spec.select.epil = add nsw i32 %i.dq, %.0123370.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.x, %._crit_edge.unr-lcssa
  %.1126.lcssa = phi i1 [ %.1126.1, %._crit_edge.unr-lcssa ], [ %.0125369.epil.init, %bb.x ], [ true, %.epil.preheader ]
  %.1124.lcssa = phi i32 [ %.1124.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %bb.x ], [ %.0123370.epil.init, %.epil.preheader ]
  %i.dr = icmp slt i32 %.1124.lcssa, 2
  %i.ds = select i1 %.1126.lcssa, i1 true, i1 %i.dr
  br i1 %i.ds, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread292, label %bb.ad

bb.y:                                             ; preds = %bb.ac, %.lr.ph.new
  %.0122371 = phi ptr [ %i.cy, %.lr.ph.new ], [ %i.eq, %bb.ac ] ; 3 uses
  %.0123370 = phi i32 [ 0, %.lr.ph.new ], [ %.1124.1, %bb.ac ] ; 2 uses
  %.0125369 = phi i1 [ false, %.lr.ph.new ], [ %.1126.1, %bb.ac ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ac ]
  %i.dt = load i32, ptr %.0122371, align 4, !tbaa !165 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.da, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !219
  %.not183 = icmp eq i8 %i.dw, 0
  br i1 %.not183, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dx = tail call noundef i32 @llvm.abs.i32(i32 %i.dt, i1 true)
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = load ptr, ptr %i.bw, align 8, !tbaa !162
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load i32, ptr %i.ea, align 1
  %i.ec = lshr i32 %i.eb, 9
  %i.ed = and i32 %i.ec, 1
  %spec.select = add nsw i32 %i.ed, %.0123370
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1126 = phi i1 [ %.0125369, %bb.z ], [ true, %bb.y ]
  %.1124 = phi i32 [ %spec.select, %bb.z ], [ %.0123370, %bb.y ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0122371, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !165 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.da, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !219
  %.not183.1 = icmp eq i8 %i.ei, 0
  br i1 %.not183.1, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ej = tail call noundef i32 @llvm.abs.i32(i32 %i.ef, i1 true)
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = load ptr, ptr %i.bw, align 8, !tbaa !162
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ek
  %i.en = load i32, ptr %i.em, align 1
  %i.eo = lshr i32 %i.en, 9
  %i.ep = and i32 %i.eo, 1
  %spec.select.1 = add nsw i32 %i.ep, %.1124
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1126.1 = phi i1 [ %.1126, %bb.ab ], [ true, %bb.aa ] ; 3 uses
  %.1124.1 = phi i32 [ %spec.select.1, %bb.ab ], [ %.1124, %bb.aa ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0122371, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.y

bb.ad:                                            ; preds = %._crit_edge
  %i.er = lshr i32 %i.cm, 13
  %i.es = and i32 %i.er, 1
  %i.et = zext nneg i32 %i.es to i64
  %spec.select189 = add nsw i64 %.0134381, %i.et  ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.16.0377, %.sroa.26.0378
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.cz, ptr %.sroa.16.0377, align 8, !tbaa !212
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16.0377, i64 8
  store ptr %i.ck, ptr %.sroa.6261.0..sroa_idx, align 8, !tbaa !213
  br label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE9push_backEOS1_.exit

bb.af:                                            ; preds = %bb.ad
  %i.eu = ptrtoint ptr %.sroa.26.0378 to i64
  %i.ev = ptrtoint ptr %.sroa.0268.0380 to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 3 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775792
  br i1 %i.ex, label %bb.ag, label %_ZNKSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc202 unwind label %.loopexit.split-lp330

.noexc202:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.ey = ashr exact i64 %i.ew, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 576460752303423487)
  %i.fc = select i1 %i.fa, i64 576460752303423487, i64 %i.fb ; 3 uses
  %.not.i.i.i.i201 = icmp ne i64 %i.fc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i201)
  %i.fd = shl nuw nsw i64 %i.fc, 4
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #13
          to label %.noexc203 unwind label %.loopexit329 ; 5 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ew ; 2 uses
  store i64 %i.cz, ptr %i.ff, align 8, !tbaa !212
  %.sroa.6261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.ck, ptr %.sroa.6261.0..sroa_idx262, align 8, !tbaa !213
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0268.0380, %.sroa.26.0378
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i
end_hunk_0
