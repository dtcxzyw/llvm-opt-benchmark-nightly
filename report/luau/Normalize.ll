Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Normalize?download=true
inline.NumInlined: 5126
inline.NumDeleted: 2027
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4Luau14NormalizedType9isUnknownEv:bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4Luau6isPrimEPKNS_4TypeENS_13PrimitiveType4TypeE(ptr noundef %i.k, i32 noundef 0)
  br i1 %i.l, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168
  %i.o = tail call noundef zeroext i1 @_ZN4Luau8isNumberEPKNS_4TypeE(ptr noundef %i.n)
  br i1 %i.o, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load i8, ptr %i.p, align 8, !tbaa !69, !range !77, !noundef !78
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !157
  %i.y = tail call noundef zeroext i1 @_ZN4Luau8isThreadEPKNS_4TypeE(ptr noundef %i.x)
  br i1 %i.y, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !158
  %i.ab = tail call noundef zeroext i1 @_ZN4Luau8isBufferEPKNS_4TypeE(ptr noundef %i.aa)
  br i1 %i.ab, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !169
  %i.ae = tail call noundef zeroext i1 @_ZN4Luau9isIntegerEPKNS_4TypeE(ptr noundef %i.ad)
  br label %bb.q

bb.k:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !167
  %i.ah = tail call noundef zeroext i1 @_ZN4Luau6isPrimEPKNS_4TypeENS_13PrimitiveType4TypeE(ptr noundef %i.ag, i32 noundef 0)
  br i1 %i.ah, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !168
  %i.ak = tail call noundef zeroext i1 @_ZN4Luau8isNumberEPKNS_4TypeE(ptr noundef %i.aj)
  br i1 %i.ak, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load i8, ptr %i.al, align 8, !tbaa !69, !range !77, !noundef !78
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !157
  %i.au = tail call noundef zeroext i1 @_ZN4Luau8isThreadEPKNS_4TypeE(ptr noundef %i.at)
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !158
  %i.ax = tail call noundef zeroext i1 @_ZN4Luau8isBufferEPKNS_4TypeE(ptr noundef %i.aw)
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.027 = phi i1 [ %i.ae, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ %i.ax, %bb.p ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.036.049 = load ptr, ptr %i.ay, align 8, !tbaa !119 ; 2 uses
  %.not50.not = icmp eq ptr %.sroa.036.049, null
  br i1 %.not50.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread
  %.sroa.036.051 = phi ptr [ %.sroa.036.0, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread ], [ %.sroa.036.049, %bb.q ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.036.051, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.036.051, i64 16
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !111 ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i30, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !163
  %i.bd = icmp eq i32 %i.bc, 11
  br i1 %i.bd, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.r
  %i.be = load ptr, ptr %0, align 8, !tbaa !170
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !171
  %i.bh = icmp eq ptr %i.bb, %i.bg
  br i1 %i.bh, label %bb.s, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread

bb.s:                                             ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit
  %i.bi = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ba)
  br i1 %i.bi, label %._crit_edge, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %.lr.ph, %bb.r, %bb.s, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit
  %.sroa.036.0 = load ptr, ptr %.sroa.036.051, align 8, !tbaa !119 ; 2 uses
  %.not.not = icmp eq ptr %.sroa.036.0, null
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread, %bb.s, %bb.q
  %.not.lcssa = phi i1 [ false, %bb.q ], [ true, %bb.s ], [ false, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.thread ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bk = tail call ptr @_ZNK4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bj) ; 2 uses
  %i.bl = tail call ptr @_ZNK4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bj) ; 2 uses
  %.not4855.not = icmp eq ptr %i.bk, %i.bl
  br i1 %.not4855.not, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %._crit_edge, %.lr.ph59
  %.sroa.032.056 = phi ptr [ %i.bo, %.lr.ph59 ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.bm = load ptr, ptr %.sroa.032.056, align 8, !tbaa !111
  %i.bn = tail call noundef zeroext i1 @_ZN4Luau6isPrimEPKNS_4TypeENS_13PrimitiveType4TypeE(ptr noundef %i.bm, i32 noundef 7) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.056, i64 8 ; 2 uses
  %.not48.not = icmp eq ptr %i.bo, %i.bl
  %or.cond69 = select i1 %i.bn, i1 true, i1 %.not48.not
  br i1 %or.cond69, label %._crit_edge60, label %.lr.ph59

._crit_edge60:                                    ; preds = %.lr.ph59, %._crit_edge
  %.not48.lcssa = phi i1 [ false, %._crit_edge ], [ %i.bn, %.lr.ph59 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !172 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i31, label %_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %._crit_edge60
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !163
  %i.bs = icmp eq i32 %i.br, 17
  %or.cond = and i1 %.027, %i.bs
  %or.cond4 = and i1 %.not.lcssa, %or.cond
  %or.cond6 = and i1 %.not48.lcssa, %or.cond4
  br i1 %or.cond6, label %bb.t, label %_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit

bb.t:                                             ; preds = %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !173, !range !77, !noundef !78
  %i.bv = trunc nuw i8 %i.bu to i1
  br label %_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_11UnknownTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %._crit_edge60, %bb.b, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, %bb.t
  %.028 = phi i1 [ false, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit ], [ %i.bv, %bb.t ], [ true, %bb.b ], [ false, %._crit_edge60 ]
  ret i1 %.028
}

declare noundef zeroext i1 @_ZN4Luau6isPrimEPKNS_4TypeENS_13PrimitiveType4TypeE(ptr noundef, i32 noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZN4Luau8isNumberEPKNS_4TypeE(ptr noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZN4Luau8isThreadEPKNS_4TypeE(ptr noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZN4Luau8isBufferEPKNS_4TypeE(ptr noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZN4Luau9isIntegerEPKNS_4TypeE(ptr noundef) local_unnamed_addr #12

declare ptr @_ZNK4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #12

declare ptr @_ZNK4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType15isExactlyNumberEv(ptr noundef nonnull align 8 dereferenceable(489) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null            ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit

_ZNK4Luau14NormalizedType10hasNumbersEv.exit:     ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 8, !tbaa !163
  %.not60.a = icmp eq i32 %i.e, 17
  br i1 %.not60.a, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit.thread

_ZNK4Luau14NormalizedType10hasNumbersEv.exit.thread: ; preds = %bb.b, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i2, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit

_ZNK4Luau14NormalizedType7hasTopsEv.exit:         ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit.thread
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163
  %.not61.a = icmp eq i32 %i.h, 17
  br i1 %.not61.a, label %bb.c, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4Luau14NormalizedType7hasTopsEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i4, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %1 = load i32, ptr %i.j, align 8, !tbaa !163
  %2 = icmp ne i32 %1, 17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %3 = icmp ne i64 %i.l, 0
  %or.cond = select i1 %2, i1 true, i1 %3
  br i1 %or.cond, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i6, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit

_ZNK4Luau14NormalizedType9hasErrorsEv.exit:       ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 8, !tbaa !163
  %.not64 = icmp eq i32 %i.o, 17
  br i1 %.not64, label %bb.f, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.f:                                             ; preds = %_ZNK4Luau14NormalizedType9hasErrorsEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i8, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit

_ZNK4Luau14NormalizedType7hasNilsEv.exit:         ; preds = %bb.f
  %i.r = load i32, ptr %i.q, align 8, !tbaa !163
  %.not65 = icmp eq i32 %i.r, 17
  br i1 %.not65, label %bb.g, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.g:                                             ; preds = %_ZNK4Luau14NormalizedType7hasNilsEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load i8, ptr %i.s, align 8, !tbaa !69, !range !77, !noundef !78
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp ne i64 %i.w, 0
  %.not1.i = select i1 %i.u, i1 true, i1 %i.x
  br i1 %.not1.i, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157  ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i10, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit

_ZNK4Luau14NormalizedType10hasThreadsEv.exit:     ; preds = %bb.h
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !163
  %.not66 = icmp eq i32 %i.aa, 17
  br i1 %.not66, label %bb.i, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.i:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i12, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit

_ZNK4Luau14NormalizedType10hasBuffersEv.exit:     ; preds = %bb.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !163
  %.not67 = icmp eq i32 %i.ad, 17
  br i1 %.not67, label %bb.j, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.j:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.af = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ae)
  br i1 %i.af, label %bb.k, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !124, !range !77, !noundef !78
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit:   ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ak = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aj)
  br i1 %i.ak, label %bb.l, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.l:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.am = load i64, ptr %i.al, align 8, !tbaa !174
  %.not68 = icmp eq i64 %i.am, 0
  br i1 %.not68, label %bb.m, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.an = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i14, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !163
  %i.as = icmp eq i32 %i.ar, 17
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.p:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17

_ZNK4Luau14NormalizedType10hasNumbersEv.exit17:   ; preds = %bb.p
  %i.at = load i32, ptr %i.d, align 8, !tbaa !163
  %.not = icmp eq i32 %i.at, 17
  br i1 %.not, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17.thread

_ZNK4Luau14NormalizedType10hasNumbersEv.exit17.thread: ; preds = %bb.p, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i18, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit20

_ZNK4Luau14NormalizedType7hasTopsEv.exit20:       ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17.thread
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !163
  %.not52 = icmp eq i32 %i.aw, 17
  br i1 %.not52, label %bb.q, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.q:                                             ; preds = %_ZNK4Luau14NormalizedType7hasTopsEv.exit20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i21, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %4 = load i32, ptr %i.ay, align 8, !tbaa !163
  %5 = icmp ne i32 %4, 17
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load i64, ptr %i.az, align 8
  %6 = icmp ne i64 %i.ba, 0
  %or.cond56 = select i1 %5, i1 true, i1 %6
  br i1 %or.cond56, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i24, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit26

_ZNK4Luau14NormalizedType9hasErrorsEv.exit26:     ; preds = %bb.s
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !163
  %.not55 = icmp eq i32 %i.bd, 17
  br i1 %.not55, label %bb.t, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.t:                                             ; preds = %_ZNK4Luau14NormalizedType9hasErrorsEv.exit26
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i27, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit29

_ZNK4Luau14NormalizedType7hasNilsEv.exit29:       ; preds = %bb.t
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !163
  %.not56 = icmp eq i32 %i.bg, 17
  br i1 %.not56, label %bb.u, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.u:                                             ; preds = %_ZNK4Luau14NormalizedType7hasNilsEv.exit29
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !69, !range !77, !noundef !78
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = icmp ne i64 %i.bl, 0
  %.not1.i30 = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %.not1.i30, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i31, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33

_ZNK4Luau14NormalizedType10hasThreadsEv.exit33:   ; preds = %bb.v
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !163
  %.not57 = icmp eq i32 %i.bp, 17
  br i1 %.not57, label %bb.w, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.w:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i34, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36

_ZNK4Luau14NormalizedType10hasBuffersEv.exit36:   ; preds = %bb.w
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !163
  %.not58 = icmp eq i32 %i.bs, 17
  br i1 %.not58, label %bb.x, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.x:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bu = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bt)
  br i1 %i.bu, label %bb.y, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !124, !range !77, !noundef !78
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37: ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bz = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.by)
  br i1 %i.bz, label %bb.z, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.z:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !174
  %.not59 = icmp eq i64 %i.cb, 0
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread:  ; preds = %bb.o, %bb.n, %bb.m, %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17.thread, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit.thread, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17, %_ZNK4Luau14NormalizedType7hasTopsEv.exit20, %bb.r, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit26, %_ZNK4Luau14NormalizedType7hasNilsEv.exit29, %bb.u, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36, %bb.x, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37, %bb.z, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit, %_ZNK4Luau14NormalizedType7hasTopsEv.exit, %bb.d, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit, %_ZNK4Luau14NormalizedType7hasNilsEv.exit, %bb.g, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit, %bb.j, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit, %bb.l
  %.0 = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit ], [ false, %bb.j ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit ], [ false, %bb.g ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit ], [ false, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit ], [ false, %bb.y ], [ false, %bb.d ], [ false, %_ZNK4Luau14NormalizedType7hasTopsEv.exit ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37 ], [ false, %bb.x ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36 ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33 ], [ false, %bb.u ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit29 ], [ false, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit26 ], [ false, %bb.v ], [ false, %bb.r ], [ false, %_ZNK4Luau14NormalizedType7hasTopsEv.exit20 ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17 ], [ %.not59, %bb.z ], [ false, %bb.w ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit.thread ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.k ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit17.thread ], [ false, %bb.q ], [ false, %bb.s ], [ true, %bb.m ], [ %i.as, %bb.o ], [ false, %bb.n ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType10hasNumbersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = icmp ne i32 %i.c, 17
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType7hasTopsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = icmp ne i32 %i.c, 17
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType11hasBooleansEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = icmp ne i32 %i.c, 17
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType14hasExternTypesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType9hasErrorsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = icmp ne i32 %i.c, 17
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType7hasNilsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = icmp ne i32 %i.c, 17
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType10hasStringsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i8, ptr %i.a, align 8, !tbaa !69, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ne i64 %i.e, 0
  %.not1 = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %.not1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType10hasThreadsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = icmp ne i32 %i.c, 17
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType10hasBuffersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = icmp ne i32 %i.c, 17
  br label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType9hasTablesEv(ptr noundef nonnull align 8 dereferenceable(489) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType12hasFunctionsEv(ptr noundef nonnull align 8 dereferenceable(489) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load i8, ptr %i.a, align 8, !tbaa !124, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK4Luau22NormalizedFunctionType7isNeverEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.e = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
  %i.f = xor i1 %i.e, true
  br label %_ZNK4Luau22NormalizedFunctionType7isNeverEv.exit

_ZNK4Luau22NormalizedFunctionType7isNeverEv.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType9hasTyvarsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = load i64, ptr %i.a, align 8, !tbaa !174
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType11hasIntegersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %bb.c
end_hunk_0
begin_hunk_1_@_ZNK4Luau14NormalizedType17isSubtypeOfStringEv:bb.a
  br i1 %.not.i.i.i8, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit

_ZNK4Luau14NormalizedType10hasNumbersEv.exit:     ; preds = %bb.g
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !163
  %.not66 = icmp eq i32 %i.aa, 17
  br i1 %.not66, label %bb.h, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.h:                                             ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i10, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit

_ZNK4Luau14NormalizedType10hasThreadsEv.exit:     ; preds = %bb.h
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !163
  %.not67 = icmp eq i32 %i.ad, 17
  br i1 %.not67, label %bb.i, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.i:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i12, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit

_ZNK4Luau14NormalizedType10hasBuffersEv.exit:     ; preds = %bb.i
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !163
  %.not68 = icmp eq i32 %i.ag, 17
  br i1 %.not68, label %bb.j, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.j:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ah)
  br i1 %i.ai, label %bb.k, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !124, !range !77, !noundef !78
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit:   ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.an = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.am)
  br i1 %i.an, label %bb.l, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.l:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !174
  %.not69 = icmp eq i64 %i.ap, 0
  br i1 %.not69, label %bb.m, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i14, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr %i.at, align 8, !tbaa !163
  %i.av = icmp eq i32 %i.au, 17
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.p:                                             ; preds = %bb.a
  br i1 %.not1.i, label %bb.q, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i16, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit18

_ZNK4Luau14NormalizedType7hasTopsEv.exit18:       ; preds = %bb.q
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !163
  %.not = icmp eq i32 %i.ay, 17
  br i1 %.not, label %bb.r, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.r:                                             ; preds = %_ZNK4Luau14NormalizedType7hasTopsEv.exit18
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i19, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType11hasBooleansEv.exit21

_ZNK4Luau14NormalizedType11hasBooleansEv.exit21:  ; preds = %bb.r
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !163
  %i.bc = icmp ne i32 %i.bb, 17
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = icmp ne i64 %i.be, 0
  %or.cond56 = select i1 %i.bc, i1 true, i1 %i.bf
  br i1 %or.cond56, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK4Luau14NormalizedType11hasBooleansEv.exit21
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i22, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit24

_ZNK4Luau14NormalizedType9hasErrorsEv.exit24:     ; preds = %bb.s
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !163
  %.not57 = icmp eq i32 %i.bi, 17
  br i1 %.not57, label %bb.t, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.t:                                             ; preds = %_ZNK4Luau14NormalizedType9hasErrorsEv.exit24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i25, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit27

_ZNK4Luau14NormalizedType7hasNilsEv.exit27:       ; preds = %bb.t
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !163
  %.not58 = icmp eq i32 %i.bl, 17
  br i1 %.not58, label %bb.u, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.u:                                             ; preds = %_ZNK4Luau14NormalizedType7hasNilsEv.exit27
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i28, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit30

_ZNK4Luau14NormalizedType10hasNumbersEv.exit30:   ; preds = %bb.u
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !163
  %.not59 = icmp eq i32 %i.bo, 17
  br i1 %.not59, label %bb.v, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.v:                                             ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit30
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i31, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33

_ZNK4Luau14NormalizedType10hasThreadsEv.exit33:   ; preds = %bb.v
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !163
  %.not60 = icmp eq i32 %i.br, 17
  br i1 %.not60, label %bb.w, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.w:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i34, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36

_ZNK4Luau14NormalizedType10hasBuffersEv.exit36:   ; preds = %bb.w
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !163
  %.not61 = icmp eq i32 %i.bu, 17
  br i1 %.not61, label %bb.x, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.x:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bw = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bv)
  br i1 %i.bw, label %bb.y, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !124, !range !77, !noundef !78
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37: ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cb = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ca)
  br i1 %i.cb, label %bb.z, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.z:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !174
  %.not62 = icmp eq i64 %i.cd, 0
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread:  ; preds = %bb.o, %bb.n, %bb.m, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.p, %_ZNK4Luau14NormalizedType7hasTopsEv.exit18, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit21, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit24, %_ZNK4Luau14NormalizedType7hasNilsEv.exit27, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit30, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36, %bb.x, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37, %bb.z, %bb.b, %_ZNK4Luau14NormalizedType7hasTopsEv.exit, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit, %_ZNK4Luau14NormalizedType7hasNilsEv.exit, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit, %bb.j, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit, %bb.l
  %.0 = phi i1 [ false, %bb.u ], [ false, %bb.l ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit ], [ false, %bb.j ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit ], [ false, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit ], [ false, %bb.y ], [ false, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit ], [ false, %_ZNK4Luau14NormalizedType7hasTopsEv.exit ], [ false, %bb.b ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37 ], [ false, %bb.x ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36 ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33 ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit30 ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit27 ], [ false, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit24 ], [ false, %bb.v ], [ false, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit21 ], [ false, %_ZNK4Luau14NormalizedType7hasTopsEv.exit18 ], [ false, %bb.p ], [ %.not62, %bb.z ], [ false, %bb.w ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.t ], [ true, %bb.m ], [ %i.av, %bb.o ], [ false, %bb.n ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType19isSubtypeOfBooleansEv(ptr noundef nonnull align 8 dereferenceable(489) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null            ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZNK4Luau14NormalizedType11hasBooleansEv.exit.thread, label %_ZNK4Luau14NormalizedType11hasBooleansEv.exit

_ZNK4Luau14NormalizedType11hasBooleansEv.exit:    ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 8, !tbaa !163
  %.not60.a = icmp eq i32 %i.e, 17
  br i1 %.not60.a, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType11hasBooleansEv.exit.thread

_ZNK4Luau14NormalizedType11hasBooleansEv.exit.thread: ; preds = %bb.b, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i2, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4Luau14NormalizedType11hasBooleansEv.exit.thread
  %1 = load i32, ptr %i.g, align 8, !tbaa !163
  %2 = icmp ne i32 %1, 17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %3 = icmp ne i64 %i.i, 0
  %or.cond = select i1 %2, i1 true, i1 %3
  br i1 %or.cond, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172  ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i4, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit

_ZNK4Luau14NormalizedType9hasErrorsEv.exit:       ; preds = %bb.d
  %i.l = load i32, ptr %i.k, align 8, !tbaa !163
  %.not63 = icmp eq i32 %i.l, 17
  br i1 %.not63, label %bb.e, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.e:                                             ; preds = %_ZNK4Luau14NormalizedType9hasErrorsEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i6, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit

_ZNK4Luau14NormalizedType7hasNilsEv.exit:         ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 8, !tbaa !163
  %.not64 = icmp eq i32 %i.o, 17
  br i1 %.not64, label %bb.f, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.f:                                             ; preds = %_ZNK4Luau14NormalizedType7hasNilsEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !168  ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i8, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit

_ZNK4Luau14NormalizedType10hasNumbersEv.exit:     ; preds = %bb.f
  %i.r = load i32, ptr %i.q, align 8, !tbaa !163
  %.not65 = icmp eq i32 %i.r, 17
  br i1 %.not65, label %bb.g, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.g:                                             ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load i8, ptr %i.s, align 8, !tbaa !69, !range !77, !noundef !78
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp ne i64 %i.w, 0
  %.not1.i = select i1 %i.u, i1 true, i1 %i.x
  br i1 %.not1.i, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157  ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i10, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit

_ZNK4Luau14NormalizedType10hasThreadsEv.exit:     ; preds = %bb.h
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !163
  %.not66 = icmp eq i32 %i.aa, 17
  br i1 %.not66, label %bb.i, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.i:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i12, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit

_ZNK4Luau14NormalizedType10hasBuffersEv.exit:     ; preds = %bb.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !163
  %.not67 = icmp eq i32 %i.ad, 17
  br i1 %.not67, label %bb.j, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.j:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.af = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ae)
  br i1 %i.af, label %bb.k, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !124, !range !77, !noundef !78
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit:   ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ak = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aj)
  br i1 %i.ak, label %bb.l, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.l:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.am = load i64, ptr %i.al, align 8, !tbaa !174
  %.not68 = icmp eq i64 %i.am, 0
  br i1 %.not68, label %bb.m, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.an = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i14, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !163
  %i.as = icmp eq i32 %i.ar, 17
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.p:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17.thread, label %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17

_ZNK4Luau14NormalizedType11hasBooleansEv.exit17:  ; preds = %bb.p
  %i.at = load i32, ptr %i.d, align 8, !tbaa !163
  %.not = icmp eq i32 %i.at, 17
  br i1 %.not, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17.thread

_ZNK4Luau14NormalizedType11hasBooleansEv.exit17.thread: ; preds = %bb.p, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i18, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17.thread
  %4 = load i32, ptr %i.av, align 8, !tbaa !163
  %5 = icmp ne i32 %4, 17
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load i64, ptr %i.aw, align 8
  %6 = icmp ne i64 %i.ax, 0
  %or.cond56 = select i1 %5, i1 true, i1 %6
  br i1 %or.cond56, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i21, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit23

_ZNK4Luau14NormalizedType9hasErrorsEv.exit23:     ; preds = %bb.r
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !163
  %.not54 = icmp eq i32 %i.ba, 17
  br i1 %.not54, label %bb.s, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.s:                                             ; preds = %_ZNK4Luau14NormalizedType9hasErrorsEv.exit23
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i24, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit26

_ZNK4Luau14NormalizedType7hasNilsEv.exit26:       ; preds = %bb.s
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !163
  %.not55 = icmp eq i32 %i.bd, 17
  br i1 %.not55, label %bb.t, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.t:                                             ; preds = %_ZNK4Luau14NormalizedType7hasNilsEv.exit26
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i27, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit29

_ZNK4Luau14NormalizedType10hasNumbersEv.exit29:   ; preds = %bb.t
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !163
  %.not56 = icmp eq i32 %i.bg, 17
  br i1 %.not56, label %bb.u, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.u:                                             ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit29
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !69, !range !77, !noundef !78
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = icmp ne i64 %i.bl, 0
  %.not1.i30 = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %.not1.i30, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i31, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33

_ZNK4Luau14NormalizedType10hasThreadsEv.exit33:   ; preds = %bb.v
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !163
  %.not57 = icmp eq i32 %i.bp, 17
  br i1 %.not57, label %bb.w, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.w:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i34, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36

_ZNK4Luau14NormalizedType10hasBuffersEv.exit36:   ; preds = %bb.w
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !163
  %.not58 = icmp eq i32 %i.bs, 17
  br i1 %.not58, label %bb.x, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.x:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bu = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bt)
  br i1 %i.bu, label %bb.y, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !124, !range !77, !noundef !78
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37: ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bz = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.by)
  br i1 %i.bz, label %bb.z, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.z:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !174
  %.not59 = icmp eq i64 %i.cb, 0
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread:  ; preds = %bb.o, %bb.n, %bb.m, %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17.thread, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit.thread, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17, %bb.q, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit23, %_ZNK4Luau14NormalizedType7hasNilsEv.exit26, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit29, %bb.u, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36, %bb.x, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37, %bb.z, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit, %bb.c, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit, %_ZNK4Luau14NormalizedType7hasNilsEv.exit, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit, %bb.g, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit, %bb.j, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit, %bb.l
  %.0 = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit ], [ false, %bb.j ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit ], [ false, %bb.g ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit ], [ false, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit ], [ false, %bb.y ], [ false, %bb.c ], [ false, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit37 ], [ false, %bb.x ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit36 ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit33 ], [ false, %bb.u ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit29 ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit26 ], [ false, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit23 ], [ false, %bb.v ], [ false, %bb.q ], [ false, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17 ], [ %.not59, %bb.z ], [ false, %bb.w ], [ false, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit.thread ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.k ], [ false, %_ZNK4Luau14NormalizedType11hasBooleansEv.exit17.thread ], [ false, %bb.r ], [ false, %bb.s ], [ true, %bb.m ], [ %i.as, %bb.o ], [ false, %bb.n ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType20shouldSuppressErrorsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(489) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit.thread, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit

_ZNK4Luau14NormalizedType9hasErrorsEv.exit:       ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %.not = icmp eq i32 %i.c, 17
  br i1 %.not, label %bb.b, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit.thread

bb.b:                                             ; preds = %_ZNK4Luau14NormalizedType9hasErrorsEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !150  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 8, !tbaa !163
  %i.g = icmp eq i32 %i.f, 12
  br label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit.thread

_ZNK4Luau14NormalizedType9hasErrorsEv.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit
  %i.h = phi i1 [ true, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit ], [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType11hasTopTableEv(ptr noundef nonnull align 8 dereferenceable(489) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZNK4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a) ; 4 uses
  %i.d = tail call ptr @_ZNK4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a) ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.j = and i64 %i.g, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.j ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.thread.i.i.i.i.i", %.lr.ph.preheader.i.i.i.i.i
  %.056.i.i.i.i.i = phi i64 [ %i.am, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.thread.i.i.i.i.i" ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.036.055.i.i.i.i.i = phi ptr [ %i.al, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.thread.i.i.i.i.i" ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.k = load ptr, ptr %.sroa.036.055.i.i.i.i.i, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.thread.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = load i32, ptr %i.k, align 8, !tbaa !163
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.i.i.i.i.i": ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !181
  %i.p = icmp eq i32 %i.o, 7
  br i1 %i.p, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEEZNKS2_14NormalizedType11hasTopTableEvE3$_0EbT_SE_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.i.i.i.i.i", %bb.c, %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.036.055.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111  ; 3 uses
  %.not.i.i.i.i16.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i16.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.thread.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.thread.i.i.i.i.i"
  %i.s = load i32, ptr %i.r, align 8, !tbaa !163
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.i.i.i.i.i": ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !181
  %i.w = icmp eq i32 %i.v, 7
  br i1 %i.w, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEEZNKS2_14NormalizedType11hasTopTableEvE3$_0EbT_SE_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.i.i.i.i.i", %bb.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit.thread.i.i.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.036.055.i.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111  ; 3 uses
  %.not.i.i.i.i19.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i19.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.thread.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.thread.i.i.i.i.i"
  %i.z = load i32, ptr %i.y, align 8, !tbaa !163
  %i.aa = icmp eq i32 %i.z, 4
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.i.i.i.i.i": ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !181
  %i.ad = icmp eq i32 %i.ac, 7
  br i1 %i.ad, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEEZNKS2_14NormalizedType11hasTopTableEvE3$_0EbT_SE_T0_.exit.loopexit.split.loop.exit21", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.i.i.i.i.i", %bb.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit18.thread.i.i.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.036.055.i.i.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i22.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i22.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.thread.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.thread.i.i.i.i.i"
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !163
  %i.ah = icmp eq i32 %i.ag, 4
  br i1 %i.ah, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.i.i.i.i.i": ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !181
  %i.ak = icmp eq i32 %i.aj, 7
  br i1 %i.ak, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEEZNKS2_14NormalizedType11hasTopTableEvE3$_0EbT_SE_T0_.exit.loopexit.split.loop.exit23", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.i.i.i.i.i", %bb.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit21.thread.i.i.i.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.036.055.i.i.i.i.i, i64 32
  %i.am = add nsw i64 %.056.i.i.i.i.i, -1
  %i.an = icmp sgt i64 %.056.i.i.i.i.i, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !491

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit24.thread.i.i.i.i.i"
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre61.i.i.i.i.i = sub i64 %i.e, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.b
  %.pre-phi62.i.i.i.i.i = phi i64 [ %.pre61.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.g, %bb.b ]
  %.sroa.036.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 5 uses
  %i.ao = ashr exact i64 %.pre-phi62.i.i.i.i.i, 3
  switch i64 %i.ao, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEEZNKS2_14NormalizedType11hasTopTableEvE3$_0EbT_SE_T0_.exit" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ap = load ptr, ptr %.sroa.036.0.lcssa.i.i.i.i.i, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i25.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i25.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !163
  %i.ar = icmp eq i32 %i.aq, 4
  br i1 %i.ar, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.i.i.i.i.i": ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !181
  %i.au = icmp eq i32 %i.at, 7
  br i1 %i.au, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEEZNKS2_14NormalizedType11hasTopTableEvE3$_0EbT_SE_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.i.i.i.i.i", %bb.h, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.036.0.lcssa.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.sroa.036.1.i.i.i.i.i = phi ptr [ %i.av, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit27.thread.i.i.i.i.i" ], [ %.sroa.036.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aw = load ptr, ptr %.sroa.036.1.i.i.i.i.i, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i28.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i28.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.thread.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !163
  %i.ay = icmp eq i32 %i.ax, 4
  br i1 %i.ay, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.i.i.i.i.i": ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !181
  %i.bb = icmp eq i32 %i.ba, 7
  br i1 %i.bb, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEEZNKS2_14NormalizedType11hasTopTableEvE3$_0EbT_SE_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.i.i.i.i.i", %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.036.1.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.thread.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.sroa.036.2.i.i.i.i.i = phi ptr [ %i.bc, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit30.thread.i.i.i.i.i" ], [ %.sroa.036.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %.sroa.036.2.i.i.i.i.i, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i31.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i31.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit33.thread.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !163
  %i.bf = icmp eq i32 %i.be, 4
  br i1 %i.bf, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit33.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit33.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4Luau14NormalizedType11hasTopTableEvE3$_0EclINS_17__normal_iteratorIPKPKNS2_4TypeESt6vectorISA_SaISA_EEEEEEbT_.exit33.i.i.i.i.i": ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !181
  %i.bi = icmp eq i32 %i.bh, 7
end_hunk_1
begin_hunk_2_@_ZNK4Luau14NormalizedType7isFalsyEv:bb.a
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i19, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit

_ZNK4Luau14NormalizedType10hasBuffersEv.exit:     ; preds = %bb.k
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !163
  %.not69 = icmp eq i32 %i.al, 17
  br i1 %.not69, label %bb.l, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.l:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.an = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.am)
  br i1 %i.an, label %bb.m, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !124, !range !77, !noundef !78
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit:   ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.as = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ar)
  br i1 %i.as, label %bb.n, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.n:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.au = load i64, ptr %i.at, align 8, !tbaa !174
  %.not70 = icmp eq i64 %i.au, 0
  br i1 %.not70, label %bb.o, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.av = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.p, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i21, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !163
  %i.ba = icmp eq i32 %i.az, 17
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.r:                                             ; preds = %_ZN4Luau3getINS_13SingletonTypeEEEPKT_PKNS_4TypeE.exit.thread
  br i1 %.1, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit24.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i22, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit24.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit24

_ZNK4Luau14NormalizedType7hasNilsEv.exit24:       ; preds = %bb.s
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !163
  %.not55 = icmp eq i32 %i.bd, 17
  br i1 %.not55, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit24.thread

_ZNK4Luau14NormalizedType7hasNilsEv.exit24.thread: ; preds = %bb.s, %_ZNK4Luau14NormalizedType7hasNilsEv.exit24, %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !150 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i25, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit27

_ZNK4Luau14NormalizedType7hasTopsEv.exit27:       ; preds = %_ZNK4Luau14NormalizedType7hasNilsEv.exit24.thread
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !163
  %.not56 = icmp eq i32 %i.bg, 17
  br i1 %.not56, label %bb.t, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.t:                                             ; preds = %_ZNK4Luau14NormalizedType7hasTopsEv.exit27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !122
  %.not57 = icmp eq i64 %i.bi, 0
  br i1 %.not57, label %bb.u, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i28, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType9hasErrorsEv.exit30

_ZNK4Luau14NormalizedType9hasErrorsEv.exit30:     ; preds = %bb.u
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !163
  %.not58 = icmp eq i32 %i.bl, 17
  br i1 %.not58, label %bb.v, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.v:                                             ; preds = %_ZNK4Luau14NormalizedType9hasErrorsEv.exit30
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i31, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit33

_ZNK4Luau14NormalizedType10hasNumbersEv.exit33:   ; preds = %bb.v
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !163
  %.not59 = icmp eq i32 %i.bo, 17
  br i1 %.not59, label %bb.w, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.w:                                             ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit33
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !69, !range !77, !noundef !78
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp ne i64 %i.bt, 0
  %.not1.i34 = select i1 %i.br, i1 true, i1 %i.bu
  br i1 %.not1.i34, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i35, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit37

_ZNK4Luau14NormalizedType10hasThreadsEv.exit37:   ; preds = %bb.x
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !163
  %.not60 = icmp eq i32 %i.bx, 17
  br i1 %.not60, label %bb.y, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.y:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit37
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i38, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit40

_ZNK4Luau14NormalizedType10hasBuffersEv.exit40:   ; preds = %bb.y
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !163
  %.not61 = icmp eq i32 %i.ca, 17
  br i1 %.not61, label %bb.z, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.z:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit40
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cc = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cb)
  br i1 %i.cc, label %bb.aa, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !124, !range !77, !noundef !78
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit41

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit41: ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ch = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cg)
  br i1 %i.ch, label %bb.ab, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.ab:                                            ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit41
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !174
  %.not62 = icmp eq i64 %i.cj, 0
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread:  ; preds = %bb.q, %bb.p, %bb.o, %bb.aa, %bb.y, %bb.x, %bb.v, %bb.u, %_ZNK4Luau14NormalizedType7hasNilsEv.exit24.thread, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %_ZNK4Luau14NormalizedType7hasNilsEv.exit.thread, %_ZNK4Luau14NormalizedType7hasNilsEv.exit24, %bb.ab, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit41, %bb.z, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit40, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit37, %bb.w, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit33, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit30, %bb.t, %_ZNK4Luau14NormalizedType7hasTopsEv.exit27, %_ZNK4Luau14NormalizedType7hasNilsEv.exit, %bb.n, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit, %bb.l, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit, %bb.i, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit, %bb.f, %_ZNK4Luau14NormalizedType7hasTopsEv.exit
  %.07 = phi i1 [ false, %bb.aa ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit ], [ false, %bb.n ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit ], [ false, %bb.l ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit ], [ false, %bb.i ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit ], [ false, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit ], [ false, %bb.f ], [ false, %_ZNK4Luau14NormalizedType7hasTopsEv.exit ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit24 ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit41 ], [ false, %bb.z ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit40 ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit37 ], [ false, %bb.w ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit33 ], [ false, %_ZNK4Luau14NormalizedType9hasErrorsEv.exit30 ], [ false, %bb.t ], [ false, %_ZNK4Luau14NormalizedType7hasTopsEv.exit27 ], [ %.not62, %bb.ab ], [ false, %bb.y ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit.thread ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.m ], [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit24.thread ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.x ], [ true, %bb.o ], [ %i.ba, %bb.q ], [ false, %bb.p ]
  ret i1 %.07
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType8isTruthyEv(ptr noundef nonnull align 8 dereferenceable(489) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4Luau14NormalizedType7isFalsyEv(ptr noundef nonnull align 8 dereferenceable(489) %0)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau14NormalizedType5isNilEv(ptr noundef nonnull align 8 dereferenceable(489) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit

_ZNK4Luau14NormalizedType7hasNilsEv.exit:         ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %.not = icmp eq i32 %i.c, 17
  br i1 %.not, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasNilsEv.exit.thread

_ZNK4Luau14NormalizedType7hasNilsEv.exit.thread:  ; preds = %bb.a, %_ZNK4Luau14NormalizedType7hasNilsEv.exit
  %i.d = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.g, null           ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZNK4Luau14NormalizedType7hasNilsEv.exit.thread
  br i1 %.not.i.i.i2, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit

_ZNK4Luau14NormalizedType7hasTopsEv.exit:         ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163
  %.not48.a = icmp eq i32 %i.h, 17
  br i1 %.not48.a, label %bb.c, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4Luau14NormalizedType7hasTopsEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i4, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %1 = load i32, ptr %i.j, align 8, !tbaa !163
  %2 = icmp ne i32 %1, 17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %3 = icmp ne i64 %i.l, 0
  %or.cond = select i1 %2, i1 true, i1 %3
  br i1 %or.cond, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168  ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i6, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit

_ZNK4Luau14NormalizedType10hasNumbersEv.exit:     ; preds = %bb.e
  %i.o = load i32, ptr %i.n, align 8, !tbaa !163
  %.not51 = icmp eq i32 %i.o, 17
  br i1 %.not51, label %bb.f, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.f:                                             ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load i8, ptr %i.p, align 8, !tbaa !69, !range !77, !noundef !78
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp ne i64 %i.t, 0
  %.not1.i = select i1 %i.r, i1 true, i1 %i.u
  br i1 %.not1.i, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !157  ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i8, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit

_ZNK4Luau14NormalizedType10hasThreadsEv.exit:     ; preds = %bb.g
  %i.x = load i32, ptr %i.w, align 8, !tbaa !163
  %.not52 = icmp eq i32 %i.x, 17
  br i1 %.not52, label %bb.h, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.h:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !158  ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i10, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit

_ZNK4Luau14NormalizedType10hasBuffersEv.exit:     ; preds = %bb.h
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !163
  %.not53 = icmp eq i32 %i.aa, 17
  br i1 %.not53, label %bb.i, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.i:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ac = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ab)
  br i1 %i.ac, label %bb.j, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !124, !range !77, !noundef !78
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit:   ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ah = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ag)
  br i1 %i.ah, label %bb.k, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.k:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !174
  %.not54 = icmp eq i64 %i.aj, 0
  br i1 %.not54, label %bb.l, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ak = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.m, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i12, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !163
  %i.ap = icmp eq i32 %i.ao, 17
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.o:                                             ; preds = %_ZNK4Luau14NormalizedType7hasNilsEv.exit.thread
  br i1 %.not.i.i.i2, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit15

_ZNK4Luau14NormalizedType7hasTopsEv.exit15:       ; preds = %bb.o
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !163
  %.not41 = icmp eq i32 %i.aq, 17
  br i1 %.not41, label %bb.p, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.p:                                             ; preds = %_ZNK4Luau14NormalizedType7hasTopsEv.exit15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i16, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %4 = load i32, ptr %i.as, align 8, !tbaa !163
  %5 = icmp ne i32 %4, 17
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8
  %6 = icmp ne i64 %i.au, 0
  %or.cond45 = select i1 %5, i1 true, i1 %6
  br i1 %or.cond45, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i19, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasNumbersEv.exit21

_ZNK4Luau14NormalizedType10hasNumbersEv.exit21:   ; preds = %bb.r
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !163
  %.not44 = icmp eq i32 %i.ax, 17
  br i1 %.not44, label %bb.s, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.s:                                             ; preds = %_ZNK4Luau14NormalizedType10hasNumbersEv.exit21
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !69, !range !77, !noundef !78
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp ne i64 %i.bc, 0
  %.not1.i22 = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %.not1.i22, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i23, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasThreadsEv.exit25

_ZNK4Luau14NormalizedType10hasThreadsEv.exit25:   ; preds = %bb.t
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !163
  %.not45 = icmp eq i32 %i.bg, 17
  br i1 %.not45, label %bb.u, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.u:                                             ; preds = %_ZNK4Luau14NormalizedType10hasThreadsEv.exit25
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i26, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType10hasBuffersEv.exit28

_ZNK4Luau14NormalizedType10hasBuffersEv.exit28:   ; preds = %bb.u
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !163
  %.not46 = icmp eq i32 %i.bj, 17
  br i1 %.not46, label %bb.v, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.v:                                             ; preds = %_ZNK4Luau14NormalizedType10hasBuffersEv.exit28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bl = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds7isNeverEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bk)
  br i1 %i.bl, label %bb.w, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !124, !range !77, !noundef !78
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread, label %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit29

_ZNK4Luau14NormalizedType12hasFunctionsEv.exit29: ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bq = tail call noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bp)
  br i1 %i.bq, label %bb.x, label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

bb.x:                                             ; preds = %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit29
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !174
  %.not47 = icmp eq i64 %i.bs, 0
  br label %_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread

_ZNK4Luau14NormalizedType7hasTopsEv.exit.thread:  ; preds = %bb.n, %bb.m, %bb.l, %bb.w, %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.j, %bb.h, %bb.g, %bb.e, %bb.c, %bb.b, %_ZNK4Luau14NormalizedType7hasTopsEv.exit15, %bb.q, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit21, %bb.s, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit25, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit28, %bb.v, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit29, %bb.x, %_ZNK4Luau14NormalizedType7hasTopsEv.exit, %bb.d, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit, %bb.f, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit, %bb.i, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit, %bb.k, %_ZNK4Luau14NormalizedType7hasNilsEv.exit
  %.0 = phi i1 [ false, %_ZNK4Luau14NormalizedType7hasNilsEv.exit ], [ false, %bb.r ], [ false, %bb.k ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit ], [ false, %bb.i ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit ], [ false, %bb.f ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit ], [ false, %bb.w ], [ false, %bb.d ], [ false, %_ZNK4Luau14NormalizedType7hasTopsEv.exit ], [ false, %_ZNK4Luau14NormalizedType12hasFunctionsEv.exit29 ], [ false, %bb.v ], [ false, %_ZNK4Luau14NormalizedType10hasBuffersEv.exit28 ], [ false, %_ZNK4Luau14NormalizedType10hasThreadsEv.exit25 ], [ false, %bb.s ], [ false, %_ZNK4Luau14NormalizedType10hasNumbersEv.exit21 ], [ false, %bb.t ], [ false, %bb.q ], [ false, %_ZNK4Luau14NormalizedType7hasTopsEv.exit15 ], [ %.not47, %bb.x ], [ false, %bb.u ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.o ], [ false, %bb.p ], [ true, %bb.l ], [ %i.ap, %bb.n ], [ false, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau10Normalizer11isInhabitedEPKNS_14NormalizedTypeE(ptr noundef nonnull align 8 captures(none) dereferenceable(352) %0, ptr noundef %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::Set", align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !187
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.c = load i8, ptr %i.b, align 4, !tbaa !189, !range !77, !noundef !78 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i

_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = load i32, ptr @_ZN4FInt25LuauNormalizerInitialFuelE, align 8, !tbaa !192
  store i8 1, ptr %i.b, align 4, !tbaa !189
  store i32 %i.f, ptr %i.e, align 8, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalIiEaSIRN4Luau6FValueIiEEEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIiES8_IiNSt5decayISB_E4typeEEEEESt16is_constructibleIiJSB_EESt13is_assignableIRiSB_EEERS0_E4typeEOSB_.exit.i.i, %bb.a
  %i.g = invoke noundef i32 @_ZN4Luau10Normalizer11isInhabitedEPKNS_14NormalizedTypeERNS_3SetIPKNS_4TypeENS_16DenseHashPointerEEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %_ZN4Luau15FuelInitializerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 4, !tbaa !189
  br label %_ZN4Luau15FuelInitializerD2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4Luau19NormalizerHitLimitsE ; 3 uses
  %.not.not = icmp eq i8 %i.c, 0
  br i1 %.not.not, label %bb.f, label %_ZN4Luau15FuelInitializerD2Ev.exit10

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.b, align 4, !tbaa !189
  br label %_ZN4Luau15FuelInitializerD2Ev.exit10

_ZN4Luau15FuelInitializerD2Ev.exit10:             ; preds = %bb.f, %bb.e
  %.0 = extractvalue { ptr, i32 } %i.h, 1
  %i.i = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4Luau19NormalizerHitLimitsE) #32
  %i.j = icmp eq i32 %.0, %i.i
  br i1 %i.j, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit10
  %.06 = extractvalue { ptr, i32 } %i.h, 0
  %i.k = call ptr @__cxa_begin_catch(ptr %.06) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4Luau15FuelInitializerD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZN4Luau15FuelInitializerD2Ev.exit:               ; preds = %bb.d, %bb.c, %bb.g
  %.08 = phi i32 [ 2, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.d ]
  %i.m = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.m) #32
  br label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit

_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit: ; preds = %_ZN4Luau15FuelInitializerD2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %.08

bb.j:                                             ; preds = %bb.h, %_ZN4Luau15FuelInitializerD2Ev.exit10
  %.merged = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.h, %_ZN4Luau15FuelInitializerD2Ev.exit10 ]
  %i.n = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i11, label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.n) #32
  br label %_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit12

_ZN4Luau3SetIPKNS_4TypeENS_16DenseHashPointerEED2Ev.exit12: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau10Normalizer11isInhabitedEPKNS_14NormalizedTypeERNS_3SetIPKNS_4TypeENS_16DenseHashPointerEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(352) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::RecursionCounter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  call void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c)
  %i.d = load i32, ptr @_ZN4FInt23LuauNormalizeCacheLimitE, align 8, !tbaa !192 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !199
  %i.j = add i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !199
  %i.m = add i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load i64, ptr %i.n, align 8, !tbaa !201
  %i.p = add i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = load i64, ptr %i.q, align 8, !tbaa !202
  %i.s = add i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load i64, ptr %i.t, align 8, !tbaa !208
  %i.v = add i64 %i.s, %i.u
  %i.w = zext nneg i32 %i.d to i64
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  call void @_ZN4Luau10Normalizer11clearCachesEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  br label %_ZN4Luau10Normalizer20withinResourceLimitsEv.exit.thread

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 228
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !224 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %_ZN4Luau10Normalizer20withinResourceLimitsEv.exit

bb.d:                                             ; preds = %.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !225
  %i.ae = icmp sge i32 %i.aa, %i.ad
  %i.af = icmp ne ptr %1, null
  %or.cond157 = and i1 %i.af, %i.ae
  br i1 %or.cond157, label %bb.f, label %_ZN4Luau10Normalizer20withinResourceLimitsEv.exit.thread

_ZN4Luau10Normalizer20withinResourceLimitsEv.exit: ; preds = %.thread.i
  %.old.not = icmp eq ptr %1, null
  br i1 %.old.not, label %_ZN4Luau10Normalizer20withinResourceLimitsEv.exit.thread, label %bb.f

bb.e:                                             ; preds = %bb.ae, %bb.t, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.f:                                             ; preds = %bb.d, %_ZN4Luau10Normalizer20withinResourceLimitsEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !189, !range !77, !noundef !78
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %_ZN4Luau10Normalizer11consumeFuelEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !39
  %i.an = icmp slt i32 %i.al, 2
  br i1 %i.an, label %bb.h, label %_ZN4Luau10Normalizer11consumeFuelEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4Luau19NormalizerHitLimitsE, i64 16), ptr %i.ao, align 8, !tbaa !227
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN4Luau19NormalizerHitLimitsE, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.h
  unreachable

_ZN4Luau10Normalizer11consumeFuelEv.exit:         ; preds = %bb.g, %bb.f
  %i.ap = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !166, !range !77, !noundef !78
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !150 ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null             ; 2 uses
  br i1 %i.aq, label %bb.i, label %bb.u

bb.i:                                             ; preds = %_ZN4Luau10Normalizer11consumeFuelEv.exit
  br i1 %.not.i.i, label %_ZN4Luau10Normalizer20withinResourceLimitsEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load i32, ptr %i.as, align 8, !tbaa !163
  %i.au = icmp eq i32 %i.at, 17
  br i1 %i.au, label %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau10Normalizer20withinResourceLimitsEv.exit.thread

_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !151 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i86, label %_ZN4Luau10Normalizer20withinResourceLimitsEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit
end_hunk_2
