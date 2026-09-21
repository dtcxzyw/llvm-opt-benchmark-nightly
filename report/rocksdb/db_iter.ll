Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_iter?download=true
inline.NumInlined: 2866
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7rocksdb6DBIter23SetSavedKeyToSeekTargetERKNS_5SliceE:bb.a
bb.j:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit
  store i64 0, ptr %i.e, align 8, !tbaa !196
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !319 ; 2 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !305 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !183 ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.ay, null            ; 2 uses
  br i1 %.not.i.i4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !183
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = phi i64 [ %i.bc, %bb.k ], [ 0, %bb.j ]  ; 3 uses
  %i.be = add i64 %i.ba, 8
  %i.bf = add i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !197
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i5

bb.m:                                             ; preds = %bb.l
  call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %i.d, i64 noundef %i.bf)
  br label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i5

_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i5: ; preds = %bb.m, %bb.l
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !194
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bj, i64 %i.ba, i1 false)
  br i1 %.not.i.i4, label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit6, label %bb.n

bb.n:                                             ; preds = %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i5
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !194
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ba
  %i.bm = load ptr, ptr %i.ay, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bm, i64 %i.bd, i1 false)
  br label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit6

_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit6: ; preds = %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i5, %bb.n
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !194
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ba
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bd
  store i64 %i.ac, ptr %i.bp, align 1
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !194
  store ptr %i.bq, ptr %i.ae, align 8, !tbaa !195
  store i64 %i.bf, ptr %i.e, align 8, !tbaa !196
  store i8 0, ptr %i.af, align 1, !tbaa !198
  br label %bb.o

.critedge:                                        ; preds = %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit6, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb6DBIter30SetSavedKeyToSeekForPrevTargetERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(2304) initializes((512, 520), (1871, 1872)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1871
  store i8 0, ptr %i.a, align 1, !tbaa !287
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 9 uses
  store i64 0, ptr %i.c, align 8, !tbaa !196
  %i.d = load i8, ptr @_ZN7rocksdb24kValueTypeForSeekForPrevE, align 1, !tbaa !293
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !305  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !183  ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !183
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.l = add i64 %i.h, 8
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !197
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 noundef %i.m)
  br label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i

_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i: ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.r = load ptr, ptr %1, align 8, !tbaa !182
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.h, i1 false)
  br i1 %.not.i.i, label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.h
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !182
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.k, i1 false)
  br label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit

_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit: ; preds = %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i, %bb.e
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.k
  %i.y = zext i8 %i.d to i64                      ; 3 uses
  store i64 %i.y, ptr %i.x, align 1
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 5 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !195
  store i64 %i.m, ptr %i.c, align 8, !tbaa !196
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 567 ; 3 uses
  store i8 0, ptr %i.ab, align 1, !tbaa !198
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !219 ; 9 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !203
  %i.af = icmp ugt i64 %i.ad, 15
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp slt i64 %i.ad, 0
  br i1 %i.ag, label %.noexc.i, label %bb.h

.noexc.i:                                         ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #31
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i64 %i.ad, 1                    ; 2 uses
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %.noexc5.i, label %.thread7.i.i, !prof !257

.noexc5.i:                                        ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

.thread7.i.i:                                     ; preds = %bb.h
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #30 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !56
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !57
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %cond33 = icmp eq i64 %i.ad, 1
  br i1 %cond33, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ae, align 8, !tbaa !57
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %.thread7.i.i
  %i.ak = phi ptr [ %i.aj, %.thread7.i.i ], [ %i.ae, %bb.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.ad, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = phi ptr [ %i.ae, %bb.j ], [ %i.ak, %bb.k ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.am, align 8, !tbaa !204
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 0, ptr %i.an, align 1, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !291 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.as = load i64, ptr %i.c, align 8, !tbaa !196
  %i.at = add i64 %i.as, -8
  br i1 %i.aq, label %.cont.thread, label %.cont.else

.cont.thread:                                     ; preds = %bb.l
  %i.au = load i64, ptr %i.am, align 8, !tbaa !204
  br label %.cont.cont

.cont.else:                                       ; preds = %bb.l
  %.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.else.val = load i64, ptr %.sroa.gep27, align 8, !tbaa !183
  br label %.cont.cont

.cont.cont:                                       ; preds = %.cont.thread, %.cont.else
  %i.av = phi i64 [ %i.au, %.cont.thread ], [ %.else.val, %.cont.else ] ; 2 uses
  %.in = phi ptr [ %2, %.cont.thread ], [ %i.ap, %.cont.else ]
  %i.aw = load ptr, ptr %.in, align 8, !tbaa !186
  %.pn = sub i64 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.aw, i64 %i.av, i1 false)
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !195
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %5 = icmp eq ptr %i.ay, %i.az
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %7 = load ptr, ptr %6, align 8
  %.sink.i = select i1 %5, ptr %i.az, ptr %7
  %8 = load i64, ptr %i.c, align 8, !tbaa !196
  %9 = getelementptr i8, ptr %.sink.i, i64 %8
  %10 = getelementptr i8, ptr %9, i64 -8
  store i64 %i.y, ptr %10, align 1
  %11 = load ptr, ptr %2, align 8, !tbaa !56      ; 2 uses
  %i.ba = icmp eq ptr %11, %i.ae
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.cont.cont
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !57
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %i.bc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.cont.cont, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !301 ; 2 uses
  %.not5 = icmp eq ptr %i.be, null
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  br i1 %.not5, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load i8, ptr %i.ab, align 1, !tbaa !198, !range !228, !noundef !229
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bj = add i64 %i.bi, -8
  %.sroa.3.0.i = select i1 %i.bh, i64 %i.bi, i64 %i.bj
  %.sroa.0.0.i = load ptr, ptr %i.aa, align 8, !tbaa !195
  store ptr %.sroa.0.0.i, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.3.0.i, ptr %i.bk, align 8
  %.not.i.i10 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i10, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.o, %bb.n
  %i.bl = call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !43
  %i.bn = icmp ugt i8 %i.bm, 1
  br i1 %i.bn, label %bb.p, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit

bb.p:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  %.not.i4.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i4.i, label %_ZTWN7rocksdb12perf_contextE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i

_ZTWN7rocksdb12perf_contextE.exit.i:              ; preds = %bb.q, %bb.p
  %i.bo = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !46
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !46
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i, %_ZTWN7rocksdb12perf_contextE.exit.i
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 232
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i1 noundef zeroext false), !inline_history !10
  %i.bw = icmp sgt i32 %i.bv, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.bw, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit
  store i64 0, ptr %i.c, align 8, !tbaa !196
  %i.bx = load ptr, ptr %i.bd, align 8, !tbaa !301 ; 2 uses
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !305 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !183 ; 4 uses
  %.not.i.i11 = icmp eq ptr %i.by, null           ; 2 uses
  br i1 %.not.i.i11, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !183
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cd = phi i64 [ %i.cc, %bb.s ], [ 0, %bb.r ]  ; 3 uses
  %i.ce = add i64 %i.ca, 8
  %i.cf = add i64 %i.ce, %i.cd                    ; 3 uses
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !197
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.u, label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i12

bb.u:                                             ; preds = %bb.t
  call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 noundef %i.cf)
  br label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i12

_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i12: ; preds = %bb.u, %bb.t
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cj, i64 %i.ca, i1 false)
  br i1 %.not.i.i11, label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit13, label %bb.v

bb.v:                                             ; preds = %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i12
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ca
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cm, i64 %i.cd, i1 false)
  br label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit13

_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit13: ; preds = %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i.i12, %bb.v
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ca
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cd
  %i.cq = or disjoint i64 %i.y, -256              ; 2 uses
  store i64 %i.cq, ptr %i.cp, align 1
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !194
  store ptr %i.cr, ptr %i.aa, align 8, !tbaa !195
  store i64 %i.cf, ptr %i.c, align 8, !tbaa !196
  store i8 0, ptr %i.ab, align 1, !tbaa !198
  %i.cs = load i64, ptr %i.ac, align 8, !tbaa !219 ; 9 uses
  %.not6 = icmp eq i64 %i.cs, 0
  br i1 %.not6, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ct, ptr %4, align 8, !tbaa !203
  %i.cu = icmp ugt i64 %i.cs, 15
  br i1 %i.cu, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cv = icmp slt i64 %i.cs, 0
  br i1 %i.cv, label %.noexc.i16, label %bb.y

.noexc.i16:                                       ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #31
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.cw = add nuw i64 %i.cs, 1                    ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %.noexc5.i15, label %.thread7.i.i14, !prof !257

.noexc5.i15:                                      ; preds = %bb.y
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

.thread7.i.i14:                                   ; preds = %bb.y
  %i.cy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #30 ; 2 uses
  store ptr %i.cy, ptr %4, align 8, !tbaa !56
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !57
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %cond = icmp eq i64 %i.cs, 1
  br i1 %cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 -1, ptr %i.ct, align 8, !tbaa !57
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %.thread7.i.i14
  %i.cz = phi ptr [ %i.cy, %.thread7.i.i14 ], [ %i.ct, %bb.z ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cz, i8 -1, i64 %i.cs, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.da = phi ptr [ %i.ct, %bb.aa ], [ %i.cz, %bb.ab ]
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.db, align 8, !tbaa !204
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  store i8 0, ptr %i.dc, align 1, !tbaa !57
  %i.dd = load ptr, ptr %4, align 8, !tbaa !56
  %i.de = load i64, ptr %i.db, align 8, !tbaa !204 ; 2 uses
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !196
  %reass.sub = sub i64 %i.dg, %i.de
  %i.dh = getelementptr i8, ptr %i.df, i64 %reass.sub
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dd, i64 %i.de, i1 false)
  %i.dj = load ptr, ptr %i.aa, align 8, !tbaa !195
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %12 = icmp eq ptr %i.dj, %i.dk
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %14 = load ptr, ptr %13, align 8
  %.sink.i21 = select i1 %12, ptr %i.dk, ptr %14
  %15 = load i64, ptr %i.c, align 8, !tbaa !196
  %16 = getelementptr i8, ptr %.sink.i21, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -8
  store i64 %i.cq, ptr %17, align 1
  %18 = load ptr, ptr %4, align 8, !tbaa !56      ; 2 uses
  %i.dl = icmp eq ptr %18, %i.ct
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.ac
  %i.dm = load i64, ptr %i.ct, align 8, !tbaa !57
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %i.dn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ad

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %.critedge, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit
  ret void
}

; Function Attrs: uwtable
define void @_ZNK7rocksdb6DBIter19ValidateScanOptionsERKNS_13MultiScanArgsE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2304) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !322  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !322  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @.str.62, ptr %3, align 8, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 19, ptr %i.f, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr @.str, ptr %4, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !183
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.critedge54

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !183
  %i.j = icmp eq i64 %i.i, -1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !331, !range !228, !noundef !229
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.not = and i1 %i.j, %i.m
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr @.str.63, ptr %5, align 8, !tbaa !182
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 32, ptr %i.n, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr @.str, ptr %6, align 8, !tbaa !182
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !183
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge54

bb.e:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.f, label %.lr.ph.thread

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 96
  %i.t = icmp ugt i64 %i.s, 1
  br i1 %i.t, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr @.str.64, ptr %7, align 8, !tbaa !182
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 23, ptr %i.u, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr @.str, ptr %8, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !183
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge54

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.not.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.x = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %.not.i4.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  %i.y = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !183
  %.not.peel = icmp eq i64 %i.aa, -1
  br i1 %.not.peel, label %.loopexit.thread, label %.critedge.peel

.lr.ph.thread:                                    ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.not.i.i283 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.ac = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i4.i284 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 2 uses
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !183
  %.not.peel285 = icmp eq i64 %i.af, -1
  br i1 %.not.peel285, label %.loopexit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br i1 %.not.i.i283, label %_ZTWN7rocksdb10perf_levelE.exit.i.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.peel

_ZTWN7rocksdb10perf_levelE.exit.i.peel:           ; preds = %bb.i, %bb.h
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !43
  %i.ai = icmp ugt i8 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel

bb.j:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.peel
  br i1 %.not.i4.i284, label %_ZTWN7rocksdb12perf_contextE.exit.i.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.peel

_ZTWN7rocksdb12perf_contextE.exit.i.peel:         ; preds = %bb.k, %bb.j
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !46
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !46
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.peel, %_ZTWN7rocksdb10perf_levelE.exit.i.peel
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i1 noundef zeroext false), !inline_history !10
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %.loopexit234.thread, label %.critedge.peel

.loopexit234.thread:                              ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  br label %.thread.i80

.critedge.peel:                                   ; preds = %.lr.ph, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel
  %i.ar = phi ptr [ %i.ab, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel ], [ %i.w, %.lr.ph ] ; 2 uses
  %.not.i.i286293 = phi i1 [ %.not.i.i283, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel ], [ %.not.i.i, %.lr.ph ] ; 2 uses
  %i.as = phi ptr [ %i.ac, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel ], [ %i.x, %.lr.ph ] ; 2 uses
  %.not.i4.i287291 = phi i1 [ %.not.i4.i284, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel ], [ %.not.i4.i, %.lr.ph ] ; 2 uses
  %i.at = phi ptr [ %i.ad, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.peel ], [ %i.y, %.lr.ph ] ; 4 uses
  %.pre237 = load ptr, ptr %i.a, align 8, !tbaa !332 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !333
  %i.au = ptrtoint ptr %.pre to i64
  %i.av = ptrtoint ptr %.pre237 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 96
  %.not52.peel = icmp ugt i64 %i.ax, 1
  br i1 %.not52.peel, label %.peel.next, label %.critedge55

.peel.next:                                       ; preds = %.critedge.peel, %.critedge
  %i.ay = phi ptr [ %i.pk, %.critedge ], [ %.pre237, %.critedge.peel ]
  %.039205 = phi i64 [ %i.pi, %.critedge ], [ 1, %.critedge.peel ] ; 25 uses
  %i.az = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %.039205 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !183
  %.not = icmp eq i64 %i.bb, -1
  br i1 %.not, label %.loopexit, label %bb.ab

.loopexit.thread:                                 ; preds = %.lr.ph, %.lr.ph.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  br label %.thread.i

.loopexit:                                        ; preds = %.peel.next
end_hunk_0
