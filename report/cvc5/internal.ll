Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/internal?download=true
inline.NumInlined: 2017
inline.NumDeleted: 1076
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL8Internal18init_search_limitsEv:bb.a
  store i8 0, ptr %i.bi, align 8, !tbaa !156
  %i.bj = icmp slt i32 %i.bd, 1
  br i1 %i.bj, label %_ZN7CaDiCaL9Reluctant6enableEil.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = zext nneg i32 %i.bd to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !342
  br label %_ZN7CaDiCaL9Reluctant6enableEil.exit

_ZN7CaDiCaL9Reluctant6enableEil.exit:             ; preds = %bb.l, %bb.m
  %.sink.i = phi i8 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %.sink.i, ptr %i.bm, align 1, !tbaa !343
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bn, align 8, !tbaa !155
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.bo, align 8, !tbaa !156
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN7CaDiCaL9Reluctant6enableEil.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !344 ; 2 uses
  %i.br = add nsw i64 %i.bq, %i.au
  %.inv = icmp sgt i64 %i.bq, -1
  %spec.select = select i1 %.inv, i64 %i.br, i64 -1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i64 %spec.select, ptr %i.bs, align 8, !tbaa !287
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !345 ; 2 uses
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !346
  %i.by = add nsw i64 %i.bx, %i.bu
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink11 = phi i64 [ %i.by, %bb.p ], [ -1, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i64 %.sink11, ptr %i.bz, align 8, !tbaa !288
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !347
  %spec.select17 = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 0)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2832
  store i64 %spec.select17, ptr %i.cc, align 8, !tbaa !348
  store i8 1, ptr %i.a, align 8, !tbaa !320
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7CaDiCaL8Internal18init_report_limitsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(5704) initializes((13, 14), (2896, 2904)) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 0, ptr %i.a, align 1, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2896
  store i64 0, ptr %i.b, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal14already_solvedEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !284, !range !238, !noundef !239
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.e = load i8, ptr %i.d, align 8, !range !238
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond7 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond7, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !310  ; 2 uses
  %.not = icmp ne i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.j = load i32, ptr %i.i, align 4
  %.not3 = icmp eq i32 %i.j, 0
  %or.cond9 = select i1 %.not, i1 %.not3, i1 false
  br i1 %or.cond9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  %.pre = load i32, ptr %i.g, align 4, !tbaa !310
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.m = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ false, %bb.f ]
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 20, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !158
  %i.p = icmp eq i32 %i.o, 0
  %or.cond = and i1 %i.m, %i.p
  %spec.store.select = select i1 %or.cond, i32 10, i32 %.0
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i32 [ %spec.store.select, %bb.g ], [ 20, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3684
  %i.b = load i32, ptr %i.a, align 4, !tbaa !349
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !350
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.k = load i32, ptr %i.j, align 8, !tbaa !351
  %i.l = icmp eq ptr %i.g, %i.i
  %i.m = icmp eq i32 %i.k, 0
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 42, i32 noundef 0)
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 43, i32 noundef 0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !166
  tail call void @_ZN7CaDiCaL8External15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(568) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %i.r, i8 noundef signext 114, i32 noundef 0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !284, !range !238, !noundef !239
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.w = load i32, ptr %i.v, align 4, !tbaa !310
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 20, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal8finalizeEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.d = load i8, ptr %i.c, align 1, !tbaa !240, !range !238, !noundef !239
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !352, !nonnull !239, !align !353
  %i.j = load i32, ptr %i.i, align 4, !tbaa !171  ; 2 uses
  %.not7376 = icmp eq i32 %i.j, 0
  br i1 %.not7376, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5696
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !354, !nonnull !239, !align !353
  %i.m = load i32, ptr %i.l, align 4, !tbaa !171  ; 2 uses
  %i.n = xor i32 %i.m, -1
  %i.o = lshr i32 %i.m, 31
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  %.not7478 = icmp eq i32 %i.p, -1
  br i1 %.not7478, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.sroa.064.077 = phi i32 [ %7, %bb.e ], [ 1, %bb.c ] ; 4 uses
  %3 = shl nsw i32 %.sroa.064.077, 1
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %4 = sext i32 %3 to i64
  %5 = load ptr, ptr %i.t, align 8, !tbaa !195
  %6 = getelementptr [8 x i8], ptr %5, i64 %4     ; 2 uses
  %i.u = load i64, ptr %6, align 8, !tbaa !241    ; 2 uses
  %.not50 = icmp eq i64 %i.u, 0
  br i1 %.not50, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !241  ; 2 uses
  %.not51 = icmp eq i64 %i.w, 0
  br i1 %.not51, label %bb.e, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d
  %.03772 = phi i64 [ %i.w, %bb.d ], [ %i.u, %.lr.ph ]
  %.03871 = phi i32 [ -1, %bb.d ], [ 1, %.lr.ph ]
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !220
  %i.y = mul nsw i32 %.03871, %.sroa.064.077
  tail call void @_ZN7CaDiCaL5Proof22finalize_external_unitEmi(ptr noundef nonnull align 8 dereferenceable(128) %i.x, i64 noundef %.03772, i32 noundef %i.y)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %7 = add i32 %.sroa.064.077, 1
  %.not73 = icmp eq i32 %.sroa.064.077, %i.j
  br i1 %.not73, label %._crit_edge, label %.lr.ph

._crit_edge82:                                    ; preds = %bb.j, %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !219 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !219 ; 2 uses
  %.not7583 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not7583, label %._crit_edge87, label %.lr.ph86

bb.f:                                             ; preds = %.lr.ph81, %bb.j
  %.sroa.058.079 = phi i32 [ -1, %.lr.ph81 ], [ %i.ba, %bb.j ] ; 6 uses
  %i.ad = tail call i32 @llvm.abs.i32(i32 %.sroa.058.079, i1 true) ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !171 ; 3 uses
  %i.ai = icmp slt i32 %.sroa.058.079, 0
  %i.aj = sub nsw i32 0, %i.ah
  %spec.select.i = select i1 %i.ai, i32 %i.aj, i32 %i.ah ; 2 uses
  %.not47 = icmp eq i32 %spec.select.i, 0
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %spec.select.i, i32 1)
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !166
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.ao = zext i32 %i.al to i64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !195
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !241
  %.not48 = icmp eq i64 %i.ar, 0
  br i1 %.not48, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = tail call noundef i32 @llvm.fshl.i32(i32 %i.ad, i32 %.sroa.058.079, i32 1)
  %i.at = sext i32 %i.as to i64
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !195
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !241 ; 2 uses
  %.not49 = icmp eq i64 %i.aw, 0
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !220
  tail call void @_ZN7CaDiCaL5Proof13finalize_unitEmi(ptr noundef nonnull align 8 dereferenceable(128) %i.ax, i64 noundef %i.aw, i32 noundef %.sroa.058.079)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ay = xor i32 %.sroa.058.079, -1
  %i.az = lshr i32 %.sroa.058.079, 31
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  %.not74 = icmp eq i32 %i.ba, %i.p
  br i1 %.not74, label %._crit_edge82, label %bb.f

._crit_edge87:                                    ; preds = %bb.m, %._crit_edge82
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !355 ; 2 uses
  %.not44 = icmp eq i64 %i.bc, 0
  %.pre88 = load ptr, ptr %i.a, align 8, !tbaa !220 ; 2 uses
  br i1 %.not44, label %bb.s, label %bb.n

.lr.ph86:                                         ; preds = %._crit_edge82, %bb.m
  %.sroa.054.084 = phi ptr [ %i.bl, %bb.m ], [ %i.aa, %._crit_edge82 ] ; 2 uses
  %i.bd = load ptr, ptr %.sroa.054.084, align 8, !tbaa !221 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bf, 16
  %.not46 = icmp eq i32 %i.bg, 0
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !171
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.lr.ph86
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !220
  tail call void @_ZN7CaDiCaL5Proof15finalize_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128) %i.bk, ptr noundef nonnull %i.bd)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.054.084, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.bl, %i.ac
  br i1 %.not75, label %._crit_edge87, label %.lr.ph86

bb.n:                                             ; preds = %._crit_edge87
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN7CaDiCaL5Proof15finalize_clauseEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %.pre88, i64 noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %2, align 8, !tbaa !187   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !220
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %2, align 8, !tbaa !187   ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIiSaIiEED2Ev.exit53, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bn

bb.s:                                             ; preds = %._crit_edge87, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.b
  %i.bp = phi ptr [ %.pre88, %._crit_edge87 ], [ %.pre, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.b, %bb.b ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !355
  call void @_ZN7CaDiCaL5Proof13report_statusEim(ptr noundef nonnull align 8 dereferenceable(128) %i.bp, i32 noundef %1, i64 noundef %i.br)
  switch i32 %1, label %bb.w [
    i32 10, label %bb.t
    i32 20, label %bb.u
    i32 0, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !166
  call void @_ZN7CaDiCaL8External12conclude_satEv(ptr noundef nonnull align 8 dereferenceable(568) %i.bt)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  call void @_ZN7CaDiCaL8Internal14conclude_unsatEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !166
  call void @_ZN7CaDiCaL8External16conclude_unknownEv(ptr noundef nonnull align 8 dereferenceable(568) %i.bv)
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v, %bb.a, %bb.t
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN7CaDiCaL8Internal13reset_solvingEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(5704) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.b = load volatile i8, ptr %i.a, align 8, !tbaa !167, !range !238, !noundef !239
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store volatile i8 0, ptr %i.a, align 8, !tbaa !167
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal14report_solvingEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %switch.selectcmp = icmp eq i32 %1, 20
  %switch.select = select i1 %switch.selectcmp, i8 48, i8 63
  %switch.selectcmp2 = icmp eq i32 %1, 10
  %switch.select3 = select i1 %switch.selectcmp2, i8 49, i8 %switch.select
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext %switch.select3, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal22get_entrailed_literalsERSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !187  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !244
  %.pre5 = load ptr, ptr %i.f, align 8, !tbaa !256
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  ret void
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal9lookaheadEv:bb.a

.split:                                           ; preds = %_ZN7CaDiCaL8Internal14already_solvedEv.exit, %bb.j, %bb.e, %bb.k
  %.0517 = phi i32 [ %i.w, %bb.k ], [ 20, %_ZN7CaDiCaL8Internal14already_solvedEv.exit ], [ 20, %bb.e ], [ 10, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.y = load volatile i8, ptr %i.x, align 8, !tbaa !167, !range !238, !noundef !239
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.l, label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit

bb.l:                                             ; preds = %.split
  store volatile i8 0, ptr %i.x, align 8, !tbaa !167
  br label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit

_ZN7CaDiCaL8Internal13reset_solvingEv.exit:       ; preds = %.split, %bb.l
  %switch.selectcmp.i = icmp eq i32 %.0517, 20
  %switch.select.i = select i1 %switch.selectcmp.i, i8 48, i8 63
  %switch.selectcmp2.i = icmp eq i32 %.0517, 10
  %switch.select3.i = select i1 %switch.selectcmp2.i, i8 49, i8 %switch.select.i
  br label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12

.split8:                                          ; preds = %bb.k
  %i.aa = tail call noundef i32 @_ZN7CaDiCaL8Internal17lookahead_probingEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -2147483648
  %spec.store.select9 = select i1 %i.ab, i32 0, i32 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.ad = load volatile i8, ptr %i.ac, align 8, !tbaa !167, !range !238, !noundef !239
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.m, label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12

bb.m:                                             ; preds = %.split8
  store volatile i8 0, ptr %i.ac, align 8, !tbaa !167
  br label %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12

_ZN7CaDiCaL8Internal13reset_solvingEv.exit12:     ; preds = %bb.m, %.split8, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit
  %switch.select3.i.sink = phi i8 [ %switch.select3.i, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit ], [ 63, %.split8 ], [ 63, %bb.m ]
  %i.af = phi i32 [ 0, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit ], [ %spec.store.select9, %.split8 ], [ %spec.store.select9, %bb.m ]
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext %switch.select3.i.sink, i32 noundef 0)
  store i8 0, ptr %i.a, align 1, !tbaa !391
  %i.ag = load i8, ptr %i.b, align 2, !tbaa !381, !range !238, !noundef !239
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.ai, align 2, !tbaa !382
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN7CaDiCaL8Internal13reset_solvingEv.exit12
  ret i32 %i.af
}

declare noundef i32 @_ZN7CaDiCaL8Internal17lookahead_probingEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof22finalize_external_unitEmi(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

declare void @_ZN7CaDiCaL5Proof13finalize_unitEmi(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof15finalize_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof15finalize_clauseEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof13report_statusEim(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External12conclude_satEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal14conclude_unsatEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External16conclude_unknownEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal16print_statisticsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3904
  tail call void @_ZN7CaDiCaL5Stats5printEPNS_8InternalE(ptr noundef nonnull align 8 dereferenceable(1648) %i.a, ptr noundef nonnull %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229  ; 2 uses
  %.not7 = icmp eq ptr %i.c, %i.e
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.j, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.08, align 8, !tbaa !233 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN7CaDiCaL5Stats5printEPNS_8InternalE(ptr noundef nonnull align 8 dereferenceable(1648), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(5704) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %.09, align 4, !tbaa !171
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.09, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL8Internal4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5688 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !352, !nonnull !239, !align !353
  %i.k = load i32, ptr %i.j, align 4, !tbaa !171  ; 5 uses
  %.not5459 = icmp eq i32 %i.k, 0
  br i1 %.not5459, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %xtraiter = and i32 %i.k, 1
  %i.p = icmp eq i32 %i.k, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.k, -2
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.061.epil.init = phi i64 [ %i.h, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.051.060.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod94 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.051.060.epil.init, i1 true)
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !154
  %.not.i.epil = icmp eq i8 %i.t, 0
  br i1 %.not.i.epil, label %_ZN7CaDiCaL8Internal5fixedEi.exit.epil, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r
  %i.v = load i32, ptr %i.u, align 8, !tbaa !392
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !219  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !219 ; 2 uses
  %.not5562 = icmp eq ptr %i.y, %i.aa
  br i1 %.not5562, label %._crit_edge67, label %.lr.ph66

bb.c:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit.1, %.lr.ph.new
  %.061 = phi i64 [ %i.h, %.lr.ph.new ], [ %spec.select.1, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ]
  %.sroa.051.060 = phi i32 [ 1, %.lr.ph.new ], [ %i.ao, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ]
  %1 = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.051.060, i1 true)
  %i.ab = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !154
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ab
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !392
  %.not9.i = icmp eq i32 %i.af, 0
  %i.ag = zext i1 %.not9.i to i64
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.c ], [ %i.ag, %bb.d ]
  %spec.select = add nsw i64 %.0.i, %.061
  %i.ah = add nuw i32 %.sroa.051.060, 1
  %2 = tail call noundef i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.ai = zext nneg i32 %2 to i64                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !154
  %.not.i.1 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.1, label %_ZN7CaDiCaL8Internal5fixedEi.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ai
  %i.am = load i32, ptr %i.al, align 8, !tbaa !392
  %.not9.i.1 = icmp eq i32 %i.am, 0
  %i.an = zext i1 %.not9.i.1 to i64
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit.1

_ZN7CaDiCaL8Internal5fixedEi.exit.1:              ; preds = %bb.e, %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.0.i.1 = phi i64 [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit ], [ %i.an, %bb.e ]
  %spec.select.1 = add nsw i64 %.0.i.1, %spec.select ; 3 uses
  %i.ao = add nuw i32 %.sroa.051.060, 2           ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c

._crit_edge67:                                    ; preds = %.lr.ph66, %._crit_edge
  %.2.lcssa = phi i64 [ %.0.lcssa, %._crit_edge ], [ %spec.select27, %.lr.ph66 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !158
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.aq, i64 noundef %.2.lcssa) ; 0 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !352, !nonnull !239, !align !353
  %i.at = load i32, ptr %i.as, align 4, !tbaa !171 ; 2 uses
  %.not5669 = icmp eq i32 %i.at, 0
  br i1 %.not5669, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge67
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %bb.f

.lr.ph66:                                         ; preds = %._crit_edge, %.lr.ph66
  %.264 = phi i64 [ %spec.select27, %.lr.ph66 ], [ %.0.lcssa, %._crit_edge ]
  %.sroa.047.063 = phi ptr [ %i.bb, %.lr.ph66 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.047.063, align 8, !tbaa !221
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, 16
  %.not25 = icmp eq i32 %i.az, 0
  %i.ba = zext i1 %.not25 to i64
  %spec.select27 = add nsw i64 %.264, %i.ba       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.047.063, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.bb, %i.aa
  br i1 %.not55, label %._crit_edge67, label %.lr.ph66

._crit_edge73:                                    ; preds = %bb.i, %._crit_edge67
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !219 ; 2 uses
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !219 ; 2 uses
  %.not5774 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not5774, label %._crit_edge78, label %.lr.ph77

bb.f:                                             ; preds = %.lr.ph72, %bb.i
  %.sroa.043.070 = phi i32 [ 1, %.lr.ph72 ], [ %i.bt, %bb.i ] ; 6 uses
  %i.be = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.043.070, i1 true)
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !232
  %i.bg = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !154 ; 2 uses
  %.not.i28 = icmp eq i8 %i.bi, 0
  br i1 %.not.i28, label %_ZN7CaDiCaL8Internal5fixedEi.exit33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = sext i8 %i.bi to i32
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !190
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bg
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !392
  %.not9.i29 = icmp eq i32 %i.bm, 0
  %spec.select.i30 = select i1 %.not9.i29, i32 %i.bj, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit33

_ZN7CaDiCaL8Internal5fixedEi.exit33:              ; preds = %bb.f, %bb.g
  %.0.i31 = phi i32 [ 0, %bb.f ], [ %spec.select.i30, %bb.g ] ; 2 uses
  %i.bn = icmp slt i32 %.sroa.043.070, 0
  %i.bo = sub nsw i32 0, %.0.i31
  %spec.select10.i32 = select i1 %i.bn, i32 %i.bo, i32 %.0.i31 ; 2 uses
  %.not24 = icmp eq i32 %spec.select10.i32, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit33
  %i.bp = icmp slt i32 %spec.select10.i32, 0
  %i.bq = sub nsw i32 0, %.sroa.043.070
  %i.br = select i1 %i.bp, i32 %i.bq, i32 %.sroa.043.070
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.br) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal5fixedEi.exit33
  %i.bt = add i32 %.sroa.043.070, 1
  %.not56 = icmp eq i32 %.sroa.043.070, %i.at
  br i1 %.not56, label %._crit_edge73, label %bb.f

._crit_edge78:                                    ; preds = %bb.k, %._crit_edge73
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !168 ; 2 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %.not5879 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not5879, label %._crit_edge83, label %.lr.ph82

.lr.ph77:                                         ; preds = %._crit_edge73, %bb.k
  %.sroa.039.075 = phi ptr [ %i.ci, %bb.k ], [ %i.bc, %._crit_edge73 ] ; 2 uses
  %i.bw = load ptr, ptr %.sroa.039.075, align 8, !tbaa !221 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = and i32 %i.by, 16
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph77
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !171 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %.idx.i = shl nsw i64 %i.cd, 2
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.cc, 0
  br i1 %.not8.i, label %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.09.i = phi ptr [ %i.ch, %.lr.ph.i ], [ %i.ca, %bb.j ] ; 2 uses
  %i.cf = load i32, ptr %.09.i, align 4, !tbaa !171
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.cf) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i34 = icmp eq ptr %i.ch, %i.ce
  br i1 %.not.i34, label %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, label %.lr.ph.i

_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit:      ; preds = %.lr.ph.i, %bb.j
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, %.lr.ph77
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.039.075, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.ci, %i.bd
  br i1 %.not57, label %._crit_edge78, label %.lr.ph77

._crit_edge83:                                    ; preds = %.lr.ph82, %._crit_edge78
  %i.cj = load ptr, ptr @stdout, align 8, !tbaa !394
  %i.ck = tail call i32 @fflush(ptr noundef %i.cj) ; 0 uses
  ret void

.lr.ph82:                                         ; preds = %._crit_edge78, %.lr.ph82
  %.sroa.035.080 = phi ptr [ %i.cn, %.lr.ph82 ], [ %i.bu, %._crit_edge78 ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.035.080, align 4, !tbaa !171
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cl) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.035.080, i64 4 ; 2 uses
  %.not58 = icmp eq ptr %i.cn, %i.bv
  br i1 %.not58, label %._crit_edge83, label %.lr.ph82
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal19traverse_constraintERNS_14ClauseIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 3 uses
  %i.e = icmp ne ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.g = load i8, ptr %i.f, align 8, !range !238
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !284, !range !238, !noundef !239
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
  %i.q = load ptr, ptr %1, align 8, !tbaa !227
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.q unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.e:                                             ; preds = %.lr.ph, %bb.n
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.bg, %bb.n ] ; 4 uses
  %i.w = phi ptr [ null, %.lr.ph ], [ %i.bh, %bb.n ] ; 4 uses
  %.sroa.033.044 = phi ptr [ %i.b, %.lr.ph ], [ %i.bj, %bb.n ] ; 2 uses
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.bi, %bb.n ] ; 6 uses
  %i.y = load i32, ptr %.sroa.033.044, align 4, !tbaa !171 ; 2 uses
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.y, i1 true)
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.ab = zext nneg i32 %i.z to i64               ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !154 ; 2 uses
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sext i8 %i.ad to i32
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !190
end_hunk_1
