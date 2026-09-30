Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/subsume?download=true
inline.NumInlined: 476
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7CaDiCaL8Internal17strengthen_clauseEPNS_6ClauseEi:bb.a
_ZN7CaDiCaL8External21check_shrunken_clauseEPNS_6ClauseE.exit: ; preds = %_ZSt6removeIPiiET_S1_S1_RKT0_.exit, %bb.q
  ret void
}

declare void @_ZN7CaDiCaL5Proof17strengthen_clauseEPNS_6ClauseEiRKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef i64 @_ZN7CaDiCaL8Internal13shrink_clauseEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal13subsume_roundEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.0", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %i.b = load i32, ptr %i.a, align 8, !tbaa !158
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !160
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond258 = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond258, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 4 uses
  %i.g = load volatile i8, ptr %i.f, align 8, !tbaa !217, !range !160, !noundef !161
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !218  ; 3 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !218
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !169
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !219  ; 3 uses
  %.not3.i = icmp eq ptr %i.q, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.i, align 8, !tbaa !220  ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.i, align 8, !tbaa !220
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.u = load i32, ptr %i.t, align 4, !tbaa !221
  store i32 %i.u, ptr %i.i, align 8, !tbaa !220
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !223
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !212
  br i1 %i.y, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.f, align 8, !tbaa !217
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4216 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !188
  %.not200 = icmp eq i64 %i.aa, 0
  br i1 %.not200, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4224
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !224
  %.not201 = icmp eq i64 %i.ac, 0
  br i1 %.not201, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !225
  %.not.i261 = icmp eq i32 %i.ae, 0
  br i1 %.not.i261, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.k, %bb.l
  %i.ah = phi double [ %i.af, %bb.k ], [ %i.ag, %bb.l ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 15 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3608
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !226 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !159, !range !160, !noundef !161
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !227, !range !160, !noundef !161
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4, !tbaa !228, !range !160, !noundef !161
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.o, label %.thread589

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 6800
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !229
  %.not202 = icmp sgt i32 %i.aw, %i.al
  br i1 %.not202, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 6768
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.aj, ptr noundef nonnull align 8 dereferenceable(36) %i.ax, double noundef %i.ah)
  %.pre = load i8, ptr %i.as, align 4, !tbaa !228, !range !160
  %.pre532.pre = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 2 uses
  %i.ay = trunc nuw i8 %.pre to i1
  br i1 %i.ay, label %.thread, label %.thread589

.thread589:                                       ; preds = %bb.n, %bb.p
  %.pre532591 = phi ptr [ %.pre532.pre, %bb.p ], [ %i.aj, %bb.n ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pre532591, i64 7040
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !230
  %.not203 = icmp sgt i32 %i.ba, %i.al
  br i1 %.not203, label %.thread, label %bb.q

bb.q:                                             ; preds = %.thread589
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre532591, i64 7008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre532591, ptr noundef nonnull align 8 dereferenceable(36) %i.bb, double noundef %i.ah)
  %.pre531 = load ptr, ptr %i.ai, align 8, !tbaa !189
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.q, %.thread589, %bb.p
  %i.bc = phi ptr [ %.pre531, %bb.q ], [ %.pre532591, %.thread589 ], [ %.pre532.pre, %bb.p ], [ %i.aj, %bb.o ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6720
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !231
  %.not204 = icmp sgt i32 %i.be, %i.al
  br i1 %.not204, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 6688
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bc, ptr noundef nonnull align 8 dereferenceable(36) %i.bf, double noundef %i.ah)
  %.pre533.pre = load ptr, ptr %i.ai, align 8, !tbaa !189
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread
  %.pre533 = phi ptr [ %.pre533.pre, %bb.r ], [ %i.bc, %.thread ]
  %i.bg = load i32, ptr %0, align 8, !tbaa !232
  %i.bh = and i32 %i.bg, -257
  store i32 %i.bh, ptr %0, align 8, !tbaa !232
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.bi = phi ptr [ %.pre533, %bb.s ], [ %i.aj, %bb.m ], [ %i.aj, %_ZN7CaDiCaL8Internal4timeEv.exit ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6880
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !233
  %.not205 = icmp sgt i32 %i.bk, %i.al
  br i1 %.not205, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 6848
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bi, ptr noundef nonnull align 8 dereferenceable(36) %i.bl, double noundef %i.ah)
  %.pre534 = load ptr, ptr %i.ai, align 8, !tbaa !189
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bm = phi ptr [ %.pre534, %bb.u ], [ %i.bi, %bb.t ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 6920
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !234
  %.not206 = icmp sgt i32 %i.bo, %i.al
  br i1 %.not206, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 6888
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bm, ptr noundef nonnull align 8 dereferenceable(36) %i.bp, double noundef %i.ah)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = load i32, ptr %0, align 8, !tbaa !232
  %i.br = or i32 %i.bq, 1536
  store i32 %i.br, ptr %0, align 8, !tbaa !232
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 6 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !235
  %i.bu = add nsw i64 %i.bt, 1                    ; 3 uses
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !235
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3776
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !236
  %.not207 = icmp eq i32 %i.bw, 0
  br i1 %.not207, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3968
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !237
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3792
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !238
  %i.cb = sitofp i32 %i.ca to double
  %i.cc = fmul nnan double %i.cb, 1.000000e-03
  %i.cd = sitofp i64 %i.by to double
  %i.ce = fmul double %i.cc, %i.cd
  %i.cf = fptosi double %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !239
  %i.ci = sext i32 %i.ch to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.cf, i64 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !240
  %i.cl = sext i32 %i.ck to i64
  %spec.store.select259 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5544
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !241
  %sext385 = shl i64 %i.cn, 32
  %i.co = ashr exact i64 %sext385, 31
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %spec.store.select259, i64 %i.co) ; 2 uses
  %i.cp = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 2 uses
  %.not209 = icmp eq ptr %i.cp, null
  br i1 %.not209, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.cp, ptr noundef nonnull @.str, i64 noundef %i.bu, ptr noundef nonnull @.str.1, i64 noundef %.sroa.speculated)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4808
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !190
  %i.cs = add nsw i64 %i.cr, %.sroa.speculated
  br label %bb.ad

bb.ab:                                            ; preds = %bb.x
  %i.ct = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 2 uses
  %.not208 = icmp eq ptr %i.ct, null
  br i1 %.not208, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.ct, ptr noundef nonnull @.str, i64 noundef %i.bu, ptr noundef nonnull @.str.2)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.0190 = phi i64 [ %i.cs, %bb.aa ], [ 9223372036854775807, %bb.ac ], [ 9223372036854775807, %bb.ab ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4184 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !166
  tail call void @_ZN7CaDiCaL8Internal10init_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !191 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !191 ; 2 uses
  %.not386450 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not386450, label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit, label %.lr.ph457

.lr.ph457:                                        ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2932
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.ai

._crit_edge458:                                   ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363
  %i.dg = icmp ne i64 %.3171, 0                   ; 3 uses
  %i.dh = ptrtoint ptr %.sroa.30.1 to i64
  %i.di = ptrtoint ptr %.sroa.0335.1 to i64       ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ptrtoint ptr %.sroa.18.1 to i64
  %i.dl = sub i64 %i.dk, %i.di                    ; 4 uses
  %i.dm = icmp ugt i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ae, label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit

bb.ae:                                            ; preds = %._crit_edge458
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.18.1, %.sroa.0335.1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = icmp ugt i64 %i.dl, 9223372036854775792
  br i1 %i.dn, label %.noexc.i.i.i, label %bb.ag, !prof !242

.noexc.i.i.i:                                     ; preds = %bb.af
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #13
          to label %.lr.ph.i.i.i.i.i.i unwind label %bb.ay ; 2 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ %i.do, %bb.ag ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0335.1, %bb.ag ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !194
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dp, %.sroa.18.1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !213

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ae
  %.sink = phi ptr [ null, %bb.ae ], [ %i.do, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %bb.ae ], [ %i.dq, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.dl ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0335.1, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EEC2ERKS3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0335.1) #14
  br label %_ZN7CaDiCaL13shrink_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit

bb.ai:                                            ; preds = %.lr.ph457, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363
  %.0168455 = phi i64 [ 0, %.lr.ph457 ], [ %.3171, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 7 uses
  %.sroa.0332.0454 = phi ptr [ %i.cx, %.lr.ph457 ], [ %i.hv, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 2 uses
  %.sroa.30.0453 = phi ptr [ null, %.lr.ph457 ], [ %.sroa.30.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 11 uses
  %.sroa.18.0452 = phi ptr [ null, %.lr.ph457 ], [ %.sroa.18.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 10 uses
  %.sroa.0335.0451 = phi ptr [ null, %.lr.ph457 ], [ %.sroa.0335.1, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363 ] ; 14 uses
  %i.ds = load ptr, ptr %.sroa.0332.0454, align 8, !tbaa !193 ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 8            ; 3 uses
  %i.dv = and i32 %i.du, 16
  %.not241 = icmp eq i32 %i.dv, 0
  br i1 %.not241, label %bb.aj, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !167 ; 4 uses
  %i.dy = load i32, ptr %i.da, align 8, !tbaa !243
  %i.dz = icmp sgt i32 %i.dx, %i.dy
  br i1 %i.dz, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ea = and i32 %i.du, 2304
  %or.cond.i = icmp eq i32 %i.ea, 2048
  br i1 %or.cond.i, label %bb.al, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !167
  %i.ed = load i32, ptr %i.db, align 4, !tbaa !244
  %i.ee = icmp sgt i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit: ; preds = %bb.al
  %i.ef = load i32, ptr %i.dc, align 8, !tbaa !245
  %.not395 = icmp sgt i32 %i.dx, %i.ef
  br i1 %.not395, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread: ; preds = %bb.ak, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 5 uses
  %i.eh = sext i32 %i.dx to i64                   ; 3 uses
  %.idx503 = shl nsw i64 %i.eh, 2                 ; 2 uses
  %.not242442 = icmp eq i32 %i.dx, 0
  br i1 %.not242442, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread363, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread
  %i.ei = load ptr, ptr %i.dd, align 8, !tbaa !195 ; 3 uses
  %i.ej = add nsw i64 %.idx503, -4                ; 3 uses
  %i.ek = lshr exact i64 %i.ej, 2
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.em = icmp eq i64 %i.ej, 0
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.el, 9223372036854775806
  br label %bb.an

._crit_edge.unr-lcssa:                            ; preds = %bb.ar
  %i.en = and i64 %i.ej, 4
  %lcmp.mod.not.not = icmp eq i64 %i.en, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0156445.epil.init = phi ptr [ %i.eg, %.lr.ph ], [ %i.fy, %._crit_edge.unr-lcssa ]
  %.0157444.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1158.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0159443.epil.init = phi i1 [ false, %.lr.ph ], [ %.1160.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod740 = trunc i64 %i.el to i1
  tail call void @llvm.assume(i1 %lcmp.mod740)
  %i.eo = load i32, ptr %.0156445.epil.init, align 4, !tbaa !167 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.ei, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !196
  %.not245.epil = icmp eq i8 %i.er, 0
  br i1 %.not245.epil, label %bb.am, label %._crit_edge

bb.am:                                            ; preds = %.epil.preheader
  %i.es = tail call noundef i32 @llvm.abs.i32(i32 %i.eo, i1 true)
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal13subsume_roundEv:bb.a
  %i.om = ashr exact i64 %i.ok, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.om, i64 1)
  %i.on = add nsw i64 %.sroa.speculated.i.i.i, %i.om ; 2 uses
  %i.oo = icmp ult i64 %i.on, %i.om
  %i.op = call i64 @llvm.umin.i64(i64 %i.on, i64 1152921504606846975)
  %i.oq = select i1 %i.oo, i64 1152921504606846975, i64 %i.op ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.oq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.or = shl nuw nsw i64 %i.oq, 3
  %i.os = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.or) #13
          to label %.noexc276 unwind label %.loopexit ; 4 uses

.noexc276:                                        ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ot = getelementptr inbounds i8, ptr %i.os, i64 %i.ok ; 2 uses
  store ptr %i.jv, ptr %i.ot, align 8, !tbaa !193
  %i.ou = icmp sgt i64 %i.ok, 0
  br i1 %i.ou, label %bb.ce, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.ce:                                            ; preds = %.noexc276
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.os, ptr align 8 %i.oh, i64 %i.ok, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.ce, %.noexc276
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %.not.i17.i.i = icmp eq ptr %i.oh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.oh) #14
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.cf, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.os, ptr %i.ob, align 8, !tbaa !203
  store ptr %i.ov, ptr %i.oc, align 8, !tbaa !202
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.oq
  store ptr %i.ow, ptr %i.oe, align 8, !tbaa !204
  %.pre537 = load i32, ptr %i.jx, align 8, !tbaa !167 ; 2 uses
  %.pre545 = sext i32 %.pre537 to i64             ; 2 uses
  %.pre546 = shl nsw i64 %.pre545, 2
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.cb
  %.idx.pre-phi = phi i64 [ %.pre546, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.idx505620635647653, %bb.cb ]
  %.pre-phi = phi i64 [ %.pre545, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.nw, %bb.cb ]
  %i.ox = phi i32 [ %.pre537, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.nu, %bb.cb ]
  %i.oy = getelementptr inbounds i8, ptr %i.nv, i64 %.idx.pre-phi ; 2 uses
  %.not.i.i277 = icmp eq i32 %i.ox, 0
  br i1 %.not.i.i277, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %i.oz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre-phi, i1 true)
  %i.pa = shl nuw nsw i64 %i.oz, 1
  %i.pb = xor i64 %i.pa, 126
  invoke void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_T1_(ptr noundef nonnull %i.nv, ptr noundef nonnull %i.oy, i64 noundef %i.pb, ptr nonnull %0)
          to label %.noexc278 unwind label %.loopexit

.noexc278:                                        ; preds = %bb.cg
  invoke void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_(ptr noundef nonnull %i.nv, ptr noundef nonnull %i.oy, ptr nonnull %0)
          to label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367 unwind label %.loopexit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.cg, %.noexc278
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp:                               ; preds = %bb.cd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ch:                                            ; preds = %bb.bz
  %i.pc = load i32, ptr %i.jb, align 4, !tbaa !252
  %i.pd = sext i32 %i.pc to i64
  %i.pe = icmp ugt i64 %.0134.lcssa, %i.pd
  br i1 %i.pe, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pf = getelementptr inbounds nuw i8, ptr %i.jv, i64 28
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !167
  %i.ph = icmp ne i32 %i.pg, %.0139.lcssa
  %i.pi = zext i1 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !167 ; 2 uses
  %i.pl = call noundef i32 @llvm.abs.i32(i32 %.0139.lcssa, i1 true)
  %i.pm = call noundef i32 @llvm.fshl.i32(i32 %i.pl, i32 %.0139.lcssa, i32 1)
  %i.pn = zext i32 %i.pm to i64
  %i.po = load ptr, ptr %i.iy, align 8, !tbaa !199
  %i.pp = getelementptr inbounds nuw [24 x i8], ptr %i.po, i64 %i.pn ; 4 uses
  %i.pq = load i64, ptr %i.jv, align 8, !tbaa !196 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 3 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !249 ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 16 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !253
  %.not.i.i280 = icmp eq ptr %i.ps, %i.pu
  br i1 %.not.i.i280, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 %i.pk, ptr %i.ps, align 8, !tbaa !167
  %.sroa.6306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i64 %i.pq, ptr %.sroa.6306.0..sroa_idx, align 8, !tbaa !192
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  store ptr %i.pv, ptr %i.pr, align 8, !tbaa !249
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367

bb.ck:                                            ; preds = %bb.ci
  %i.pw = load ptr, ptr %i.pp, align 8, !tbaa !250 ; 4 uses
  %i.px = ptrtoint ptr %i.ps to i64
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = sub i64 %i.px, %i.py                    ; 5 uses
  %i.qa = icmp eq i64 %i.pz, 9223372036854775792
  br i1 %i.qa, label %bb.cl, label %_ZNKSt6vectorIN7CaDiCaL3BinESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #12
          to label %.noexc283 unwind label %.loopexit.split-lp397

.noexc283:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorIN7CaDiCaL3BinESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ck
  %i.qb = ashr exact i64 %i.pz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i281 = call i64 @llvm.umax.i64(i64 %i.qb, i64 1)
  %i.qc = add nsw i64 %.sroa.speculated.i.i.i.i281, %i.qb ; 2 uses
  %i.qd = icmp ult i64 %i.qc, %i.qb
  %i.qe = call i64 @llvm.umin.i64(i64 %i.qc, i64 576460752303423487)
  %i.qf = select i1 %i.qd, i64 576460752303423487, i64 %i.qe ; 3 uses
  %.not.i.i.i.i282 = icmp ne i64 %i.qf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i282)
  %i.qg = shl nuw nsw i64 %i.qf, 4
  %i.qh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qg) #13
          to label %.noexc284 unwind label %.loopexit396 ; 4 uses

.noexc284:                                        ; preds = %_ZNKSt6vectorIN7CaDiCaL3BinESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 %i.pz ; 3 uses
  store i32 %i.pk, ptr %i.qi, align 8, !tbaa !167
  %.sroa.6306.0..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i64 %i.pq, ptr %.sroa.6306.0..sroa_idx307, align 8, !tbaa !192
  %i.qj = icmp sgt i64 %i.pz, 0
  br i1 %i.qj, label %bb.cm, label %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.cm:                                            ; preds = %.noexc284
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qh, ptr align 8 %i.pw, i64 %i.pz, i1 false)
  br label %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.cm, %.noexc284
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.pw) #14
  br label %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.cn, %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.qh, ptr %i.pp, align 8, !tbaa !250
  store ptr %i.qk, ptr %i.pr, align 8, !tbaa !249
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qh, i64 %i.qf
  store ptr %i.ql, ptr %i.pt, align 8, !tbaa !253
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367

.loopexit396:                                     ; preds = %_ZNKSt6vectorIN7CaDiCaL3BinESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit398 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp397:                            ; preds = %bb.cl
  %lpad.loopexit.split-lp399 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367: ; preds = %bb.br, %bb.cj, %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %.noexc278, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %._crit_edge474, %bb.ch, %bb.ca
  %.5373 = phi i64 [ %.3611618, %bb.cj ], [ %.3611618, %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.3611618, %bb.ca ], [ %.3611618, %bb.ch ], [ %.3611618, %._crit_edge474 ], [ %.3611618636646654, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %.3611618636646654, %.noexc278 ], [ %.0145483, %bb.br ] ; 2 uses
  %.4152372 = phi i64 [ %.0148482, %bb.cj ], [ %.0148482, %_ZNSt6vectorIN7CaDiCaL3BinESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.0148482, %bb.ca ], [ %.0148482, %bb.ch ], [ %.0148482, %._crit_edge474 ], [ %.0148482, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %.0148482, %.noexc278 ], [ %i.kj, %bb.br ] ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0319.0481, i64 16 ; 2 uses
  %.not389 = icmp eq ptr %i.qm, %.sroa.18.2
  br i1 %.not389, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread376, label %bb.bg

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread376: ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367, %bb.bg, %bb.bn, %.preheader, %.sink.split.i271
  %.0148431 = phi i64 [ %.0148482, %.sink.split.i271 ], [ 0, %.preheader ], [ %.4152372, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367 ], [ %.0148482, %bb.bg ], [ %.0148482, %bb.bn ] ; 3 uses
  %.0145423 = phi i64 [ %.0145483, %.sink.split.i271 ], [ 0, %.preheader ], [ %.5373, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367 ], [ %.0145483, %bb.bg ], [ %.0145483, %bb.bn ] ; 3 uses
  %.0142415 = phi i64 [ %.0142484, %.sink.split.i271 ], [ 0, %.preheader ], [ %i.jw, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread367 ], [ %.0142484, %bb.bg ], [ %.0142484, %bb.bn ] ; 4 uses
  %i.qn = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 2 uses
  %.not224 = icmp eq ptr %i.qn, null
  br i1 %.not224, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread376
  %i.qo = load i64, ptr %i.bs, align 8, !tbaa !235
  %i.qp = add nsw i64 %.0145423, %.0148431
  %i.qq = sitofp i64 %i.qp to double
  %i.qr = sitofp i64 %i.ih to double
  %i.qs = fmul nnan double %i.qq, 1.000000e+02
  %i.qt = fdiv double %i.qs, %i.qr
  %i.qu = select i1 %.not387463, double 0.000000e+00, double %i.qt
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.qn, ptr noundef nonnull @.str, i64 noundef %i.qo, ptr noundef nonnull @.str.4, i64 noundef %.0148431, i64 noundef %.0145423, i64 noundef %i.ih, double noundef %i.qu)
          to label %bb.cp unwind label %bb.bf

bb.cp:                                            ; preds = %bb.co, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit273.thread376
  %i.qv = sub i64 %i.ih, %.0142415
  %.not225 = icmp eq i64 %i.ih, %.0142415         ; 2 uses
  %i.qw = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 3 uses
  %.not227 = icmp eq ptr %i.qw, null              ; 2 uses
  br i1 %.not225, label %bb.cq, label %3

bb.cq:                                            ; preds = %bb.cp
  br i1 %.not227, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %2 = load i64, ptr %i.bs, align 8, !tbaa !235
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.qw, ptr noundef nonnull @.str, i64 noundef %2, ptr noundef nonnull @.str.5, i64 noundef %i.ih)
          to label %bb.cu unwind label %bb.cs

bb.cs:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, %bb.da, %bb.cy, %bb.cx, %_ZN7CaDiCaL12erase_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit, %bb.ct, %bb.cr
  %.sroa.0335.3 = phi ptr [ %.sroa.0335.8, %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit ], [ %.sroa.0335.8, %bb.da ], [ %.sroa.0335.8, %bb.cy ], [ %.sroa.0335.8, %bb.cx ], [ %.sroa.0335.8, %_ZN7CaDiCaL12erase_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit ], [ %.sroa.0335.6, %bb.cr ], [ %.sroa.0335.6, %bb.ct ]
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

3:                                                ; preds = %bb.cp
  br i1 %.not227, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %3
  %4 = load i64, ptr %i.bs, align 8, !tbaa !235
  %i.qy = uitofp nneg i64 %.0142415 to double
  %i.qz = sitofp i64 %i.ih to double
  %i.ra = fmul nnan double %i.qy, 1.000000e+02
  %i.rb = fdiv double %i.ra, %i.qz
  %i.rc = select i1 %.not387463, double 0.000000e+00, double %i.rb
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.qw, ptr noundef nonnull @.str, i64 noundef %4, ptr noundef nonnull @.str.6, i64 noundef %.0142415, double noundef %i.rc, i64 noundef %i.qv)
          to label %bb.cu unwind label %bb.cs

bb.cu:                                            ; preds = %3, %bb.ct, %bb.cq, %bb.cr
  %.not.i285 = icmp eq ptr %.sroa.30.2, %.sroa.0335.6
  br i1 %.not.i285, label %_ZN7CaDiCaL12erase_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not.i.i.i.i286 = icmp eq ptr %.sroa.0335.6, null
  br i1 %.not.i.i.i.i286, label %_ZN7CaDiCaL12erase_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0335.6) #14
  br label %_ZN7CaDiCaL12erase_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit

_ZN7CaDiCaL12erase_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %bb.cu, %bb.cv, %bb.cw
  %.sroa.0335.8 = phi ptr [ %.sroa.0335.6, %bb.cu ], [ null, %bb.cv ], [ null, %bb.cw ] ; 10 uses
  invoke void @_ZN7CaDiCaL8Internal11reset_noccsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.cx unwind label %bb.cs

bb.cx:                                            ; preds = %_ZN7CaDiCaL12erase_vectorINS_10ClauseSizeEEEvRSt6vectorIT_SaIS3_EE.exit
  invoke void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.cy unwind label %bb.cs

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN7CaDiCaL8Internal10reset_binsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.cz unwind label %bb.cs

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not225, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN7CaDiCaL8Internal18reset_subsume_bitsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.db unwind label %bb.cs

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.rd = load ptr, ptr %1, align 8, !tbaa !191   ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !191 ; 2 uses
  %.not394497 = icmp eq ptr %i.rd, %i.rf
  br i1 %.not394497, label %._crit_edge501, label %.lr.ph500

._crit_edge501.loopexit:                          ; preds = %bb.de
  %.pre538 = load ptr, ptr %1, align 8, !tbaa !203
  br label %._crit_edge501

._crit_edge501:                                   ; preds = %._crit_edge501.loopexit, %bb.db
  %i.rg = phi ptr [ %.pre538, %._crit_edge501.loopexit ], [ %i.rd, %bb.db ] ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !204
  %.not.i287 = icmp eq ptr %i.ri, %i.rg
  br i1 %.not.i287, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge501
  %.not.i.i.i.i288 = icmp eq ptr %i.rg, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i288, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_ZdlPv(ptr noundef nonnull %i.rg) #14
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %._crit_edge501, %bb.dc, %bb.dd
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !254
  %.not228 = icmp eq i32 %i.rk, 0
  %i.rl = sub i64 0, %.0145423
  %.not229 = icmp eq i64 %.0148431, %i.rl
  %narrow = select i1 %.not228, i1 %.not229, i1 false
  %i.rm = zext i1 %narrow to i32
  invoke void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 115, i32 noundef %i.rm)
          to label %bb.dg unwind label %bb.cs

.lr.ph500:                                        ; preds = %bb.db, %bb.de
  %.sroa.0299.0498 = phi ptr [ %i.ro, %bb.de ], [ %i.rd, %bb.db ] ; 2 uses
  %i.rn = load ptr, ptr %.sroa.0299.0498, align 8, !tbaa !193
  invoke void @_ZN7CaDiCaL8Internal10mark_addedEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %i.rn)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %.lr.ph500
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0299.0498, i64 8 ; 2 uses
  %.not394 = icmp eq ptr %i.ro, %i.rf
  br i1 %.not394, label %._crit_edge501.loopexit, label %.lr.ph500

bb.df:                                            ; preds = %.lr.ph500
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dg:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  %i.rq = load i32, ptr %i.ad, align 4, !tbaa !225
  %.not.i289 = icmp eq i32 %i.rq, 0
  br i1 %.not.i289, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rr = invoke noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %_ZN7CaDiCaL8Internal4timeEv.exit292 unwind label %bb.dk

bb.di:                                            ; preds = %bb.dg
  %i.rs = invoke noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %_ZN7CaDiCaL8Internal4timeEv.exit292 unwind label %bb.dk

_ZN7CaDiCaL8Internal4timeEv.exit292:              ; preds = %bb.dh, %bb.di
  %i.rt = phi double [ %i.rr, %bb.dh ], [ %i.rs, %bb.di ] ; 5 uses
  %i.ru = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 3608
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !226 ; 5 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 6920
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !234
  %.not230 = icmp sgt i32 %i.ry, %i.rw
  br i1 %.not230, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit292
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 6888
  invoke void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ru, ptr noundef nonnull align 8 dereferenceable(36) %i.rz, double noundef %i.rt)
          to label %._crit_edge539 unwind label %bb.dl

._crit_edge539:                                   ; preds = %bb.dj
  %.pre540 = load ptr, ptr %i.ai, align 8, !tbaa !189
  br label %bb.dm

bb.dk:                                            ; preds = %bb.di, %bb.dh
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dl:                                            ; preds = %bb.dw, %bb.du, %bb.dr, %bb.dn, %bb.dj
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dm:                                            ; preds = %._crit_edge539, %_ZN7CaDiCaL8Internal4timeEv.exit292
  %i.sc = phi ptr [ %.pre540, %._crit_edge539 ], [ %i.ru, %_ZN7CaDiCaL8Internal4timeEv.exit292 ] ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 6880
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !233
  %.not231 = icmp sgt i32 %i.se, %i.rw
  br i1 %.not231, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 6848
  invoke void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.sc, ptr noundef nonnull align 8 dereferenceable(36) %i.sf, double noundef %i.rt)
          to label %bb.do unwind label %bb.dl

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.sg = load i32, ptr %0, align 8, !tbaa !232
  %i.sh = and i32 %i.sg, -1537
  store i32 %i.sh, ptr %0, align 8, !tbaa !232
  %i.si = load i8, ptr %i.am, align 8, !tbaa !159, !range !160, !noundef !161
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.dx, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !227, !range !160, !noundef !161
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %bb.dx, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sn = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 6720
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !231
  %.not232 = icmp sgt i32 %i.sp, %i.rw
  br i1 %.not232, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 6688
  invoke void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.sn, ptr noundef nonnull align 8 dereferenceable(36) %i.sq, double noundef %i.rt)
          to label %bb.ds unwind label %bb.dl

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ss = load i8, ptr %i.sr, align 4, !tbaa !228, !range !160, !noundef !161
  %i.st = trunc nuw i8 %i.ss to i1
  br i1 %i.st, label %bb.dt, label %.thread657

bb.dt:                                            ; preds = %bb.ds
  %i.su = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 6800
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !229
  %.not233 = icmp sgt i32 %i.sw, %i.rw
  br i1 %.not233, label %.thread656, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 6768
  invoke void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.su, ptr noundef nonnull align 8 dereferenceable(36) %i.sx, double noundef %i.rt)
          to label %bb.dv unwind label %bb.dl

bb.dv:                                            ; preds = %bb.du
  %.pre542 = load i8, ptr %i.sr, align 4, !tbaa !228, !range !160
  %i.sy = trunc nuw i8 %.pre542 to i1
  br i1 %i.sy, label %.thread656, label %.thread657

.thread657:                                       ; preds = %bb.ds, %bb.dv
  %i.sz = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 7040
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !230
  %.not234 = icmp sgt i32 %i.tb, %i.rw
  br i1 %.not234, label %.thread656, label %bb.dw

bb.dw:                                            ; preds = %.thread657
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 7008
  invoke void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.sz, ptr noundef nonnull align 8 dereferenceable(36) %i.tc, double noundef %i.rt)
          to label %.thread656 unwind label %bb.dl

end_hunk_1
