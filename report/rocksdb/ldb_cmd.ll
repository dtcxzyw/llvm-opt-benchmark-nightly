Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/ldb_cmd?download=true
inline.NumInlined: 11498
inline.NumDeleted: 3305
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN7rocksdb9BlobIndex10DecodeFromENS_5SliceE:bb.a
  store i8 %i.a, ptr %1, align 8, !tbaa !582
  %i.b = icmp ugt i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr @.str.520, ptr %4, align 8, !tbaa !355
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 31, ptr %i.c, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.d = sext i8 %i.a to i32                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.e = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true) ; 7 uses
  %i.f = icmp samesign ult i32 %i.e, 10
  %i.g = icmp samesign ult i32 %i.e, 100
  %spec.select = select i1 %i.g, i32 2, i32 3
  %.022.i.i = select i1 %i.f, i32 1, i32 %spec.select ; 3 uses
  %.lobit.i = lshr i32 %i.d, 31                   ; 2 uses
  %i.h = add nuw nsw i32 %.022.i.i, %.lobit.i     ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !96, !alias.scope !1684
  %cond = icmp eq i32 %i.h, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %i.j, align 8, !tbaa !101, !alias.scope !1684
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 45, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.i, ptr %i.k, align 8, !tbaa !102, !alias.scope !1684
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !101
  %i.m = zext nneg i32 %.lobit.i to i64
  %i.n = load ptr, ptr %7, align 8, !tbaa !100, !alias.scope !1684
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m ; 4 uses
  %i.p = icmp samesign ugt i32 %i.e, 99
  br i1 %i.p, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.e
  %i.q = shl nuw nsw i32 %i.e, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -200
  %i.u = getelementptr i8, ptr %i.s, i64 -199
  %i.v = load i8, ptr %i.u, align 1, !tbaa !101, !noalias !1684
  %i.w = zext nneg i32 %.022.i.i to i64
  %i.x = getelementptr i8, ptr %i.o, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  store i8 %i.v, ptr %i.y, align 1, !tbaa !101
  %i.z = load i8, ptr %i.t, align 2, !tbaa !101, !noalias !1684
  %i.aa = add nsw i32 %.022.i.i, -2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !101
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.e
  %i.ad = icmp samesign ugt i32 %i.e, 9
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ae = shl nuw nsw i32 %i.e, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !101, !noalias !1684
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !101
  %i.ak = load i8, ptr %i.ag, align 2, !tbaa !101, !noalias !1684
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.g:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i79 = phi i32 [ 1, %._crit_edge.i.i.thread ], [ %i.e, %._crit_edge.i.i ]
  %i.al = trunc nuw nsw i32 %.0.lcssa.i.i79 to i8
  %i.am = or disjoint i8 %i.al, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.f, %bb.g
  %storemerge.i.i = phi i8 [ %i.am, %bb.g ], [ %i.ak, %bb.f ]
  store i8 %storemerge.i.i, ptr %i.o, align 1, !tbaa !101
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.521, i64 noundef 25)
          to label %.noexc unwind label %bb.j     ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !96, !alias.scope !1685
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !100 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %.noexc
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !102 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ap, ptr %6, align 8, !tbaa !100, !alias.scope !1685
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !101
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !101, !alias.scope !1685
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.ax = phi ptr [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ay = phi i64 [ %i.at, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !102, !alias.scope !1685
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !100
  store i64 0, ptr %i.az, align 8, !tbaa !102
  store i8 0, ptr %i.aq, align 8, !tbaa !101
  store ptr %i.ax, ptr %5, align 8, !tbaa !355
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !356
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit unwind label %bb.k

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %bb.i
  %i.bc = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !101
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bg = load ptr, ptr %7, align 8, !tbaa !100   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.j
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !101
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.t

bb.j:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.k:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ao
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.k
  %i.bo = load i64, ptr %i.ao, align 8, !tbaa !101
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.j ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.bl, %bb.k ]
  %i.bq = load ptr, ptr %7, align 8, !tbaa !100   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.j
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !101
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.bv = add i64 %3, -1
  %spec.select.i = trunc i8 %i.a to i1
  br i1 %spec.select.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = getelementptr i8, ptr %2, i64 %3        ; 2 uses
  %i.by = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bw) ; 4 uses
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %bb.n

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit:      ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr @.str.520, ptr %8, align 8, !tbaa !355
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 31, ptr %i.bz, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store ptr @.str.522, ptr %9, align 8, !tbaa !355
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 20, ptr %i.ca, align 8, !tbaa !356
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %.pre = load i8, ptr %1, align 8, !tbaa !582
  %i.ce = icmp eq i8 %.pre, 0
  br i1 %i.ce, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.by, ptr %i.cf, align 8, !tbaa !114
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.cd, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !357
  br label %bb.s

.thread:                                          ; preds = %bb.l, %bb.n
  %.sroa.14.083 = phi i64 [ %i.cd, %bb.n ], [ %i.bv, %bb.l ]
  %.sroa.021.082 = phi ptr [ %i.by, %bb.n ], [ %i.bu, %bb.l ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.021.082, i64 %.sroa.14.083 ; 2 uses
  %i.ci = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %.sroa.021.082, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cg) ; 4 uses
  %.not50 = icmp eq ptr %i.ci, null
  br i1 %.not50, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl
  %i.co = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cm) ; 4 uses
  %.not51 = icmp eq ptr %i.co, null
  br i1 %.not51, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cj, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  %i.ct = tail call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cr) ; 3 uses
  %i.cu = icmp ne ptr %i.ct, null
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cj, %i.cv
  %i.cx = icmp eq i64 %i.cw, 1
  %or.cond = and i1 %i.cu, %i.cx
  br i1 %or.cond, label %bb.r, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18

bb.r:                                             ; preds = %bb.q
  %i.cy = load i8, ptr %i.ct, align 1, !tbaa !101
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.cy, ptr %i.cz, align 8, !tbaa !588
  br label %bb.s

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18:    ; preds = %bb.q, %bb.p, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store ptr @.str.520, ptr %10, align 8, !tbaa !355
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 31, ptr %i.da, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  store ptr @.str.523, ptr %11, align 8, !tbaa !355
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 21, ptr %i.db, align 8, !tbaa !356
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.dc, align 8, !tbaa !312, !alias.scope !1686
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1686
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit18, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb9BlobIndex11DebugStringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 25 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load i8, ptr %1, align 8, !tbaa !582
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.524, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i1 noundef zeroext %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = load ptr, ptr %4, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.i = load ptr, ptr %4, align 8, !tbaa !100    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !101
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.m

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %bb.n, %_ZNSolsEm.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZNSolsEm.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.i, %bb.h, %bb.g, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !100    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !101
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.e
  %.pn7 = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.body

bb.g:                                             ; preds = %bb.a
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.525, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %bb.g
  %i.w = load i8, ptr %1, align 8, !tbaa !582
  %.off.i = add i8 %i.w, -1
  %switch.i = icmp ult i8 %.off.i, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %switch.i, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.526, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.d ; 0 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.y)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.i, %bb.h
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.527, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
end_hunk_0
begin_hunk_1_@_ZN7rocksdb15BatchPutCommandC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKSt3mapIS7_S7_St4lessIS7_ESaISt4pairIKS7_S7_EEESB_:bb.a
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #37
          to label %.noexc43 unwind label %bb.o   ; 2 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.x, ptr %i.p, align 8, !tbaa !100
  store i64 %i.s, ptr %i.q, align 8, !tbaa !101
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc43, %bb.a
  %i.y = phi ptr [ %i.x, %.noexc43 ], [ %i.q, %bb.a ] ; 3 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.r, align 1, !tbaa !101
  store i8 %i.z, ptr %i.y, align 1, !tbaa !101
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 7 uses

.thread:                                          ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 160
  store ptr %i.ac, ptr %5, align 8, !tbaa !111
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !113
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %6, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ac)
          to label %bb.h unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 160) #38
  br label %.body

bb.h:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !112
  invoke void @_ZN7rocksdb10LDBCommand19BuildCmdLineOptionsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 %5)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7rocksdb10LDBCommandC2ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEERKSt6vectorIS7_SaIS7_EEbSL_(ptr noundef nonnull align 8 dereferenceable(2416) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.an = load ptr, ptr %.05.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !101
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.am
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !111
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.j
  %i.at = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ak, %bb.j ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !113
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  %.not4.i.i.i45 = icmp eq ptr %i.ac, %i.ah
  br i1 %.not4.i.i.i45, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49
  %.05.i.i.i47 = phi ptr [ %i.be, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49 ], [ %i.ac, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.az = load ptr, ptr %.05.i.i.i47, align 8, !tbaa !100 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i47, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48: ; preds = %.lr.ph.i.i.i46
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !101
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49: ; preds = %.lr.ph.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i47, i64 32 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.be, %i.ah
  br i1 %.not.i.i.i50, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57, label %.lr.ph.i.i.i46, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 160) #38
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !100 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !101
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !100 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !101
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !100 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !101
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !100 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !101
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.cd = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !101
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN7rocksdb15BatchPutCommandE, i64 16), ptr %0, align 8, !tbaa !127
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !112 ; 2 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !111   ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %15 = ashr exact i64 %i.co, 5                   ; 2 uses
  %i.cp = icmp ult i64 %15, 2
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i59, label %16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cq, ptr %8, align 8, !tbaa !96
  %i.cr = invoke noalias noundef nonnull dereferenceable(60) ptr @_Znwm(i64 noundef 60) #37
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i unwind label %bb.s ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i59
  store ptr %i.cr, ptr %8, align 8, !tbaa !100
  store i64 59, ptr %i.cq, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.cr, ptr noundef nonnull align 1 dereferenceable(59) @.str.310, i64 59, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 59, ptr %i.cs, align 8, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 59
  store i8 0, ptr %i.ct, align 1, !tbaa !101
  store i32 2, ptr %7, align 8, !tbaa !141, !alias.scope !2306
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 9 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !96, !alias.scope !2306
  %i.cw = invoke noalias noundef nonnull dereferenceable(60) ptr @_Znwm(i64 noundef 60) #37
          to label %bb.l unwind label %bb.t       ; 4 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store i64 59, ptr %i.cv, align 8, !tbaa !101, !alias.scope !2306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.cw, ptr noundef nonnull align 1 dereferenceable(59) %i.cr, i64 59, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 59
  store i8 0, ptr %i.cy, align 1, !tbaa !101
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load i32, ptr %7, align 8, !tbaa !141
  store i32 %i.da, ptr %i.cz, align 8, !tbaa !141
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !100 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

.thread.i.i:                                      ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cw, ptr %i.db, align 8, !tbaa !100
  store i64 59, ptr %i.df, align 8, !tbaa !102
  %i.dg = load i64, ptr %i.cv, align 8, !tbaa !101
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !101
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %bb.l
  %i.dh = load i64, ptr %i.dd, align 8, !tbaa !101
  store ptr %i.cw, ptr %i.db, align 8, !tbaa !100
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 59, ptr %i.di, align 8, !tbaa !102
  %i.dj = load i64, ptr %i.cv, align 8, !tbaa !101
  store i64 %i.dj, ptr %i.dd, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dc, ptr %i.cu, align 8, !tbaa !100
  store i64 %i.dh, ptr %i.cv, align 8, !tbaa !101
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !100
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit

_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit: ; preds = %bb.m, %bb.n
  %i.dk = phi ptr [ %i.cv, %bb.n ], [ %i.dc, %bb.m ]
  store i64 0, ptr %i.cx, align 8, !tbaa !102
  store i8 0, ptr %i.dk, align 1, !tbaa !101
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !100 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cv
  br i1 %i.dm, label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit
  %i.dn = load i64, ptr %i.cv, align 8, !tbaa !101
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #38
  br label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit

_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit:    ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dp = load ptr, ptr %8, align 8, !tbaa !100   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cq
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit
  %i.dr = load i64, ptr %i.cq, align 8, !tbaa !101
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.loopexit179

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !100 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.o
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !101
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !100 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !101
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !100 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !101
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2
  %i.em = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !101
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.h
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.er, %bb.q ], [ %i.eq, %bb.p ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #36
  br label %.body

.body:                                            ; preds = %.thread, %bb.g, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.ad, %.thread ], [ %i.ai, %bb.g ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !100 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !101
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !100 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !101
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.1
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !100 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !101
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.2
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !100 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !101
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.3
  %i.fq = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !101
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4
  %.sink451 = phi i64 [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4 ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3 ]
  %.sink = phi ptr [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4 ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3 ]
  %i.fu = add i64 %.sink451, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fu) #38
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3 ], [ %.pn.pn.pn.ph, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.bj

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i59
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !100   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.cq
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.t
  %i.fz = load i64, ptr %i.cq, align 8, !tbaa !101
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.s
  %.pn37 = phi { ptr, i32 } [ %i.fv, %bb.s ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %i.fw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.bi

16:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %.not = trunc i64 %15 to i1
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i82, label %bb.u

bb.u:                                             ; preds = %16
  %.not.a = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.a, label %.loopexit179, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 361
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 362
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 11 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 2432
  br label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i82: ; preds = %16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.gn, ptr %10, align 8, !tbaa !96
  %i.go = invoke noalias noundef nonnull dereferenceable(68) ptr @_Znwm(i64 noundef 68) #37
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i90 unwind label %bb.y ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i82
  store ptr %i.go, ptr %10, align 8, !tbaa !100
  store i64 67, ptr %i.gn, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.go, ptr noundef nonnull align 1 dereferenceable(67) @.str.311, i64 67, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 67, ptr %i.gp, align 8, !tbaa !102
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 67
  store i8 0, ptr %i.gq, align 1, !tbaa !101
  store i32 2, ptr %9, align 8, !tbaa !141, !alias.scope !2307
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 9 uses
  store ptr %i.gs, ptr %i.gr, align 8, !tbaa !96, !alias.scope !2307
  %i.gt = invoke noalias noundef nonnull dereferenceable(68) ptr @_Znwm(i64 noundef 68) #37
          to label %bb.v unwind label %bb.z       ; 4 uses

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i90
  store i64 67, ptr %i.gs, align 8, !tbaa !101, !alias.scope !2307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.gt, ptr noundef nonnull align 1 dereferenceable(67) %i.go, i64 67, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 67
  store i8 0, ptr %i.gv, align 1, !tbaa !101
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gx = load i32, ptr %9, align 8, !tbaa !141
  store i32 %i.gx, ptr %i.gw, align 8, !tbaa !141
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !100 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %.thread.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i98

.thread.i.i103:                                   ; preds = %bb.v
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.gt, ptr %i.gy, align 8, !tbaa !100
  store i64 67, ptr %i.hc, align 8, !tbaa !102
  %i.hd = load i64, ptr %i.gs, align 8, !tbaa !101
  store i64 %i.hd, ptr %i.ha, align 8, !tbaa !101
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i98: ; preds = %bb.v
  %i.he = load i64, ptr %i.ha, align 8, !tbaa !101
  store ptr %i.gt, ptr %i.gy, align 8, !tbaa !100
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 67, ptr %i.hf, align 8, !tbaa !102
  %i.hg = load i64, ptr %i.gs, align 8, !tbaa !101
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !101
  %.not.i.i99 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i99, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i98
  store ptr %i.gz, ptr %i.gr, align 8, !tbaa !100
  store i64 %i.he, ptr %i.gs, align 8, !tbaa !101
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i98, %.thread.i.i103
  store ptr %i.gs, ptr %i.gr, align 8, !tbaa !100
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104

_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104: ; preds = %bb.w, %bb.x
  %i.hh = phi ptr [ %i.gs, %bb.x ], [ %i.gz, %bb.w ]
  store i64 0, ptr %i.gu, align 8, !tbaa !102
  store i8 0, ptr %i.hh, align 1, !tbaa !101
  %i.hi = load ptr, ptr %i.gr, align 8, !tbaa !100 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.gs
  br i1 %i.hj, label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104
  %i.hk = load i64, ptr %i.gs, align 8, !tbaa !101
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #38
  br label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107

_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105
  %i.hm = load ptr, ptr %10, align 8, !tbaa !100  ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.gn
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107
  %i.ho = load i64, ptr %i.gn, align 8, !tbaa !101
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %.loopexit179

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i82
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i90
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %10, align 8, !tbaa !100  ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.gn
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.z
  %i.hu = load i64, ptr %i.gn, align 8, !tbaa !101
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.y
  %.pn35 = phi { ptr, i32 } [ %i.hq, %bb.y ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.hr, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.bi

bb.aa:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.hw = phi ptr [ %i.cl, %.lr.ph ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ]
  %.0260 = phi i64 [ 0, %.lr.ph ], [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hw, i64 %.0260 ; 2 uses
  store ptr %i.gb, ptr %11, align 8, !tbaa !96
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !100 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !102 ; 8 uses
  %i.ib = icmp ugt i64 %i.ia, 15
  br i1 %i.ib, label %bb.ab, label %._crit_edge.i.i116

bb.ab:                                            ; preds = %bb.aa
  %i.ic = icmp slt i64 %i.ia, 0
  br i1 %i.ic, label %.noexc.i119, label %bb.ac

.noexc.i119:                                      ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.468) #35
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %.noexc.i119
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.id = add nuw i64 %i.ia, 1                    ; 2 uses
  %i.ie = icmp slt i64 %i.id, 0
  br i1 %i.ie, label %.noexc6.i118, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117, !prof !97

.noexc6.i118:                                     ; preds = %bb.ac
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %.noexc6.i118
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117: ; preds = %bb.ac
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #37
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc122:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117
  store ptr %i.if, ptr %11, align 8, !tbaa !100
  store i64 %i.ia, ptr %i.gb, align 8, !tbaa !101
  br label %._crit_edge.i.i116

._crit_edge.i.i116:                               ; preds = %.noexc122, %bb.aa
  %i.ig = phi ptr [ %i.if, %.noexc122 ], [ %i.gb, %bb.aa ] ; 3 uses
  switch i64 %i.ia, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i116
  %i.ih = load i8, ptr %i.hy, align 1, !tbaa !101
  store i8 %i.ih, ptr %i.ig, align 1, !tbaa !101
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr align 1 %i.hy, i64 %i.ia, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i116
  store i64 %i.ia, ptr %i.gc, align 8, !tbaa !102
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ia
  store i8 0, ptr %i.ii, align 1, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.ij = or disjoint i64 %.0260, 1               ; 3 uses
  %i.ik = load ptr, ptr %i.cj, align 8, !tbaa !112
  %i.il = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 5                 ; 2 uses
  %.not.i.i124 = icmp ult i64 %i.ij, %i.ip
  br i1 %.not.i.i124, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.539, i64 noundef %i.ij, i64 noundef %i.ip) #35
          to label %.noexc125 unwind label %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %i.il, i64 %i.ij ; 2 uses
  store ptr %i.gd, ptr %12, align 8, !tbaa !96
end_hunk_1
begin_hunk_2_@_ZN7rocksdb15BatchPutCommandC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKSt3mapIS7_S7_St4lessIS7_ESaISt4pairIKS7_S7_EEESB_:bb.a
  store ptr %i.kc, ptr %i.ka, align 8, !tbaa !96
  %i.kd = load ptr, ptr %13, align 8, !tbaa !100  ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.gg
  br i1 %i.ke, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.kf = load i64, ptr %i.gh, align 8, !tbaa !102 ; 3 uses
  %i.kg = icmp ult i64 %i.kf, 16
  call void @llvm.assume(i1 %i.kg)
  %i.kh = add nuw nsw i64 %i.kf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kc, ptr noundef nonnull align 8 dereferenceable(1) %i.gg, i64 %i.kh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bb
  store ptr %i.kd, ptr %i.ka, align 8, !tbaa !100
  %i.ki = load i64, ptr %i.gg, align 8, !tbaa !101
  store i64 %i.ki, ptr %i.kc, align 8, !tbaa !101
  %.pre287.a = load i64, ptr %i.gh, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.bc
  %i.kj = phi i64 [ %.pre287.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.kf, %bb.bc ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !102
  store ptr %i.gg, ptr %13, align 8, !tbaa !100
  store i64 0, ptr %i.gh, align 8, !tbaa !102
  store i8 0, ptr %i.gg, align 8, !tbaa !101
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ka, i64 32 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 48 ; 3 uses
  store ptr %i.km, ptr %i.kl, align 8, !tbaa !96
  %i.kn = load ptr, ptr %14, align 8, !tbaa !100  ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.gj
  br i1 %i.ko, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.kp = load i64, ptr %i.gk, align 8, !tbaa !102 ; 3 uses
  %i.kq = icmp ult i64 %i.kp, 16
  call void @llvm.assume(i1 %i.kq)
  %i.kr = add nuw nsw i64 %i.kp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.km, ptr noundef nonnull align 8 dereferenceable(1) %i.gj, i64 %i.kr, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !100
  %i.ks = load i64, ptr %i.gj, align 8, !tbaa !101
  store i64 %i.ks, ptr %i.km, align 8, !tbaa !101
  %.pre288.a = load i64, ptr %i.gk, align 8, !tbaa !102
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.kt = phi i64 [ %.pre288.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.kp, %bb.bd ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !102
  store ptr %i.gj, ptr %14, align 8, !tbaa !100
  store i64 0, ptr %i.gk, align 8, !tbaa !102
  %i.kv = load ptr, ptr %i.gl, align 8, !tbaa !761
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  store ptr %i.kw, ptr %i.gl, align 8, !tbaa !761
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.be:                                            ; preds = %bb.ba
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit unwind label %bb.bf

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit: ; preds = %bb.be
  %.pre289 = load ptr, ptr %14, align 8, !tbaa !100 ; 2 uses
  %i.kx = icmp eq ptr %.pre289, %i.gj
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit
  %i.ky = load i64, ptr %i.gj, align 8, !tbaa !101
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %.pre289, i64 noundef %i.kz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.la = load ptr, ptr %13, align 8, !tbaa !100  ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.gg
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.lc = load i64, ptr %i.gg, align 8, !tbaa !101
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.le = load ptr, ptr %12, align 8, !tbaa !100  ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.gd
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.lg = load i64, ptr %i.gd, align 8, !tbaa !101
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.li = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.gb
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.lk = load i64, ptr %i.gb, align 8, !tbaa !101
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.lm = add nuw i64 %.0260, 2                   ; 2 uses
  %i.ln = load ptr, ptr %i.cj, align 8, !tbaa !112
  %i.lo = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = ashr exact i64 %i.lr, 5
  %i.lt = icmp ult i64 %i.lm, %i.ls
  br i1 %i.lt, label %bb.aa, label %.loopexit179, !llvm.loop !2305

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117, %.noexc6.i118, %.noexc.i119
  %lpad.loopexit.split-lp452 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i128, %bb.ag, %.noexc.i130, %.noexc6.i129
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i136, %bb.an, %.noexc.i138, %.noexc6.i137
  %lpad.loopexit.split-lp456 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i144, %bb.au, %.noexc.i146, %.noexc6.i145
  %lpad.loopexit.split-lp459 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bf:                                            ; preds = %bb.be
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = load ptr, ptr %14, align 8, !tbaa !100  ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.gj
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bf
  %i.lx = load i64, ptr %i.gj, align 8, !tbaa !101
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bf, %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  %.pn30 = phi { ptr, i32 } [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %lpad.loopexit.split-lp459, %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp ], [ %i.lu, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.lz = load ptr, ptr %13, align 8, !tbaa !100  ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.gg
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.mb = load i64, ptr %i.gg, align 8, !tbaa !101
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %lpad.loopexit.split-lp456, %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.md = load ptr, ptr %12, align 8, !tbaa !100  ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.gd
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.mf = load i64, ptr %i.gd, align 8, !tbaa !101
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp ], [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.mh = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.gb
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.mj = load i64, ptr %i.gb, align 8, !tbaa !101
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %lpad.loopexit.split-lp452, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn30.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.bi

.loopexit179:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !115
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !115
  %i.mp = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.mm, ptr %i.mo, ptr nonnull align 8 dereferenceable(32) @_ZN7rocksdb10LDBCommand21ARG_CREATE_IF_MISSINGB5cxx11E)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.loopexit179
  %i.mq = load ptr, ptr %i.mn, align 8, !tbaa !115
  %i.mr = icmp ne ptr %i.mp, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 377
  %i.mt = zext i1 %i.mr to i8
  store i8 %i.mt, ptr %i.ms, align 1, !tbaa !328
  ret void

bb.bh:                                            ; preds = %.loopexit179
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.pn39 = phi { ptr, i32 } [ %i.mu, %bb.bh ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn30.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ci) #36
  call void @_ZN7rocksdb10LDBCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(2416) dereferenceable(2416) %0) #36
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.bi ], [ %.pn.pn.pn, %.loopexit ]
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !763    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !761  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !101
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !100 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !101
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #38
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !49

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !763
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !762
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #38
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15BatchPutCommand4HelpERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator", align 1    ; 3 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 5 uses
  %i.c = and i64 %i.b, -2
  %i.d = icmp eq i64 %i.c, 9223372036854775806
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.513) #35
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.e = add nsw i64 %i.b, 2                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !101
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.e, %i.k
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  store i16 8224, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull @.str.164, i64 noundef 2)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.d
  store i64 %i.e, ptr %i.a, align 8, !tbaa !102
  %i.m = load ptr, ptr %0, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !96, !alias.scope !2318
  store i64 8391737074322268514, ptr %i.o, align 8, !alias.scope !2318
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.p, align 8, !tbaa !102, !alias.scope !2318
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.q, align 8, !tbaa !101, !alias.scope !2318
  %i.r = load i64, ptr %i.a, align 8, !tbaa !102  ; 5 uses
  %i.s = and i64 %i.r, -8
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.513) #35
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.u = add nsw i64 %i.r, 8                      ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = load i64, ptr %i.g, align 8, !tbaa !101
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  store i64 8391737074322268514, ptr %i.aa, align 1
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r, i64 noundef 0, ptr noundef nonnull %i.o, i64 noundef 8)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.f, %bb.g
  store i64 %i.u, ptr %i.a, align 8, !tbaa !102
  %i.ab = load ptr, ptr %0, align 8, !tbaa !100
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_T0_T1_":bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.ab
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, !llvm.loop !3292

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i:       ; preds = %bb.y
  %i.ge = add nuw nsw i64 %i.ft, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fw, ptr noundef nonnull align 8 dereferenceable(1) %i.fq, i64 %i.ge, i1 false)
  %.pre50.i = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  %.pre.i17 = load i64, ptr %i.fs, align 8, !tbaa !102
  store i64 %.pre.i17, ptr %i.fy, align 8, !tbaa !102
  store i64 0, ptr %i.fs, align 8, !tbaa !102
  store i8 0, ptr %.pre50.i, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i:       ; preds = %bb.w
  %i.gf = load i64, ptr %i.fw, align 8, !tbaa !101
  %i.gg = add nuw nsw i64 %i.ft, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fw, ptr noundef nonnull align 8 dereferenceable(1) %i.fq, i64 %i.gg, i1 false)
  store ptr %i.fv, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  store ptr %i.fw, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  store i64 %i.gf, ptr %i.fq, align 8, !tbaa !101
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.v
  %i.gh = load i64, ptr %i.fq, align 8, !tbaa !101
  %i.gi = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !100 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 4 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !102 ; 2 uses
  %i.gn = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gn)
  %i.go = add nuw nsw i64 %i.gm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fq, ptr noundef nonnull align 8 dereferenceable(1) %i.gj, i64 %i.go, i1 false)
  store ptr %i.fp, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  store ptr %i.fq, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gi, ptr %.sroa.012.1.i.i, align 8, !tbaa !100
  store ptr %i.fp, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  %i.gp = load i64, ptr %i.gj, align 8, !tbaa !101
  store i64 %i.gp, ptr %i.fq, align 8, !tbaa !101
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i
  store i64 %i.gh, ptr %i.gj, align 8, !tbaa !101
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i, %bb.z, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !102
  %i.gs = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !102
  store i64 %i.gt, ptr %i.gq, align 8, !tbaa !102
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit": ; preds = %bb.u
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge3595, i64 noundef %i.eb)
  %i.gu = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.gv = sub i64 %i.gu, %i.ad                    ; 2 uses
  %i.gw = ashr exact i64 %i.gv, 5                 ; 3 uses
  %i.gx = icmp sgt i64 %i.gw, 16
  br i1 %i.gx, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit", !llvm.loop !3287

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_SO_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_115WALFileIteratorC1ERKS7_RKSB_E3$_0EEEvT_T0_SP_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.i = add nsw i64 %2, -1
  %i.j = sdiv i64 %i.i, 2                         ; 2 uses
  %i.k = icmp slt i64 %1, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.l = shl i64 %.051, 1                         ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds [32 x i8], ptr %0, i64 %i.m
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  store i64 0, ptr %i.e, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i64 0, ptr %i.f, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  %i.q = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef null) ; 0 uses
  %i.r = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef null) ; 0 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !357
  %i.t = load i64, ptr %i.f, align 8, !tbaa !357
  %i.u = icmp ult i64 %i.s, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %spec.select = select i1 %i.u, i64 %i.o, i64 %i.m ; 5 uses
  %i.v = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %0, i64 %.051 ; 8 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100  ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !100 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab                ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.ac, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.ac, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !102 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %.not21.i = icmp eq i64 %spec.select, %.051
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !97

bb.c:                                             ; preds = %bb.b
  switch i64 %i.ae, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !101
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !102 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !102
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !101
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !101
  store <2 x i64> %i.an, ptr %i.al, align 8, !tbaa !101
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !101
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !100
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !101
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %i.v, align 8, !tbaa !100
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.as = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.x, %bb.f ], [ %i.ab, %bb.g ], [ %i.aa, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !102
  store i8 0, ptr %i.as, align 1, !tbaa !101
  %i.au = icmp slt i64 %spec.select, %i.j
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !3293

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %5 = trunc i64 %2 to i1
  br i1 %5, label %bb.p, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.av = add nsw i64 %2, -2
  %i.aw = ashr exact i64 %i.av, 1
  %i.ax = icmp eq i64 %.0.lcssa, %i.aw
  br i1 %i.ax, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ay = shl nsw i64 %.0.lcssa, 1
  %i.az = or disjoint i64 %i.ay, 1                ; 3 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %i.az ; 9 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !100 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 4 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg                ; 2 uses
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.i
  br i1 %i.bh, label %bb.j, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.i
  br i1 %i.bh, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !102 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %.not21.i28 = icmp eq i64 %i.az, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.k, !prof !97

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bj, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bl = load i8, ptr %i.bf, align 1, !tbaa !101
  store i8 %i.bl, ptr %i.bc, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bf, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !102 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !102
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !100
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  store i8 0, ptr %i.bp, align 1, !tbaa !101
  %.pre.i30 = load ptr, ptr %i.ba, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !tbaa !101
  store <2 x i64> %i.bs, ptr %i.bq, align 8, !tbaa !101
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25
  %i.bt = load i64, ptr %i.bd, align 8, !tbaa !101
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bw = load <2 x i64>, ptr %i.bu, align 8, !tbaa !101
  store <2 x i64> %i.bw, ptr %i.bv, align 8, !tbaa !101
  %.not.i27 = icmp eq ptr %i.bc, null
  br i1 %.not.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !100
  store i64 %i.bt, ptr %i.bg, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26, %.thread.i32
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29, %bb.n, %bb.o
  %i.bx = phi ptr [ %.pre.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29 ], [ %i.bc, %bb.n ], [ %i.bg, %bb.o ], [ %i.bf, %bb.j ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !102
  store i8 0, ptr %i.bx, align 1, !tbaa !101
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, %bb.h, %._crit_edge
  %.1 = phi i64 [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33 ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  store ptr %i.bz, ptr %4, align 8, !tbaa !96
  %i.ca = load ptr, ptr %3, align 8, !tbaa !100   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !102 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34: ; preds = %bb.p
  store ptr %i.ca, ptr %4, align 8, !tbaa !100
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !101
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !101
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34
  %i.ci = phi i64 [ %i.ce, %bb.q ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !102
  store ptr %i.cb, ptr %3, align 8, !tbaa !100
  store i64 0, ptr %i.cj, align 8, !tbaa !102
  store i8 0, ptr %i.cb, align 8, !tbaa !101
  %i.cl = icmp sgt i64 %.1, %1
  br i1 %i.cl, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %.010.i = phi i64 [ %.0911.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 4 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 5 uses
  %i.cm = getelementptr inbounds [32 x i8], ptr %0, i64 %.0911.i ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i64 0, ptr %i.b, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.cn = invoke noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef null)
          to label %.noexc unwind label %bb.af    ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.co = invoke noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef null)
          to label %.noexc35 unwind label %bb.af  ; 0 uses

.noexc35:                                         ; preds = %.noexc
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !357
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !357
  %i.cr = icmp ult i64 %i.cp, %i.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.cr, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %.noexc35
  %i.cs = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i ; 8 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !100 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !100 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 4 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx                ; 2 uses
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  br i1 %i.cy, label %bb.s, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.r
  br i1 %i.cy, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !102 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %.not21.i.i = icmp eq i64 %.0911.i, %.010.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.t, !prof !97

bb.t:                                             ; preds = %bb.s
  switch i64 %i.da, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !101
  store i8 %i.dc, ptr %i.ct, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cw, i64 %i.da, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.dd = load i64, ptr %i.cz, align 8, !tbaa !102 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
end_hunk_3
begin_hunk_4_@_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_SH_RT0_:bb.a

_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1, %bb.e
  %i.aq = phi i64 [ %.pre18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1 ], [ %i.am, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !102
  store ptr %i.a, ptr %4, align 8, !tbaa !100
  store i64 0, ptr %i.l, align 8, !tbaa !102
  store i8 0, ptr %i.a, align 8, !tbaa !101
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.at = load i32, ptr %i.m, align 8, !tbaa !134
  store i32 %i.at, ptr %i.as, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !96
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !100 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.r
  br i1 %i.ax, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

bb.f:                                             ; preds = %_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i2
  %i.ay = load i64, ptr %i.ac, align 8, !tbaa !102 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.ba, i1 false)
  br label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i2
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !100
  %i.bb = load i64, ptr %i.r, align 8, !tbaa !101
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !101
  %.pre19 = load i64, ptr %i.ac, align 8, !tbaa !102
  br label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit4

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit4: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  %i.bc = phi i64 [ %i.ay, %bb.f ], [ %.pre19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !102
  store ptr %i.r, ptr %i.p, align 8, !tbaa !100
  store i64 0, ptr %i.ac, align 8, !tbaa !102
  store i8 0, ptr %i.r, align 8, !tbaa !101
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_less_iterEEvT_T0_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ai, ptr noundef nonnull align 8 %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit4
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !100 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.av
  br i1 %i.bf, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5: ; preds = %bb.g
  %i.bg = load i64, ptr %i.av, align 8, !tbaa !101
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #38
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5
  %i.bi = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aj
  br i1 %i.bj, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.bk = load i64, ptr %i.aj, align 8, !tbaa !101
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #38
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !100 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.r
  br i1 %i.bn, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit
  %i.bo = load i64, ptr %i.r, align 8, !tbaa !101
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #38
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i7

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i7: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6
  %i.bq = load ptr, ptr %4, align 8, !tbaa !100   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.a
  br i1 %i.br, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i8: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i7
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !101
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #38
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit11

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit11: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.h:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit4
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #36
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.bu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_less_iterEEvT_T0_SI_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 4 uses
  %5 = alloca %"class.std::tuple.592", align 8    ; 11 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2
  br label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit, %bb.a
  %.0 = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit ] ; 8 uses
  %i.c = icmp slt i64 %.0, %i.b
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit
  %i.d = shl i64 %.0, 1                           ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [72 x i8], ptr %0, i64 %i.e ; 5 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [72 x i8], ptr %0, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !102  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !102  ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.r = tail call i32 @memcmp(ptr noundef %i.q, ptr noundef %i.p, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #36 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i

_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %i.s = icmp slt i32 %i.r, 0
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit

_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.t = sub i64 %i.j, %i.l
  %i.u = icmp eq i64 %i.j, %i.l
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit

bb.c:                                             ; preds = %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.y = load i32, ptr %i.w, align 8, !tbaa !134  ; 2 uses
  %i.z = load i32, ptr %i.x, align 8, !tbaa !134  ; 2 uses
  %i.aa = icmp eq i32 %i.y, %i.z
  %i.ab = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !102 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ad) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.aj = tail call i32 @memcmp(ptr noundef %i.ai, ptr noundef %i.ah, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #36 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_EES8_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.ak = sub i64 %i.ad, %i.af
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_EES8_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i

_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_EES8_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.al = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit: ; preds = %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i, %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i, %bb.c, %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_EES8_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i
  %.sroa.06.0.i.i.i = phi i1 [ %i.v, %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i ], [ %i.al, %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_EES8_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i ], [ %i.ab, %bb.c ], [ %i.s, %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i ]
  %spec.select = select i1 %.sroa.06.0.i.i.i, i64 %i.g, i64 %i.e ; 2 uses
  %i.am = getelementptr inbounds [72 x i8], ptr %0, i64 %spec.select
  %i.an = getelementptr inbounds [72 x i8], ptr %0, i64 %.0
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EE9_M_assignIS5_JiS5_EEEvOS_ILm0EJT_DpT0_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %i.am)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit unwind label %bb.e, !llvm.loop !3492

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #39
  unreachable

bb.f:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit
  %6 = trunc i64 %2 to i1
  br i1 %6, label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = add nsw i64 %2, -2
  %i.ar = ashr exact i64 %i.aq, 1
  %i.as = icmp eq i64 %.0, %i.ar
  br i1 %i.as, label %bb.h, label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit25

bb.h:                                             ; preds = %bb.g
  %i.at = shl nsw i64 %.0, 1
  %i.au = or disjoint i64 %i.at, 1                ; 2 uses
  %i.av = getelementptr inbounds [72 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds [72 x i8], ptr %0, i64 %.0
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EE9_M_assignIS5_JiS5_EEEvOS_ILm0EJT_DpT0_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.av)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit25 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #39
  unreachable

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit25: ; preds = %bb.h, %bb.g, %bb.f
  %.1 = phi i64 [ %.0, %bb.f ], [ %.0, %bb.g ], [ %i.au, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.az, ptr %5, align 8, !tbaa !96
  %i.ba = load ptr, ptr %3, align 8, !tbaa !100   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit25
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !102 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit25
  store ptr %i.ba, ptr %5, align 8, !tbaa !100
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !101
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !101
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !102
  br label %_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i

_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.j
  %i.bi = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.be, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !102
  store ptr %i.bb, ptr %3, align 8, !tbaa !100
  store i64 0, ptr %i.bj, align 8, !tbaa !102
  store i8 0, ptr %i.bb, align 8, !tbaa !101
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !134
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !134
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !96
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !100 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.k:                                             ; preds = %_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !102 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm1EJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !100
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !101
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !101
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.pre39 = load i64, ptr %.phi.trans.insert38, align 8, !tbaa !102
  br label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bz = phi i64 [ %i.bv, %bb.k ], [ %.pre39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !102
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !100
  store i64 0, ptr %i.ca, align 8, !tbaa !102
  store i8 0, ptr %i.bs, align 8, !tbaa !101
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_less_valEEvT_T0_SI_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !100 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bq
  br i1 %i.cd, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %bb.l
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !101
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #38
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26
  %i.cg = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.az
  br i1 %i.ch, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.ci = load i64, ptr %i.az, align 8, !tbaa !101
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #38
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.m:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEC2EOS6_.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.ck
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_less_valEEvT_T0_SI_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit: ; preds = %bb.e, %bb.a
  %.0 = phi i64 [ %1, %bb.a ], [ %.09, %bb.e ]    ; 4 uses
  %.09.in = add nsw i64 %.0, -1
  %.09 = sdiv i64 %.09.in, 2                      ; 2 uses
  %i.e = icmp sgt i64 %.0, %2
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS5_EEaSEOS6_.exit
  %i.f = getelementptr inbounds [72 x i8], ptr %0, i64 %.09 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !102  ; 3 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.h) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #36 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i

_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %.critedge

_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.p = sub i64 %i.h, %i.i
  %i.q = icmp eq i64 %i.h, %i.i
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit

bb.c:                                             ; preds = %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !134  ; 2 uses
  %i.u = load i32, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.v = icmp eq i32 %i.t, %i.u
  %i.w = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_EESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !102  ; 2 uses
  %i.z = load i64, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ab = load ptr, ptr %3, align 8, !tbaa !100
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.ad = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #36 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS7_EES8_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.ae = sub i64 %i.y, %i.z
end_hunk_4
