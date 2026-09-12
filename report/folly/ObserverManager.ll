Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ObserverManager?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2581
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5folly13hazptr_domainISt6atomicE23extract_retired_objectsEPPNS_10hazptr_objIS1_EES6_:.preheader

.noexc.i.i:                                       ; preds = %bb.k
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc.i.i
  %i.bi = tail call ptr @__errno_location() #41
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !155
  %i.bk = icmp eq i32 %i.bj, 4
  br i1 %i.bk, label %bb.k, label %bb.m, !llvm.loop !24

bb.m:                                             ; preds = %bb.l, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.e

bb.n:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #39
  unreachable

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E7pop_allEb.exit: ; preds = %bb.h, %bb.i
  %i.bn = and i64 %i.au, -2                       ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !613
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %bb.o, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit

bb.o:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E7pop_allEb.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !639 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !639
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store atomic i64 0, ptr %i.at monotonic, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.012.i = phi i64 [ 0, %bb.p ], [ -1, %bb.q ]
  br label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i: ; preds = %bb.r, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i
  %i.bu = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.bv = add i64 %.012.i, %i.bu
  %i.bw = cmpxchg weak ptr %i.ao, i64 %i.bu, i64 %i.bv acq_rel acquire, align 8
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.bx, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E7pop_allEb.exit, %bb.c
  %.3 = phi i1 [ %.227, %bb.c ], [ false, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E7pop_allEb.exit ], [ %.227, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !3209
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE16load_hazptr_valsEv(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastSet") align 8 %0, ptr noundef nonnull align 64 dereferenceable(449) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.49", align 8     ; 3 uses
  %i.a = alloca [8 x ptr], align 16               ; 12 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !632
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load atomic i32, ptr %i.d monotonic, align 8
  %i.f = load atomic ptr, ptr %1 acquire, align 64 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %._crit_edge76, label %_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE11as_ptr_spanEm.exit

_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE11as_ptr_spanEm.exit: ; preds = %bb.b
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.i = zext nneg i32 %.sroa.speculated to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !162
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l) ; 4 uses
  %.not2971 = icmp samesign ult i64 %i.m, 8
  br i1 %.not2971, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE11as_ptr_spanEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %.preheader.preheader

._crit_edge:                                      ; preds = %bb.c, %_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE11as_ptr_spanEm.exit
  %i.v = and i64 %i.m, 2147483640
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v ; 2 uses
  %i.x = shl nuw nsw i64 %i.m, 3
  %.idx = and i64 %i.x, 56                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.z = icmp samesign eq i64 %.idx, 0
  br i1 %i.z, label %._crit_edge76, label %.lr.ph75

.preheader.preheader:                             ; preds = %.lr.ph, %bb.c
  %i.aa = phi i64 [ 8, %.lr.ph ], [ %i.az, %bb.c ] ; 2 uses
  %.02672 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.02672 ; 8 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !644
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8
  store ptr %i.ad, ptr %i.a, align 16, !tbaa !645
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !644
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !645
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !644
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 8
  store ptr %i.aj, ptr %i.p, align 16, !tbaa !645
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !644
  %i.am = load atomic ptr, ptr %i.al monotonic, align 8
  store ptr %i.am, ptr %i.q, align 8, !tbaa !645
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !644
  %i.ap = load atomic ptr, ptr %i.ao monotonic, align 8
  store ptr %i.ap, ptr %i.r, align 16, !tbaa !645
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !644
  %i.as = load atomic ptr, ptr %i.ar monotonic, align 8
  store ptr %i.as, ptr %i.s, align 8, !tbaa !645
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !644
  %i.av = load atomic ptr, ptr %i.au monotonic, align 8
  store ptr %i.av, ptr %i.t, align 16, !tbaa !645
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !644
  %i.ay = load atomic ptr, ptr %i.ax monotonic, align 8
  store ptr %i.ay, ptr %i.u, align 8, !tbaa !645
  br label %.preheader

bb.c:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.az = add nuw nsw i64 %i.aa, 8                ; 2 uses
  %.not29 = icmp samesign ugt i64 %i.az, %i.m
  br i1 %.not29, label %._crit_edge, label %.preheader.preheader, !llvm.loop !3210

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %.024.idx70 = phi i64 [ %.024.add, %.loopexit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.024.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.024.idx70
  %i.ba = load ptr, ptr %.024.ptr, align 8, !tbaa !645 ; 4 uses
  %.not32 = icmp eq ptr %i.ba, null
  br i1 %.not32, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = zext i64 %i.bb to i128
  %i.bd = mul nuw i128 %i.bc, 14181476777654086739
  %i.be = lshr i128 %i.bd, 64
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = mul i64 %i.bb, -4265267296055464877
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, -4265267296055464877     ; 2 uses
  %i.bj = lshr i64 %i.bi, 14
  %i.bk = and i64 %i.bj, 255
  %i.bl = lshr i64 %i.bi, 22                      ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1) ; 4 uses
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !636, !noalias !3217 ; 3 uses
  %i.bn = lshr i64 %i.bm, 8                       ; 3 uses
  %.not.i = icmp eq i64 %i.bn, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !632, !noalias !3217 ; 3 uses
  br i1 %.not.i, label %.thread67.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 1
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i.i.i to i8
  %i.br = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bt = and i64 %i.bm, 255                      ; 4 uses
  %i.bu = shl nuw i64 1, %i.bt
  %notmask.i.i = shl nsw i64 -1, %i.bt
  %i.bv = xor i64 %notmask.i.i, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.024.i80.i = phi i64 [ %i.bu, %bb.e ], [ %i.ct, %bb.h ]
  %.026.i79.i = phi i64 [ %i.bl, %bb.e ], [ %i.cu, %bb.h ] ; 2 uses
  %i.bw = and i64 %.026.i79.i, %i.bv
  %i.bx = shl nuw nsw i64 %i.bw, 7
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.bx ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1), !noalias !3217
  %i.ca = load <16 x i8>, ptr %i.by, align 16, !noalias !3217 ; 2 uses
  %i.cb = icmp eq <16 x i8> %i.ca, %i.bs
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i32 %i.cd, 16383
  %.not69.i = icmp eq i32 %i.ce, 0
  %i.cf = extractelement <16 x i8> %i.ca, i64 15
  br i1 %.not69.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.cg = icmp ne ptr %i.by, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cg)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i, %.preheader.i
  %.sroa.042.0.i = phi i32 [ %i.cq, %.critedge.i.i ], [ %i.cd, %.preheader.i ] ; 4 uses
  %i.ch = icmp ne i32 %.sroa.042.0.i, 0
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0.i, i1 true)
  %i.cj = shl nuw nsw i32 %i.ci, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.by, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !645, !noalias !3217
  %i.co = icmp eq ptr %i.ba, %i.cn
  br i1 %i.co, label %.loopexit, label %.critedge.i.i, !prof !646

.critedge.i.i:                                    ; preds = %bb.g
  %i.cp = add nsw i32 %.sroa.042.0.i, -1
  %i.cq = and i32 %i.cp, %.sroa.042.0.i           ; 2 uses
  %i.cr = and i32 %i.cq, 16382
  %.not70.i = icmp eq i32 %i.cr, 0
  br i1 %.not70.i, label %.loopexit.i, label %bb.g, !llvm.loop !25

.loopexit.i:                                      ; preds = %.critedge.i.i, %bb.f
  %i.cs = icmp eq i8 %i.cf, 0
  br i1 %i.cs, label %.thread67.i, label %bb.h, !prof !646

bb.h:                                             ; preds = %.loopexit.i
  %i.ct = add i64 %.024.i80.i, -1                 ; 2 uses
  %i.cu = add i64 %i.bp, %.026.i79.i
  %.not.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i, label %.thread67.i, label %bb.f, !llvm.loop !26

.thread67.i:                                      ; preds = %bb.h, %.loopexit.i, %bb.d
  %.pre-phi91.i = phi i64 [ %i.bm, %bb.d ], [ %i.bt, %.loopexit.i ], [ %i.bt, %bb.h ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !625, !noalias !3217
  %i.cx = and i8 %i.cw, 15
  %i.cy = zext nneg i8 %i.cx to i64               ; 2 uses
  %i.cz = shl i64 %i.cy, %.pre-phi91.i            ; 2 uses
  %.not.i30.i = icmp ult i64 %i.bn, %i.cz
  br i1 %.not.i30.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i, label %bb.i

bb.i:                                             ; preds = %.thread67.i
  %i.da = shl nuw i64 1, %.pre-phi91.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bn, i64 noundef %i.da, i64 noundef %i.cy, i64 noundef %i.cz)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.i
  %.pre87.i = load i64, ptr %i.c, align 8, !tbaa !636, !noalias !3217
  %.pre88.i = load ptr, ptr %0, align 8, !tbaa !632, !noalias !3217
  %.pre89.i = and i64 %.pre87.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i: ; preds = %.noexc, %.thread67.i
  %.pre-phi.i = phi i64 [ %.pre-phi91.i, %.thread67.i ], [ %.pre89.i, %.noexc ]
  %i.db = phi ptr [ %.pre.i, %.thread67.i ], [ %.pre88.i, %.noexc ] ; 4 uses
  %notmask.i31.i = shl nsw i64 -1, %.pre-phi.i
  %i.dc = xor i64 %notmask.i31.i, -1              ; 2 uses
  %i.dd = and i64 %i.bl, %i.dc
  %i.de = shl nuw nsw i64 %i.dd, 7                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de ; 2 uses
  %i.dg = load <16 x i8>, ptr %i.df, align 16, !tbaa !625, !noalias !3217
  %i.dh = icmp eq <16 x i8> %i.dg, zeroinitializer
  %i.di = bitcast <16 x i1> %i.dh to i16
  %i.dj = and i16 %i.di, 16383                    ; 2 uses
  %.not71.i = icmp eq i16 %i.dj, 0
  br i1 %.not71.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i
  %i.dk = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 1
  %i.dl = or disjoint i64 %i.dk, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, %bb.j
  %i.dm = phi i64 [ %i.de, %bb.j ], [ %i.dt, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %.028.i = phi i64 [ %i.bl, %bb.j ], [ %i.dr, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 15 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !649, !noalias !3217 ; 2 uses
  %.not.i32.i = icmp eq i8 %i.dp, -2
  br i1 %.not.i32.i, label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = add i8 %i.dp, 1
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !649, !noalias !3217
  br label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.l, %bb.k
  %i.dr = add i64 %i.dl, %.028.i                  ; 2 uses
  %i.ds = and i64 %i.dr, %i.dc
  %i.dt = shl nuw nsw i64 %i.ds, 7                ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dt
  %i.dv = load <16 x i8>, ptr %i.du, align 16, !noalias !3217 ; 2 uses
  %i.dw = icmp eq <16 x i8> %i.dv, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %i.dy = and i16 %i.dx, 16383                    ; 2 uses
  %.not72.i = icmp eq i16 %i.dy, 0
  br i1 %.not72.i, label %bb.k, label %bb.m, !llvm.loop !27

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dt ; 2 uses
  %i.ea = extractelement <16 x i8> %i.dv, i64 14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 14
  %i.ec = add i8 %i.ea, 16
  store i8 %i.ec, ptr %i.eb, align 2, !tbaa !650, !noalias !3217
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i
  %.sroa.036.0.in.i = phi i16 [ %i.dj, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i ], [ %i.dy, %bb.m ]
  %.1.i = phi ptr [ %i.df, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i ], [ %i.dz, %bb.m ] ; 3 uses
  %i.ed = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in.i, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64              ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !625, !noalias !3217
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKvE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.29) #42, !noalias !3217
  unreachable

_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i: ; preds = %bb.n
  %i.ei = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i.i.i to i8
  store i8 %i.ei, ptr %i.ef, align 1, !tbaa !625, !noalias !3217
  %i.ej = shl nuw nsw i64 %i.ee, 3
  %i.ek = getelementptr i8, ptr %.1.i, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 16     ; 3 uses
  %i.em = icmp ne ptr %.1.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.em)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  store ptr %i.ba, ptr %i.el, align 8, !tbaa !645, !noalias !3217
  %i.en = lshr i64 %i.ee, 1
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = or i64 %i.en, %i.eo                     ; 2 uses
  %i.eq = load i64, ptr %i.n, align 8, !tbaa !651, !noalias !3217
  %i.er = icmp ult i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.p, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i

bb.p:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i
  store i64 %i.ep, ptr %i.n, align 8, !tbaa !162, !noalias !3217
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i: ; preds = %bb.p, %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i
  %i.es = load i64, ptr %i.c, align 8, !tbaa !636, !noalias !3217 ; 2 uses
  %i.et = and i64 %i.es, -256
  %i.eu = add i64 %i.et, 256
  %i.ev = and i64 %i.es, 255
  %i.ew = or disjoint i64 %i.eu, %i.ev
  store i64 %i.ew, ptr %i.c, align 8, !tbaa !636, !noalias !3217
  br label %.loopexit

bb.q:                                             ; preds = %bb.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.v

.loopexit:                                        ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i, %.preheader
  %.024.add = add nuw nsw i64 %.024.idx70, 8      ; 2 uses
  %.not31 = icmp eq i64 %.024.add, 64
  br i1 %.not31, label %bb.c, label %.preheader

._crit_edge76:                                    ; preds = %bb.u, %bb.b, %._crit_edge
  fence acquire
  br label %bb.w

.lr.ph75:                                         ; preds = %._crit_edge, %bb.u
  %.sroa.043.073 = phi ptr [ %i.fm, %bb.u ], [ %i.w, %._crit_edge ] ; 2 uses
  %i.ey = load ptr, ptr %.sroa.043.073, align 8, !tbaa !644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ez = load atomic ptr, ptr %i.ey monotonic, align 8 ; 3 uses
  store ptr %i.ez, ptr %i.b, align 8, !tbaa !645
  %.not30 = icmp eq ptr %i.ez, null
  br i1 %.not30, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !3218
  %i.fa = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fb = zext i64 %i.fa to i128
  %i.fc = mul nuw i128 %i.fb, 14181476777654086739
  %i.fd = lshr i128 %i.fc, 64
  %i.fe = trunc nuw i128 %i.fd to i64
  %i.ff = mul i64 %i.fa, -4265267296055464877
  %i.fg = xor i64 %i.ff, %i.fe
  %i.fh = mul i64 %i.fg, -4265267296055464877     ; 2 uses
  %i.fi = lshr i64 %i.fh, 14
  %i.fj = and i64 %i.fi, 255
  %i.fk = lshr i64 %i.fh, 22
  %.sroa.speculated.i.i.i.i.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE19tryEmplaceValueImplIS5_JRKS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbESB_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.49") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %i.fk, i64 %.sroa.speculated.i.i.i.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !3218
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.lr.ph75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.043.073, i64 8 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.y
  br i1 %i.fn, label %._crit_edge76, label %.lr.ph75

bb.v:                                             ; preds = %bb.t, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.q ], [ %i.fl, %bb.t ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.a, %._crit_edge76
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEE(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 12 uses
  %3 = alloca [8 x %"class.folly::hazptr_obj_list"], align 16 ; 20 uses
  %4 = alloca %class.anon.73, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.1, i8 0, i64 20, i1 false)
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %.ptr.2, i8 0, i64 20, i1 false)
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.3, i8 0, i64 20, i1 false)
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %.ptr.4, i8 0, i64 20, i1 false)
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.5, i8 0, i64 20, i1 false)
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %.ptr.6, i8 0, i64 20, i1 false)
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.7, i8 0, i64 20, i1 false)
  store ptr %2, ptr %4, align 8, !tbaa !653
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !655
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.c, align 8, !tbaa !657
  call void @_ZN5folly13hazptr_domainISt6atomicE17list_walk_shardedIZNS2_12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_EEEEUliS6_E_EEvS7_T_(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef nonnull byval(%class.anon.73) align 8 %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !613
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 16, !tbaa !615
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !617  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.j = load i32, ptr %i.i, align 16, !tbaa !639 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %i.i, align 16, !tbaa !639
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic i64 0, ptr %i.m monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.012.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ]    ; 2 uses
  %cond.i = icmp eq ptr %i.h, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br i1 %cond.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e
  %invariant.op = add nsw i64 %.012.i, -1
  br label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.us

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.us: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.us, %.split.us
  %i.o = load atomic i64, ptr %i.d acquire, align 32 ; 2 uses
  %.reass = add i64 %i.o, %invariant.op
  %i.p = cmpxchg weak ptr %i.d, i64 %i.o, i64 %.reass acq_rel acquire, align 8
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.us

.split:                                           ; preds = %bb.e
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = add i64 %.012.i, %i.r
end_hunk_0
begin_hunk_1_@_ZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERb:bb.a
  br i1 %i.cw, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4, label %bb.m

bb.m:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.3
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !617
  %i.cz = load atomic i64, ptr %i.cv acquire, align 64 ; 2 uses
  %i.da = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.db = inttoptr i64 %i.cz to ptr
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !587
  %i.dd = cmpxchg weak ptr %i.cv, i64 %i.cz, i64 %i.da acq_rel acquire, align 8 ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 1
  br i1 %i.de, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4: ; preds = %bb.m, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4
  %i.df = phi { i64, i1 } [ %i.di, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4 ], [ %i.dd, %bb.m ]
  %i.dg = extractvalue { i64, i1 } %i.df, 0       ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !587
  %i.di = cmpxchg weak ptr %i.cv, i64 %i.dg, i64 %i.da acq_rel acquire, align 8 ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  br i1 %i.dj, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4, %bb.m, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dl = load i32, ptr %i.dk, align 16, !tbaa !155
  %i.dm = load ptr, ptr %.ptr.5, align 8, !tbaa !615 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.do = icmp eq ptr %i.dm, null
  br i1 %i.do, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %bb.n

bb.n:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dq = load ptr, ptr %i.dp, align 16, !tbaa !617
  %i.dr = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.ds = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.dt = inttoptr i64 %i.dr to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !587
  %i.dv = cmpxchg weak ptr %i.dn, i64 %i.dr, i64 %i.ds acq_rel acquire, align 8 ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dw, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5: ; preds = %bb.n, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5
  %i.dx = phi { i64, i1 } [ %i.ea, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5 ], [ %i.dv, %bb.n ]
  %i.dy = extractvalue { i64, i1 } %i.dx, 0       ; 2 uses
  %i.dz = inttoptr i64 %i.dy to ptr
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !587
  %i.ea = cmpxchg weak ptr %i.dn, i64 %i.dy, i64 %i.ds acq_rel acquire, align 8 ; 2 uses
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  br i1 %i.eb, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5, %bb.n, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !155
  %i.ee = load ptr, ptr %.ptr.6, align 16, !tbaa !615 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.eg = icmp eq ptr %i.ee, null
  br i1 %i.eg, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %bb.o

bb.o:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !617
  %i.ej = load atomic i64, ptr %i.ef acquire, align 16 ; 2 uses
  %i.ek = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.el = inttoptr i64 %i.ej to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !587
  %i.en = cmpxchg weak ptr %i.ef, i64 %i.ej, i64 %i.ek acq_rel acquire, align 8 ; 2 uses
  %i.eo = extractvalue { i64, i1 } %i.en, 1
  br i1 %i.eo, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6: ; preds = %bb.o, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6
  %i.ep = phi { i64, i1 } [ %i.es, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6 ], [ %i.en, %bb.o ]
  %i.eq = extractvalue { i64, i1 } %i.ep, 0       ; 2 uses
  %i.er = inttoptr i64 %i.eq to ptr
  store ptr %i.er, ptr %i.em, align 8, !tbaa !587
  %i.es = cmpxchg weak ptr %i.ef, i64 %i.eq, i64 %i.ek acq_rel acquire, align 8 ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  br i1 %i.et, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6, %bb.o, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !155
  %i.ew = load ptr, ptr %.ptr.7, align 8, !tbaa !615 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ey = icmp eq ptr %i.ew, null
  br i1 %i.ey, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7, label %bb.p

bb.p:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !617
  %i.fb = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.fc = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.fd = inttoptr i64 %i.fb to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !587
  %i.ff = cmpxchg weak ptr %i.ex, i64 %i.fb, i64 %i.fc acq_rel acquire, align 8 ; 2 uses
  %i.fg = extractvalue { i64, i1 } %i.ff, 1
  br i1 %i.fg, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7: ; preds = %bb.p, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7
  %i.fh = phi { i64, i1 } [ %i.fk, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7 ], [ %i.ff, %bb.p ]
  %i.fi = extractvalue { i64, i1 } %i.fh, 0       ; 2 uses
  %i.fj = inttoptr i64 %i.fi to ptr
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !587
  %i.fk = cmpxchg weak ptr %i.ex, i64 %i.fi, i64 %i.fc acq_rel acquire, align 8 ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  br i1 %i.fl, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7, %bb.p, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6
  %i.fm = add nsw i32 %i.bj, %i.ar
  %i.fn = add nsw i32 %i.cb, %i.fm
  %i.fo = add nsw i32 %i.ct, %i.fn
  %i.fp = add nsw i32 %i.dl, %i.fo
  %i.fq = add nsw i32 %i.ed, %i.fp
  %i.fr = add nsw i32 %i.ev, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !155
  %i.fu = add nsw i32 %i.ft, %i.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.fu
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !632    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !635
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !636  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.h = icmp ult i64 %i.f, 256
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.f, 255                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !162
  store i64 %i.i, ptr %i.e, align 8, !tbaa !636
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load i8, ptr %i.g, align 1, !tbaa !625
  %i.m = icmp eq i64 %i.k, 0
  %i.n = shl i8 %i.l, 3
  %i.o = and i8 %i.n, 120
  %narrow.i.i.i = add nuw i8 %i.o, 16
  %i.p = zext i8 %narrow.i.i.i to i64
  %i.q = shl i64 128, %i.k
  %.0.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.q
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !632
  store i64 0, ptr %i.e, align 8, !tbaa !636
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %.0.i.i.i.i) #26
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly32asymmetric_thread_fence_heavy_fn5impl_ESt12memory_order(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE19tryEmplaceValueImplIS5_JRKS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbESB_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.49") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !636  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !632   ; 3 uses
  br i1 %.not, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i80 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i79 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i79, %i.k
  %i.n = shl nuw nsw i64 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not69 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.042.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !645
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !646

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nsw i32 %.sroa.042.0, -1
  %i.ag = and i32 %i.af, %.sroa.042.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not70 = icmp eq i32 %i.ah, 0
  br i1 %.not70, label %.loopexit, label %bb.d, !llvm.loop !25

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread67, label %bb.e, !prof !646

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i80, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i79
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread67, label %bb.c, !llvm.loop !26

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread67:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi91 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !625
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi91              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.ar = shl nuw i64 1, %.pre-phi91
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !636
  %.pre88 = load ptr, ptr %1, align 8, !tbaa !632
  %.pre89 = and i64 %.pre87, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi91, %.thread67 ], [ %.pre89, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread67 ], [ %.pre88, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i31, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nuw nsw i64 %i.au, 7                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !625
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not71 = icmp eq i16 %i.ba, 0
  br i1 %.not71, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !649 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !649
  br label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.028                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nuw nsw i64 %i.bj, 7                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bp, 0
  br i1 %.not72, label %bb.i, label %bb.k, !llvm.loop !27

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !650
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !625
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKvE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.29) #42
  unreachable

_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !625
  %i.ca = shl nuw nsw i64 %i.bv, 3
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load ptr, ptr %5, align 8, !tbaa !645
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !645
  %i.cf = lshr i64 %i.bv, 1
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = or i64 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !651
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !162
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit, %bb.n
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !636 ; 2 uses
  %i.cm = and i64 %i.cl, -256
  %i.cn = add i64 %i.cm, 256
  %i.co = and i64 %i.cl, 255
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !636
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit
  %.sink107 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa102.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink107, ptr %0, align 8, !tbaa !3219
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa102.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !162
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !3222
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !636
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.62", align 1    ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !162
  store i64 %2, ptr %i.b, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.k = load ptr, ptr %0, align 8, !tbaa !632    ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i70 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i70, ptr %i.g, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i70) #43 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !663
  store i8 0, ptr %i.i, align 1, !tbaa !626
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = shl nsw i64 %.08.i, 7
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 7
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 7
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 256
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmm:bb.a
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !625
  %i.bo = shl i64 %.054133, 3
  %i.bp = getelementptr i8, ptr %i.v, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  call void @llvm.assume(i1 %i.bi)
  %i.br = shl i64 %.056132, 3
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !645
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !645
  %i.bv = add nuw i64 %.054133, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.155 = phi i64 [ %i.bv, %bb.g ], [ %.054133, %bb.d ] ; 3 uses
  %i.bw = add i64 %.056132, 1
  %i.bx = icmp ult i64 %.155, %1
  br i1 %i.bx, label %bb.d, label %bb.i, !llvm.loop !3227

bb.i:                                             ; preds = %bb.h
  %i.by = add i64 %.155, -1                       ; 2 uses
  %i.bz = shl i64 %i.by, 3
  %i.ca = getelementptr i8, ptr %i.v, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 16     ; 2 uses
  %i.cc = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cd = and i64 %i.by, 255                      ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = or i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !162
  br label %bb.aa

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph131.preheader

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp slt i64 %4, 0
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !672

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #40
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #37
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  resume { ptr, i32 } %i.cl

bb.o:                                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !661
  %.pre141 = load i64, ptr %i.b, align 8, !tbaa !162
  %.pre142 = load i64, ptr %i.a, align 8, !tbaa !162 ; 2 uses
  %.pre143 = shl i64 %.pre141, 7
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %4, i1 false)
  %.not58128 = icmp eq i64 %.pre142, 0
  br i1 %.not58128, label %._crit_edge, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.thread, %bb.o
  %.0113157 = phi ptr [ %7, %.thread ], [ %i.ck, %bb.o ] ; 4 uses
  %i.cm = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.o ]
  %i.cn = phi i64 [ %1, %.thread ], [ %.pre142, %bb.o ]
  %.pre-phi156 = phi i64 [ %i.p, %.thread ], [ %.pre143, %bb.o ]
  %i.co = getelementptr i8, ptr %i.cm, i64 %.pre-phi156
  br label %.lr.ph131

.loopexit:                                        ; preds = %bb.w, %.lr.ph131
  %.1.lcssa = phi i64 [ %.041129, %.lr.ph131 ], [ %i.cv, %bb.w ] ; 2 uses
  %.not58 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph131, !llvm.loop !3228

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.loopexit
  %.042130.pn = phi ptr [ %.042130, %.loopexit ], [ %i.co, %.lr.ph131.preheader ]
  %.041129 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cn, %.lr.ph131.preheader ] ; 2 uses
  %.042130 = getelementptr i8, ptr %.042130.pn, i64 -128 ; 5 uses
  %i.cp = load <16 x i8>, ptr %.042130, align 16, !tbaa !625
  %i.cq = icmp eq <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = and i16 %i.cr, 16383                    ; 2 uses
  %.not114123 = icmp eq i16 %i.cs, 16383
  br i1 %.not114123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph131
  %i.ct = xor i16 %i.cs, 16383
  %.sroa.079.0.extract.trunc = zext nneg i16 %i.ct to i32
  %i.cu = icmp ne ptr %.042130, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cu)
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.1126 = phi i64 [ %.041129, %.lr.ph ], [ %i.cv, %bb.w ]
  %.sroa.079.0125 = phi i32 [ %.sroa.079.0.extract.trunc, %.lr.ph ], [ %.sroa.079.1, %bb.w ] ; 3 uses
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %i.cv = add i64 %.1126, -1                      ; 2 uses
  %i.cw = and i32 %.sroa.079.0125, 1
  %.not.i72 = icmp eq i32 %i.cw, 0
  br i1 %.not.i72, label %bb.q, label %bb.r, !prof !672

bb.q:                                             ; preds = %bb.p
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.079.0125, i1 true) ; 2 uses
  %i.cy = add i32 %i.cx, %.sroa.8.0124
  %i.cz = add nuw nsw i32 %i.cx, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.8.1.in = phi i32 [ %i.cy, %bb.q ], [ %.sroa.8.0124, %bb.p ] ; 2 uses
  %.pn115 = phi i32 [ %i.cz, %bb.q ], [ 1, %bb.p ]
  %.sroa.079.1 = lshr i32 %.sroa.079.0125, %.pn115 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.da = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = getelementptr i8, ptr %.042130, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 16     ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !645
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = zext i64 %i.df to i128
  %i.dh = mul nuw i128 %i.dg, 14181476777654086739
  %i.di = lshr i128 %i.dh, 64
  %i.dj = trunc nuw i128 %i.di to i64
  %i.dk = mul i64 %i.df, -4265267296055464877
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = mul i64 %i.dl, -4265267296055464877     ; 2 uses
  %i.dn = lshr i64 %i.dm, 14
  %i.do = and i64 %i.dn, 255
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1) ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.042130, i64 %i.da
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !625
  %i.dr = zext i8 %i.dq to i64
  %i.ds = icmp eq i64 %.sroa.speculated.i.i, %i.dr
  br i1 %i.ds, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.29) #42
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dt = lshr i64 %i.dm, 22
  %i.du = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = load i64, ptr %i.ba, align 8, !tbaa !636
  %i.dx = and i64 %i.dw, 255
  %notmask.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !632   ; 2 uses
  %i.ea = and i64 %i.dt, %i.dy                    ; 4 uses
  %i.eb = shl nuw nsw i64 %i.ea, 7                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0113157, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !625 ; 2 uses
  %i.ee = icmp ult i8 %i.ed, 14
  br i1 %i.ee, label %._crit_edge.i, label %.lr.ph.i74, !prof !673

.lr.ph.i74:                                       ; preds = %bb.t, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i
  %i.ef = phi i64 [ %i.en, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ], [ %i.eb, %bb.t ]
  %i.eg = phi i64 [ %i.em, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ], [ %i.ea, %bb.t ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 15 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !649 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ej, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i74
  %i.ek = add i8 %i.ej, 1
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !649
  br label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.u, %.lr.ph.i74
  %i.el = add i64 %i.dv, %i.eg
  %i.em = and i64 %i.el, %i.dy                    ; 4 uses
  %i.en = shl nuw nsw i64 %i.em, 7                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0113157, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !625 ; 2 uses
  %i.eq = icmp ult i8 %i.ep, 14
  br i1 %i.eq, label %._crit_edge.i, label %.lr.ph.i74, !prof !674, !llvm.loop !3229

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, %bb.t
  %.lcssa22.i = phi i64 [ %i.ea, %bb.t ], [ %i.em, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.t ], [ 16, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.eb, %bb.t ], [ %i.en, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.ed, %bb.t ], [ %i.ep, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.pn.i ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0113157, i64 %.lcssa22.i
  %i.es = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.es, ptr %i.er, align 1, !tbaa !625
  %i.et = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !625
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKvE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.29) #42
  unreachable

bb.w:                                             ; preds = %._crit_edge.i
  %i.ex = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ex, ptr %i.eu, align 1, !tbaa !625
  %i.ey = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !650
  %i.fa = add i8 %i.ez, %.0.lcssa.i
  store i8 %i.fa, ptr %i.ey, align 2, !tbaa !650
  %i.fb = shl nuw nsw i64 %i.et, 3
  %i.fc = getelementptr i8, ptr %.lcssa21.i, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 16     ; 2 uses
  %i.fe = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  %i.ff = load ptr, ptr %i.dd, align 8, !tbaa !645
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !645
  %.not114 = icmp eq i32 %.sroa.079.1, 0
  br i1 %.not114, label %.loopexit, label %bb.p, !llvm.loop !3230

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.0113158 = phi ptr [ %i.ck, %bb.o ], [ %.0113157, %.loopexit ] ; 2 uses
  %i.fg = load i64, ptr %i.ba, align 8, !tbaa !636
  %i.fh = and i64 %i.fg, 255
  %i.fi = shl nuw i64 1, %i.fh
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.x
  %.0.in = phi i64 [ %i.fi, %._crit_edge ], [ %.0, %bb.x ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0113158, i64 %.0
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !625 ; 3 uses
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.x, label %bb.y, !llvm.loop !3231

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %0, align 8, !tbaa !632
  %i.fn = shl nsw i64 %.0, 7
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fp = zext nneg i8 %i.fk to i64
  %i.fq = add nsw i64 %i.fp, -1                   ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = getelementptr i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 16     ; 2 uses
  %i.fu = icmp ne ptr %i.fo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fv = icmp ult i8 %i.fk, 17
  call void @llvm.assume(i1 %i.fv)
  %i.fw = lshr i64 %i.fq, 1
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = or i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !162
  br i1 %.not, label %bb.z, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.0113158, i64 noundef %4) #38
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !626
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !162
  %.not.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !661 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = load i64, ptr %i.e, align 8, !tbaa !162
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gc) #26
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !169
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !169
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #40
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !666, !range !624, !noundef !316
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3237, !nonnull !316
  %i.e = load i8, ptr %i.d, align 1, !tbaa !626, !range !624, !noundef !316
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !646

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3238, !nonnull !316, !align !675
  %i.i = load i64, ptr %i.h, align 8, !tbaa !162
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3239, !nonnull !316, !align !675
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !661
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3240, !nonnull !316, !align !675
  %i.o = load i64, ptr %i.n, align 8, !tbaa !162
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3241 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3242, !nonnull !316, !align !675
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !663
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3243, !nonnull !316, !align !675
  %i.w = load i64, ptr %i.v, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3239, !nonnull !316, !align !675
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !661
  store ptr %i.z, ptr %i.q, align 8, !tbaa !632
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3244, !nonnull !316, !align !675
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !162 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !636
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !636
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #26
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #21

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #22

; Function Attrs: noreturn nounwind
declare void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() local_unnamed_addr #9

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE17list_walk_shardedIZNS2_12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_EEEEUliS6_E_EEvS7_T_(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef byval(%class.anon.73) align 8 %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader16:
  %i.a = alloca [8 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa !613
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.preheader

bb.a:                                             ; preds = %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.preheader:                                       ; preds = %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit, %.preheader16
  %indvars.iv = phi i64 [ %indvars.iv.next.mux, %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit ], [ 0, %.preheader16 ] ; 4 uses
  %.118 = phi i1 [ %.2.mux, %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit ], [ false, %.preheader16 ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !613  ; 10 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !587
  store ptr %i.g, ptr %i.d, align 8, !tbaa !613
  %i.h = load ptr, ptr %2, align 8, !tbaa !3247, !nonnull !316, !align !675 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !636  ; 3 uses
  %i.k = icmp ult i64 %i.j, 512
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i64 %i.j, 256
  br i1 %i.l, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !651
  %i.o = and i64 %i.n, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !645
  %i.r = icmp eq ptr %i.e, %i.q
  br i1 %i.r, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i

bb.e:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw i128 %i.t, 14181476777654086739
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = mul i64 %i.s, -4265267296055464877
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4265267296055464877       ; 2 uses
  %i.aa = lshr i64 %i.z, 14
  %i.ab = and i64 %i.aa, 255
  %i.ac = lshr i64 %i.z, 22
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ai = and i64 %i.j, 255                       ; 2 uses
  %i.aj = shl nuw i64 1, %i.ai
  %notmask.i.i = shl nsw i64 -1, %i.ai
  %i.ak = xor i64 %notmask.i.i, -1
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !632
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.024.i.i53.i = phi i64 [ %i.aj, %bb.e ], [ %i.bj, %bb.h ]
  %.026.i.i52.i = phi i64 [ %i.ac, %bb.e ], [ %i.bk, %bb.h ] ; 2 uses
  %i.am = and i64 %.026.i.i52.i, %i.ak
  %i.an = shl nuw nsw i64 %i.am, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ap, i32 0, i32 3, i32 1)
  %i.aq = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.ar = icmp eq <16 x i8> %i.aq, %i.ah
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = and i32 %i.at, 16383
  %.not.i = icmp eq i32 %i.au, 0
  %i.av = extractelement <16 x i8> %i.aq, i64 15
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.aw = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aw)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i, %.preheader.i
  %.sroa.014.0.i = phi i32 [ %i.bg, %.critedge.i.i.i ], [ %i.at, %.preheader.i ] ; 4 uses
  %i.ax = icmp ne i32 %.sroa.014.0.i, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0.i, i1 true)
  %i.az = shl nuw nsw i32 %i.ay, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !645
  %i.be = icmp eq ptr %i.e, %i.bd
  br i1 %i.be, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %.critedge.i.i.i, !prof !646

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.bf = add nsw i32 %.sroa.014.0.i, -1
  %i.bg = and i32 %i.bf, %.sroa.014.0.i           ; 2 uses
  %i.bh = and i32 %i.bg, 16382
  %.not51.i = icmp eq i32 %i.bh, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.g, !llvm.loop !25

.loopexit.i:                                      ; preds = %.critedge.i.i.i, %bb.f
  %i.bi = icmp eq i8 %i.av, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.h, !prof !646

bb.h:                                             ; preds = %.loopexit.i
  %i.bj = add i64 %.024.i.i53.i, -1               ; 2 uses
  %i.bk = add i64 %i.ae, %.026.i.i52.i
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.f, !llvm.loop !26

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i: ; preds = %bb.g, %bb.d
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !3248, !nonnull !316, !align !675
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !587
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !617 ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.e, ptr %i.bp, align 8, !tbaa !587
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  store ptr %i.e, ptr %i.bm, align 8, !tbaa !615
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.e, ptr %i.bn, align 8, !tbaa !617
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !619
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !619
  br label %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i: ; preds = %bb.h, %.loopexit.i, %bb.d, %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !3249, !nonnull !316, !align !676
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !155
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !155
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !597
  %i.bz = and i64 %i.by, -2
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  br label %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i

_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i: ; preds = %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i
  %i.cc = load atomic ptr, ptr %i.cb acquire, align 8 ; 2 uses
  store ptr %i.cc, ptr %i.f, align 8, !tbaa !587
  %i.cd = cmpxchg weak ptr %i.cb, ptr %i.cc, ptr %i.e acq_rel monotonic, align 8
  %i.ce = extractvalue { ptr, i1 } %i.cd, 1
  br i1 %i.ce, label %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit, label %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i

_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit: ; preds = %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i, %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i, %.preheader
  %.2 = phi i1 [ %.118, %.preheader ], [ true, %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i ], [ true, %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, 8 ; 3 uses
  %brmerge = select i1 %exitcond.not, i1 true, i1 %.2
  %indvars.iv.next.mux = select i1 %exitcond.not, i64 %indvars.iv.next, i64 0
  %.2.mux = select i1 %exitcond.not, i1 %.2, i1 false
  br i1 %brmerge, label %.preheader, label %bb.a, !llvm.loop !3245
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE17list_walk_shardedIZNS2_22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_EEERbEUliS6_E_EEvS7_T_(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef byval(%class.anon.74) align 8 %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader16:
  %3 = alloca %"class.folly::hazptr_obj_list", align 8 ; 7 uses
  %i.a = alloca [8 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa !613
  %i.b = load ptr, ptr %2, align 8, !nonnull !316, !align !675 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !316, !align !675 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !316, !align !676
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !316
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader

bb.a:                                             ; preds = %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

.preheader:                                       ; preds = %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit, %.preheader16
  %indvars.iv = phi i64 [ %indvars.iv.next.mux, %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit ], [ 0, %.preheader16 ] ; 5 uses
  %.118 = phi i1 [ %.2.mux, %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit ], [ false, %.preheader16 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !613  ; 10 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !587
  store ptr %i.p, ptr %i.m, align 8, !tbaa !613
  %i.q = load i64, ptr %i.c, align 8, !tbaa !636  ; 3 uses
  %i.r = icmp ult i64 %i.q, 512
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i64 %i.q, 256
  br i1 %i.s, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !651
  %i.u = and i64 %i.t, -8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !645
  %i.x = icmp eq ptr %i.n, %i.w
  br i1 %i.x, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i

bb.e:                                             ; preds = %bb.b
  %i.y = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw i128 %i.z, 14181476777654086739
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = mul i64 %i.y, -4265267296055464877
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -4265267296055464877     ; 2 uses
  %i.ag = lshr i64 %i.af, 14
  %i.ah = and i64 %i.ag, 255
  %i.ai = lshr i64 %i.af, 22
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1
  %i.al = trunc nuw i64 %.sroa.speculated.i.i.i.i to i8
  %i.am = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ao = and i64 %i.q, 255                       ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao
  %notmask.i.i = shl nsw i64 -1, %i.ao
  %i.aq = xor i64 %notmask.i.i, -1
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !632
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.024.i.i53.i = phi i64 [ %i.ap, %bb.e ], [ %i.bp, %bb.h ]
  %.026.i.i52.i = phi i64 [ %i.ai, %bb.e ], [ %i.bq, %bb.h ] ; 2 uses
  %i.as = and i64 %.026.i.i52.i, %i.aq
  %i.at = shl nuw nsw i64 %i.as, 7
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 80
  call void @llvm.prefetch.p0(ptr %i.av, i32 0, i32 3, i32 1)
  %i.aw = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.aw, %i.an
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %i.ba = and i32 %i.az, 16383
  %.not.i = icmp eq i32 %i.ba, 0
  %i.bb = extractelement <16 x i8> %i.aw, i64 15
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.bc = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bc)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i, %.preheader.i
  %.sroa.014.0.i = phi i32 [ %i.bm, %.critedge.i.i.i ], [ %i.az, %.preheader.i ] ; 4 uses
  %i.bd = icmp ne i32 %.sroa.014.0.i, 0
  call void @llvm.assume(i1 %i.bd)
  %i.be = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0.i, i1 true)
  %i.bf = shl nuw nsw i32 %i.be, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.au, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !645
  %i.bk = icmp eq ptr %i.n, %i.bj
  br i1 %i.bk, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %.critedge.i.i.i, !prof !646

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.bl = add nsw i32 %.sroa.014.0.i, -1
  %i.bm = and i32 %i.bl, %.sroa.014.0.i           ; 2 uses
  %i.bn = and i32 %i.bm, 16382
  %.not51.i = icmp eq i32 %i.bn, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.g, !llvm.loop !25

.loopexit.i:                                      ; preds = %.critedge.i.i.i, %bb.f
  %i.bo = icmp eq i8 %i.bb, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.h, !prof !646

bb.h:                                             ; preds = %.loopexit.i
  %i.bp = add i64 %.024.i.i53.i, -1               ; 2 uses
  %i.bq = add i64 %i.ak, %.026.i.i52.i
  %.not.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.f, !llvm.loop !26

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i: ; preds = %bb.g, %bb.d
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !587
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !617 ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.n, ptr %i.bu, align 8, !tbaa !587
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  store ptr %i.n, ptr %i.br, align 8, !tbaa !615
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.n, ptr %i.bs, align 8, !tbaa !617
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !619
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !619
  br label %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i: ; preds = %bb.h, %.loopexit.i, %bb.d, %bb.c
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !155
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !677
  call void %i.cb(ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(20) %3), !inline_history !3250
  %i.cc = load ptr, ptr %3, align 8, !tbaa !615   ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i
  store i8 0, ptr %i.j, align 1, !tbaa !626
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 5 uses
  %i.cf = load i32, ptr %i.k, align 8, !tbaa !619 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !615
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !615
  br label %_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !617
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cc, ptr %i.cl, align 8, !tbaa !587
  br label %_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i

_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i: ; preds = %bb.n, %bb.m
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !617
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !617
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !619
  %i.cq = add nsw i32 %i.cp, %i.cf
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !619
  br label %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i

_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i: ; preds = %_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i, %bb.k, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit

_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit: ; preds = %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i, %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i, %.preheader
  %.2 = phi i1 [ %.118, %.preheader ], [ true, %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i ], [ true, %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, 8 ; 3 uses
  %brmerge = select i1 %exitcond.not, i1 true, i1 %.2
  %indvars.iv.next.mux = select i1 %exitcond.not, i64 %indvars.iv.next, i64 0
  %.2.mux = select i1 %exitcond.not, i1 %.2, i1 false
  br i1 %brmerge, label %.preheader, label %bb.a, !llvm.loop !3251
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #23

declare void @_ZN5folly6detail26hazptr_inline_executor_addENS_8FunctionIFvvEEE(ptr noundef align 16) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN5folly15observer_detail15ObserverManager14UpdatesManager21CurrentQueueProcessorC1EvEUlvE_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.76", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !159    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #40
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.q, align 8, !tbaa !167
  %i.r = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly15observer_detail15ObserverManager14UpdatesManager21CurrentQueueProcessorC1EvEUlvE_EEEEEE, i64 16), ptr %i.r, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !170
  store ptr %i.r, ptr %3, align 8, !tbaa !172
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %3, align 8, !tbaa !172    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.c
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #26, !call_target !177, !inline_history !3252
  br label %bb.e
end_hunk_2
