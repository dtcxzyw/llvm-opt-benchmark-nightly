Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/hash_linklist_rep?download=true
inline.NumInlined: 775
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep11GetIteratorEPNS_5ArenaE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !24
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.t:                                             ; preds = %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.t
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !24
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.s ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.co, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %._crit_edge
  %i.cu = icmp eq ptr %1, null
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cv = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %1, align 16, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef ptr %i.cy(ptr noundef nonnull align 16 dereferenceable(2288) %1, i64 noundef 72, i64 noundef 0, ptr noundef null)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink115 = phi ptr [ %i.cv, %bb.v ], [ %i.cz, %bb.w ] ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_115HashLinkListRep16FullListIteratorE, i64 16), ptr %.sink115, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %.sink115, i64 8
  store ptr %i.i, ptr %i.da, align 8, !tbaa !123
  %i.db = getelementptr inbounds nuw i8, ptr %.sink115, i64 16
  store ptr null, ptr %i.db, align 8, !tbaa !124
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink115, i64 24
  store ptr %i.i, ptr %i.dc, align 8, !tbaa !125
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink115, i64 32
  store ptr %i.b, ptr %i.dd, align 8, !tbaa !126
  %i.de = getelementptr inbounds nuw i8, ptr %.sink115, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %.sink115, i64 56 ; 2 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink115, i64 48
  store i64 0, ptr %i.dg, align 8, !tbaa !39
  store i8 0, ptr %i.df, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.sink115

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn46.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.bq, %bb.j ], [ %lpad.loopexit.split-lp123, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %.loopexit.split-lp.loopexit.split-lp, %bb.d
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.d ], [ %.pn46.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %i.bc, %bb.e ]
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep24GetDynamicPrefixIteratorEPNS_5ArenaE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 16, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 16 dereferenceable(2288) %1, i64 noundef 48, i64 noundef 0, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink12 = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.b ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sink12, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !131
  %i.h = getelementptr inbounds nuw i8, ptr %.sink12, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorE, i64 16), ptr %.sink12, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %.sink12, i64 32
  store ptr %0, ptr %i.i, align 8, !tbaa !177
  %i.j = getelementptr inbounds nuw i8, ptr %.sink12, i64 40
  store ptr null, ptr %i.j, align 8, !tbaa !178
  ret ptr %.sink12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb11MemTableRep24IsMergeOperatorSupportedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb11MemTableRep19IsSnapshotSupportedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 true
}

declare { ptr, i64 } @_ZNK7rocksdb11MemTableRep7UserKeyEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE6InsertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.i = load ptr, ptr %1, align 8, !tbaa !95
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h, ptr noundef %i.i), !inline_history !179
  %i.n = icmp slt i32 %i.m, 0
  %.pre54 = load ptr, ptr %i.a, align 8, !tbaa !113 ; 3 uses
  br i1 %i.n, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread_crit_edge

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread_crit_edge: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit
  %.pre52 = load ptr, ptr %.pre54, align 8, !tbaa !114
  br label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread_crit_edge, %bb.a
  %i.o = phi ptr [ %.pre52, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread_crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = phi ptr [ %.pre54, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread_crit_edge ], [ %i.b, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.s = icmp eq ptr %i.o, %i.r
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread
  %.not.i30 = icmp eq ptr %i.o, null
  br i1 %.not.i30, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread.thread, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread.thread: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = add nsw i32 %i.w, -1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.split.i.preheader

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.ac = load ptr, ptr %1, align 8, !tbaa !95
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab, ptr noundef %i.ac), !inline_history !179
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread_crit_edge

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread_crit_edge: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31
  %.pre53 = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread

bb.c:                                             ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !112 ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %iter.check, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit

iter.check:                                       ; preds = %bb.c
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !113 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 2 uses
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !114 ; 3 uses
  %i.am = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp ult i32 %i.aj, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check69 = icmp ult i32 %i.aj, 17
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.am, 12
  %n.vec = and i64 %i.am, -16                     ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x ptr> poison, ptr %.pre, i64 0
  %broadcast.splat = shufflevector <4 x ptr> %broadcast.splatinsert, <4 x ptr> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store <4 x ptr> %broadcast.splat, ptr %i.aq, align 8, !tbaa !114
  store <4 x ptr> %broadcast.splat, ptr %i.ar, align 8, !tbaa !114
  store <4 x ptr> %broadcast.splat, ptr %i.as, align 8, !tbaa !114
  store <4 x ptr> %broadcast.splat, ptr %i.at, align 8, !tbaa !114
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.am, -4                    ; 3 uses
  %i.av = or disjoint i64 %n.vec70, 1
  %broadcast.splatinsert71 = insertelement <4 x ptr> poison, ptr %.pre, i64 0
  %broadcast.splat72 = shufflevector <4 x ptr> %broadcast.splatinsert71, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <4 x ptr> %broadcast.splat72, ptr %i.ax, align 8, !tbaa !114
  %index.next74 = add nuw i64 %index73, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %i.am, %n.vec70
  br i1 %cmp.n75, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  store ptr %.pre, ptr %i.az, align 8, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit, label %vec.epilog.scalar.ph, !llvm.loop !182

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread_crit_edge, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit
  %i.ba = phi ptr [ %.pre53, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31._ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread_crit_edge ], [ %.pre54, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !110 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load atomic i32, ptr %i.bd monotonic, align 8
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %i.ba, null
  br i1 %.not28.i, label %.split.us.i.outer, label %.split.i.preheader

.split.i.preheader:                               ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread.thread, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread
  %i.bh = phi ptr [ %i.y, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread.thread ], [ %i.bg, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread ]
  %i.bi = phi i32 [ %i.x, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread.thread ], [ %i.bf, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread ]
  %i.bj = phi ptr [ %i.u, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread.thread ], [ %i.bc, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread ]
  %i.bk = phi ptr [ %i.p, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread.thread ], [ %i.ba, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread ]
  br label %.split.i.outer

.split.us.i:                                      ; preds = %.split.us.i.outer, %bb.d
  %.018.us.i = phi i32 [ %i.by, %bb.d ], [ %.018.us.i.ph, %.split.us.i.outer ] ; 4 uses
  %.017.us.i = phi ptr [ %i.bn, %bb.d ], [ %.017.us.i.ph, %.split.us.i.outer ] ; 2 uses
  %i.bl = sext i32 %.018.us.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bl
  %i.bn = load atomic ptr, ptr %i.bm acquire, align 8 ; 5 uses
  %.not.us.i = icmp eq ptr %i.bn, %.017.us.i
  %.not.i.us.i = icmp eq ptr %i.bn, null
  %or.cond.us.i = or i1 %.not.us.i, %.not.i.us.i
  br i1 %or.cond.us.i, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i: ; preds = %.split.us.i
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !117
  %i.bq = load ptr, ptr %1, align 8, !tbaa !95
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bp, ptr noundef %i.bq), !inline_history !183
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.split.us.i.outer, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i, !llvm.loop !6

.split.us.i.outer:                                ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread
  %.021.us.i.ph = phi ptr [ %i.bc, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread ], [ %i.bn, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i ]
  %.018.us.i.ph = phi i32 [ %i.bf, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread ], [ %.018.us.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i ]
  %.017.us.i.ph = phi ptr [ null, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit31.thread ], [ %.017.us.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.021.us.i.ph, i64 8
  br label %.split.us.i

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i, %.split.us.i
  %i.bx = icmp eq i32 %.018.us.i, 0
  br i1 %i.bx, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i
  %i.by = add nsw i32 %.018.us.i, -1
  br label %.split.us.i, !llvm.loop !6

.split.i:                                         ; preds = %.split.i.outer, %bb.e
  %.018.i = phi i32 [ %i.cn, %bb.e ], [ %.018.i.ph, %.split.i.outer ] ; 4 uses
  %.017.i = phi ptr [ %i.cb, %bb.e ], [ %.017.i.ph, %.split.i.outer ] ; 2 uses
  %i.bz = sext i32 %.018.i to i64                 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.bz
  %i.cb = load atomic ptr, ptr %i.ca acquire, align 8 ; 5 uses
  %.not.i32 = icmp eq ptr %i.cb, %.017.i
  %.not.i.i = icmp eq ptr %i.cb, null
  %or.cond.i = or i1 %.not.i32, %.not.i.i
  br i1 %or.cond.i, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.i, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.i

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.i: ; preds = %.split.i
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !117
  %i.ce = load ptr, ptr %1, align 8, !tbaa !95
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef i32 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.cd, ptr noundef %i.ce), !inline_history !183
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.split.i.outer, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.i, !llvm.loop !6

.split.i.outer:                                   ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.i, %.split.i.preheader
  %.021.i.ph = phi ptr [ %i.bj, %.split.i.preheader ], [ %i.cb, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.i ] ; 2 uses
  %.018.i.ph = phi i32 [ %i.bi, %.split.i.preheader ], [ %.018.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.i ]
  %.017.i.ph = phi ptr [ null, %.split.i.preheader ], [ %.017.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8
  br label %.split.i

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.i: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.i, %.split.i
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bz
  store ptr %.021.i.ph, ptr %i.cl, align 8, !tbaa !114
  %i.cm = icmp eq i32 %.018.i, 0
  br i1 %i.cm, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.i
  %i.cn = add nsw i32 %.018.i, -1
  br label %.split.i, !llvm.loop !6

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.i, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.co = tail call noundef ptr @_ZN7rocksdb6Random14GetTLSInstanceEv() ; 2 uses
  %i.cp = load i16, ptr %0, align 8, !tbaa !106   ; 2 uses
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = icmp ugt i16 %i.cp, 1
  br i1 %i.cr, label %.lr.ph.i, label %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12RandomHeightEv.exit

.lr.ph.i:                                         ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !108
  %.promoted.i = load i32, ptr %i.co, align 4, !tbaa !195
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %spec.select.i7.i = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %spec.select.i.i, %bb.g ]
  %.04.i = phi i32 [ 1, %.lr.ph.i ], [ %i.dd, %bb.g ] ; 2 uses
  %i.cu = zext i32 %spec.select.i7.i to i64
  %i.cv = mul nuw nsw i64 %i.cu, 16807            ; 2 uses
  %i.cw = lshr i64 %i.cv, 31
  %i.cx = and i64 %i.cv, 2147483647
  %i.cy = add nuw nsw i64 %i.cw, %i.cx
  %i.cz = trunc nuw i64 %i.cy to i32              ; 3 uses
  %i.da = icmp slt i32 %i.cz, 0
  %i.db = add i32 %i.cz, -2147483647
  %spec.select.i.i = select i1 %i.da, i32 %i.db, i32 %i.cz ; 3 uses
  %i.dc = icmp ult i32 %spec.select.i.i, %i.ct
  br i1 %i.dc, label %bb.g, label %.critedge.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.dd = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dd, %i.cq
  br i1 %exitcond.not.i, label %.critedge.sink.split.i, label %bb.f, !llvm.loop !184

.critedge.sink.split.i:                           ; preds = %bb.g, %bb.f
  %.0.lcssa.ph.i = phi i32 [ %i.cq, %bb.g ], [ %.04.i, %bb.f ]
  store i32 %spec.select.i.i, ptr %i.co, align 4, !tbaa !195
  br label %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12RandomHeightEv.exit

_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12RandomHeightEv.exit: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit, %.critedge.sink.split.i
  %.0.lcssa.i = phi i32 [ 1, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE12FindLessThanERKS2_PPNS7_4NodeE.exit ], [ %.0.lcssa.ph.i, %.critedge.sink.split.i ] ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD2Ev:bb.a
_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #26, !inline_history !203
  br label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD2Ev.exit

_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIterator5ValidEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.in.in = select i1 %.not, ptr %i.d, ptr %i.c
  %.0.in = load ptr, ptr %.0.in.in, align 8, !tbaa !37
  %.0 = icmp ne ptr %.0.in, null
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIterator3keyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIterator4NextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  store ptr %i.f, ptr %i.c, align 8, !tbaa !124
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !135
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  store ptr %i.i, ptr %i.g, align 8, !tbaa !135
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIterator4SeekERKNS_5SliceEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::IterKey", align 8  ; 28 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213, !nonnull !75, !align !98
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load ptr, ptr %i.c, align 8, !tbaa !86  ; 2 uses
  %.val18 = load ptr, ptr %1, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val19 = load i64, ptr %i.d, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.e = add i64 %.val19, -8
  store ptr %.val18, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %.val, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call { ptr, i64 } %i.i(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !2 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !213, !nonnull !75, !align !98 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !84
  %i.o = call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.k, i64 noundef %i.l)
  %i.p = call noundef i64 @llvm.umulh.i64(i64 %.val.i, i64 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val4.i = load ptr, ptr %i.q, align 8, !tbaa !91
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val4.i, i64 %i.p ; 4 uses
  %i.s = load atomic ptr, ptr %i.r acquire, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !136  ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i: ; preds = %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit

_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.x = load atomic ptr, ptr %i.r acquire, align 8 ; 2 uses
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load atomic ptr, ptr %i.r acquire, align 8 ; 3 uses
  %i.ab = load atomic ptr, ptr %i.aa monotonic, align 8
  %i.ac = icmp eq ptr %i.ab, %i.aa
  br i1 %i.ac, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit: ; preds = %bb.d
  %i.ad = load atomic ptr, ptr %i.aa acquire, align 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48: ; preds = %bb.c, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit
  %.1.i51 = phi ptr [ %i.ad, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit ], [ %i.x, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !136
  %.not.i.i22 = icmp eq ptr %i.af, null
  br i1 %.not.i.i22, label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i23

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i23: ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24

_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24: ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48, %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1.i51, ptr %i.ag, align 8, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !131
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24
  %.010.i.i = phi ptr [ %.1.i51, %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24 ], [ %i.am, %bb.f ] ; 4 uses
  %i.al = icmp eq ptr %.010.i.i, null
  br i1 %i.al, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load atomic ptr, ptr %.010.i.i acquire, align 8
  %.val.i.i = load ptr, ptr %i.ak, align 8, !tbaa !97 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.ao = load ptr, ptr %.val.i.i, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i, ptr noundef nonnull %i.an, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !204
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.e, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit

_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit: ; preds = %bb.e, %bb.f
  store ptr %.010.i.i, ptr %i.ah, align 8, !tbaa !135
  br label %bb.ab

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread: ; preds = %bb.d, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit
  %i.at = load atomic ptr, ptr %i.r acquire, align 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !136 ; 3 uses
  %.not52 = icmp eq ptr %i.av, null
  br i1 %.not52, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread
  %i.aw = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !123
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !124
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !136 ; 2 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !136
  %.not.i.i25 = icmp eq ptr %i.az, null
  br i1 %.not.i.i25, label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i26

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i26: ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27

bb.h:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !123
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !124
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27

_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27: ; preds = %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i26, %bb.g, %bb.h
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !136 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !123 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !110
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 8
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.022.i.i = phi ptr [ %i.bf, %bb.i ], [ %.123.i.i, %bb.l ] ; 2 uses
  %.019.i.i = phi i32 [ %i.bi, %bb.i ], [ %.120.i.i, %bb.l ] ; 3 uses
  %.018.i.i = phi ptr [ null, %bb.i ], [ %.1.i.i, %bb.l ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 8
  %i.bl = sext i32 %.019.i.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load atomic ptr, ptr %i.bm acquire, align 8 ; 6 uses
  %i.bo = icmp eq ptr %i.bn, null
  %i.bp = icmp eq ptr %i.bn, %.018.i.i
  %or.cond29.i.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond29.i.i, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !117
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef %i.br, ptr noundef nonnull %2), !inline_history !5 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %bb.j
  %i.bx = phi i32 [ %i.bv, %bb.k ], [ 1, %bb.j ]  ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  %i.bz = icmp eq i32 %.019.i.i, 0
  %or.cond.i.i = and i1 %i.bz, %i.by
  br i1 %or.cond.i.i, label %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %.thread.i.i
  %i.ca = icmp sgt i32 %i.bx, -1                  ; 3 uses
  %.123.i.i = select i1 %i.ca, ptr %.022.i.i, ptr %i.bn
  %i.cb = sext i1 %i.ca to i32
  %.120.i.i = add nsw i32 %.019.i.i, %i.cb
  %.1.i.i = select i1 %i.ca, ptr %i.bn, ptr %.018.i.i
  br label %bb.j, !llvm.loop !4

_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit: ; preds = %bb.k, %.thread.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bn, ptr %i.cc, align 8, !tbaa !124
  br label %bb.ab

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store ptr %i.cd, ptr %4, align 8, !tbaa !139
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !140
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !141
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 39, ptr %i.cg, align 8, !tbaa !142
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 71 ; 2 uses
  store i8 1, ptr %i.ch, align 1, !tbaa !214
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !143
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 39, ptr %i.ck, align 8, !tbaa !144
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr @.str, ptr %i.cl, align 8, !tbaa !119
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %i.cm, align 8, !tbaa !120
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %4, i64 144
  store ptr @.str, ptr %.ptr.1.i.i, align 8, !tbaa !119
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 0, ptr %i.cn, align 8, !tbaa !120
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %4, i64 160
  store ptr @.str, ptr %.ptr.2.i.i, align 8, !tbaa !119
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 0, ptr %i.co, align 8, !tbaa !120
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %4, i64 176
  store ptr @.str, ptr %.ptr.3.i.i, align 8, !tbaa !119
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 0, ptr %i.cp, align 8, !tbaa !120
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr @.str, ptr %.ptr.4.i.i, align 8, !tbaa !119
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 0, ptr %i.cq, align 8, !tbaa !120
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !120 ; 5 uses
  %i.cs = icmp ugt i64 %i.cr, 127
  br i1 %i.cs, label %.lr.ph.i.i, label %_ZN7rocksdb12VarintLengthEm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %.06.i.i = phi i16 [ %i.cu, %.lr.ph.i.i ], [ 1, %bb.m ]
  %.045.i.i = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.cr, %bb.m ] ; 2 uses
  %i.ct = lshr i64 %.045.i.i, 7
  %i.cu = add nuw nsw i16 %.06.i.i, 1             ; 2 uses
  %i.cv = icmp ugt i64 %.045.i.i, 16383
  br i1 %i.cv, label %.lr.ph.i.i, label %_ZN7rocksdb12VarintLengthEm.exit.loopexit.i, !llvm.loop !205

_ZN7rocksdb12VarintLengthEm.exit.loopexit.i:      ; preds = %.lr.ph.i.i
  %i.cw = zext nneg i16 %i.cu to i64
  br label %_ZN7rocksdb12VarintLengthEm.exit.i

_ZN7rocksdb12VarintLengthEm.exit.i:               ; preds = %_ZN7rocksdb12VarintLengthEm.exit.loopexit.i, %bb.m
  %.0.lcssa.i.i = phi i64 [ 1, %bb.m ], [ %i.cw, %_ZN7rocksdb12VarintLengthEm.exit.loopexit.i ]
  %i.cx = add i64 %.0.lcssa.i.i, %i.cr            ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, 39
  br i1 %i.cy, label %bb.n, label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i

bb.n:                                             ; preds = %_ZN7rocksdb12VarintLengthEm.exit.i
  invoke void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %4, i64 noundef %i.cx)
          to label %._ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %4, align 8, !tbaa !139
  br label %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i

_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i: ; preds = %._ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i_crit_edge, %_ZN7rocksdb12VarintLengthEm.exit.i
  %i.cz = phi ptr [ %.pre, %._ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i_crit_edge ], [ %i.cd, %_ZN7rocksdb12VarintLengthEm.exit.i ]
  %i.da = trunc i64 %i.cr to i32
  %i.db = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef %i.cz, i32 noundef %i.da)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZN7rocksdb7IterKey21EnlargeBufferIfNeededEm.exit.i
  %i.dc = load ptr, ptr %1, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.dc, i64 %i.cr, i1 false)
  %i.dd = load ptr, ptr %4, align 8, !tbaa !139   ; 2 uses
  store ptr %i.dd, ptr %i.ce, align 8, !tbaa !140
  store i8 1, ptr %i.ch, align 1, !tbaa !214
  %i.de = load ptr, ptr %i.au, align 8, !tbaa !136 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !123 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !110
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dj = load atomic i32, ptr %i.di monotonic, align 8
  %i.dk = add nsw i32 %i.dj, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.022.i.i29 = phi ptr [ %i.dh, %bb.o ], [ %.123.i.i35, %bb.r ] ; 2 uses
  %.019.i.i30 = phi i32 [ %i.dk, %bb.o ], [ %.120.i.i36, %bb.r ] ; 3 uses
  %.018.i.i31 = phi ptr [ null, %bb.o ], [ %.1.i.i37, %bb.r ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.022.i.i29, i64 8
  %i.dn = sext i32 %.019.i.i30 to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load atomic ptr, ptr %i.do acquire, align 8 ; 6 uses
  %i.dq = icmp eq ptr %i.dp, null
  %i.dr = icmp eq ptr %i.dp, %.018.i.i31
  %or.cond29.i.i32 = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond29.i.i32, label %.thread.i.i33, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !117
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef i32 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt, ptr noundef %i.dd)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !206 ; 2 uses

end_hunk_1
