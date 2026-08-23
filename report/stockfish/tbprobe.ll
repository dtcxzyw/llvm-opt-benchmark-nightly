Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish12_GLOBAL__N_16TBFile3mapEPPvPmNS0_6TBTypeE:bb.a

bb.d:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit
  store ptr null, ptr %1, align 8, !tbaa !76
  br label %bb.o

bb.e:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.p = call i32 @fstat(i32 noundef %i.n, ptr noundef nonnull %4) #26 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !482  ; 4 uses
  %i.s = and i64 %i.r, -9223372036854775745
  %.not = icmp eq i64 %i.s, 16
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.25)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #26, !inline_history !222 ; 0 uses
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 %i.r, ptr %2, align 8, !tbaa !17
  %i.w = tail call ptr @mmap(ptr noundef null, i64 noundef %i.r, i32 noundef 1, i32 noundef 1, i32 noundef %i.n, i64 noundef 0) #26 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !76
  %i.x = tail call i32 @madvise(ptr noundef %i.w, i64 noundef %i.r, i32 noundef 1) #26 ; 0 uses
  %i.y = tail call i32 @close(i32 noundef %i.n) #26 ; 0 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !76     ; 3 uses
  %i.aa = icmp eq ptr %i.z, inttoptr (i64 -1 to ptr)
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.26)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #26, !inline_history !222 ; 0 uses
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i32 %3, 0
  %.sroa.sel.sroa.sel = select i1 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @__const._ZN9Stockfish12_GLOBAL__N_16TBFile3mapEPPvPmNS0_6TBTypeE.Magics, i64 4), ptr @__const._ZN9Stockfish12_GLOBAL__N_16TBFile3mapEPPvPmNS0_6TBTypeE.Magics
  %i.af = load i32, ptr %i.z, align 1
  %i.ag = load i32, ptr %.sroa.sel.sroa.sel, align 1
  %i.ah = icmp ne i32 %i.af, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %.not20 = icmp eq i32 %i.ai, 0
  br i1 %.not20, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.27, i64 noundef 24) #26 ; 0 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !175
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.am = load i64, ptr %i.al, align 8, !tbaa !90
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ak, i64 noundef %i.am) #26 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !134 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load i8, ptr %i.au, align 8, !tbaa !150
  %.not.i1.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 67
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !156
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.at) #26
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !132
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef signext i8 %i.ba(ptr noundef nonnull align 8 dereferenceable(570) %i.at, i8 noundef signext 10) #26, !inline_history !485
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.ax, %bb.l ], [ %i.bb, %bb.m ]
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext %.0.i.i.i) #26
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #26 ; 0 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !76
  %i.bf = load i64, ptr %2, align 8, !tbaa !17
  %i.bg = tail call i32 @munmap(ptr noundef %i.be, i64 noundef %i.bf) #26 ; 0 uses
  store ptr null, ptr %1, align 8, !tbaa !76
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.n, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ null, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.bh, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull ptr @_ZN9Stockfish12_GLOBAL__N_19set_sizesEPNS0_9PairsDataEPh(ptr noundef nonnull initializes((0, 1)) %0, ptr noundef nonnull %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"class.std::vector.112", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !156     ; 2 uses
  store i8 %i.b, ptr %0, align 8, !tbaa !299
  %.not = icmp sgt i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.c, align 8, !tbaa !311
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !313
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.e, align 8, !tbaa !309
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !486
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.a, align 1, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.h, ptr %i.i, align 2, !tbaa !487
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 228
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 216 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !89
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !89
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %i.x = load i32, ptr %scevgep.i.i.i, align 8, !tbaa !89
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i
  %i.z = getelementptr i8, ptr %0, i64 220        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !89
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZSt4findIPiiET_S1_S1_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %0, i64 224       ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !89
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %i.ae, ptr %i.ac, ptr %i.l
  br label %_ZSt4findIPiiET_S1_S1_RKT0_.exit

_ZSt4findIPiiET_S1_S1_RKT0_.exit:                 ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.h, %._crit_edge.loopexit.i.i.i, %bb.g
  %.028.i.i.i = phi ptr [ %i.z, %bb.g ], [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %spec.select, %bb.h ], [ %i.r, %bb.e ], [ %i.o, %bb.d ], [ %i.u, %bb.f ], [ %i.k, %bb.c ]
  %i.af = ptrtoint ptr %.028.i.i.i to i64
  %i.ag = ptrtoint ptr %i.k to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.am = load i8, ptr %i.a, align 1, !tbaa !156
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !314
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !156
  %i.as = zext nneg i8 %i.ar to i64               ; 2 uses
  %i.at = shl nuw i64 1, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !486
  %i.av = add i64 %i.ak, -1
  %i.aw = add i64 %i.av, %i.at
  %i.ax = lshr i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !309
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i8, ptr %i.aq, align 1, !tbaa !156
  %.val81 = load i32, ptr %i.az, align 1          ; 5 uses
  %.sroa.6.0.extract.shift.i = lshr i32 %.val81, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i32 %.val81, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i = lshr i32 %.val81, 24 ; 2 uses
  %i.ba = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !488, !range !206, !noundef !207
  %.not3.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not3.not.i, label %bb.i, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit

bb.i:                                             ; preds = %_ZSt4findIPiiET_S1_S1_RKT0_.exit
  %i.bb = and i32 %.val81, 255
  br label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit: ; preds = %_ZSt4findIPiiET_S1_S1_RKT0_.exit, %bb.i
  %.sroa.10.0.i = phi i32 [ %i.bb, %bb.i ], [ %.sroa.10.0.extract.shift.i, %_ZSt4findIPiiET_S1_S1_RKT0_.exit ]
  %.sroa.8.0.i = phi i32 [ %.sroa.6.0.extract.shift.i, %bb.i ], [ %.sroa.8.0.extract.shift.i, %_ZSt4findIPiiET_S1_S1_RKT0_.exit ]
  %.sroa.6.0.in.i = phi i32 [ %.sroa.8.0.extract.shift.i, %bb.i ], [ %.sroa.6.0.extract.shift.i, %_ZSt4findIPiiET_S1_S1_RKT0_.exit ]
  %.sroa.0.0.in.i = phi i32 [ %.sroa.10.0.extract.shift.i, %bb.i ], [ %.val81, %_ZSt4findIPiiET_S1_S1_RKT0_.exit ]
  %.sroa.10.0.insert.shift.i = shl nuw i32 %.sroa.10.0.i, 24
  %.sroa.8.0.insert.ext.i = shl i32 %.sroa.8.0.i, 16
  %.sroa.8.0.insert.shift.i = and i32 %.sroa.8.0.insert.ext.i, 16711680
  %.sroa.8.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.shift.i, %.sroa.10.0.insert.shift.i
  %.sroa.6.0.insert.ext.i = shl nuw i32 %.sroa.6.0.in.i, 8
  %.sroa.6.0.insert.shift.i = and i32 %.sroa.6.0.insert.ext.i, 65280
  %.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %.sroa.0.0.in.i, 255
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.bc, align 4, !tbaa !313
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = zext i8 %.val to i32
  %i.bf = add i32 %.sroa.0.0.insert.insert.i, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !311
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !156 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !489
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !156 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i8 %i.bl, ptr %i.bm, align 2, !tbaa !487
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !490
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bp = zext i8 %i.bi to i64
  %i.bq = zext i8 %i.bl to i64
  %i.br = sub nsw i64 %i.bp, %i.bq
  %i.bs = add nsw i64 %i.br, 1                    ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !491 ; 4 uses
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !281 ; 5 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64               ; 4 uses
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3                 ; 3 uses
  %i.ca = icmp ugt i64 %i.bs, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit
  %i.cb = sub nuw nsw i64 %i.bs, %i.bz
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.cb)
  %.pre = load ptr, ptr %i.bt, align 8, !tbaa !491
  %.pre135.a = load ptr, ptr %i.bo, align 8, !tbaa !281 ; 2 uses
  %.pre140 = ptrtoint ptr %.pre135.a to i64
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.k:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit
  %i.cc = icmp ult i64 %i.bs, %i.bz
  br i1 %i.cc, label %bb.l, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bs ; 3 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.cd
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.cd, ptr %i.bt, align 8, !tbaa !491
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %.pre140, %bb.j ], [ %i.bx, %bb.k ], [ %i.bx, %bb.l ], [ %i.bx, %bb.m ]
  %i.ce = phi ptr [ %.pre135.a, %bb.j ], [ %i.bv, %bb.k ], [ %i.bv, %bb.l ], [ %i.bv, %bb.m ] ; 9 uses
  %i.cf = phi ptr [ %.pre, %bb.j ], [ %i.bu, %bb.k ], [ %i.bu, %bb.l ], [ %i.cd, %bb.m ]
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %.pre-phi                ; 3 uses
  %i.ci = lshr exact i64 %i.ch, 3                 ; 6 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.cl = add nuw nsw i64 %i.ci, 4294967294
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !490 ; 5 uses
  %i.cn = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !488, !range !206, !noundef !207
  %.not3.not.i86 = icmp eq i8 %i.cn, 0
  %i.co = and i64 %i.cl, 4294967295               ; 4 uses
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp
  %scevgep = getelementptr i8, ptr %i.cq, i64 8
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.cr = insertelement <2 x i1> poison, i1 %.not3.not.i86, i64 0
  %i.cs = shufflevector <2 x i1> %i.cr, <2 x i1> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.ct = add nuw nsw i64 %i.ci, 3
  %xtraiter = and i64 %i.ct, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %store_forwarded.prol = phi i64 [ %i.di, %.prol.preheader ], [ %load_initial, %.lr.ph ]
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.co, %.lr.ph ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.prol
  %i.cv = load <2 x i16>, ptr %i.cu, align 1      ; 2 uses
  %i.cw = lshr <2 x i16> %i.cv, splat (i16 8)     ; 2 uses
  %i.cx = and <2 x i16> %i.cv, splat (i16 255)    ; 2 uses
  %i.cy = select <2 x i1> %i.cs, <2 x i16> %i.cx, <2 x i16> %i.cw
  %i.cz = shl nuw <2 x i16> %i.cy, splat (i16 8)
  %i.da = select <2 x i1> %i.cs, <2 x i16> %i.cw, <2 x i16> %i.cx
  %i.db = or disjoint <2 x i16> %i.cz, %i.da      ; 2 uses
  %i.dc = extractelement <2 x i16> %i.db, i64 0
  %i.dd = zext i16 %i.dc to i64
  %i.de = add i64 %store_forwarded.prol, %i.dd
  %i.df = extractelement <2 x i16> %i.db, i64 1
  %i.dg = zext i16 %i.df to i64
  %i.dh = sub i64 %i.de, %i.dg
  %i.di = lshr i64 %i.dh, 1                       ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.prol
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !17
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !492

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph ], [ %i.di, %.prol.preheader ]
  %indvars.iv.unr = phi i64 [ %i.co, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.dk = icmp samesign ult i64 %i.co, 3
  br i1 %i.dk, label %iter.check, label %.lr.ph.new

.preheader:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.dl = icmp eq i32 %i.cj, 1
  br i1 %i.dl, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %.preheader
  %i.dm = load i8, ptr %i.bm, align 2, !tbaa !487
  %i.dn = zext i8 %i.dm to i64                    ; 3 uses
  %wide.trip.count = and i64 %i.ci, 2147483647    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check166 = icmp samesign ult i64 %wide.trip.count, 32
  br i1 %min.iters.check166, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ci, 2147483616              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add nuw <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op185 = add nuw <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op187 = add nuw <8 x i64> splat (i64 24), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.do = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %.reass184.a = add nuw <8 x i64> %vec.ind, %invariant.op
  %.reass186 = add nuw <8 x i64> %vec.ind, %invariant.op185
  %.reass188 = add nuw <8 x i64> %vec.ind, %invariant.op187
  %i.dp = sub nsw <8 x i64> splat (i64 64), %i.do
  %i.dq = sub nsw <8 x i64> splat (i64 64), %.reass184.a
  %i.dr = sub nsw <8 x i64> splat (i64 64), %.reass186
  %i.ds = sub nsw <8 x i64> splat (i64 64), %.reass188
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 5 uses
end_hunk_0
