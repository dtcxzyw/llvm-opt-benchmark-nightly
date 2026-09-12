Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ThreadedExecutor?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1321
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5folly13hazptr_domainISt6atomicE23extract_retired_objectsEPPNS_10hazptr_objIS1_EES6_:.preheader

.noexc.i.i:                                       ; preds = %bb.k
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc.i.i
  %i.bi = tail call ptr @__errno_location() #37
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !663
  %i.bk = icmp eq i32 %i.bj, 4
  br i1 %i.bk, label %bb.k, label %bb.m, !llvm.loop !34

bb.m:                                             ; preds = %bb.l, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.e

bb.n:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #35
  unreachable

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E7pop_allEb.exit: ; preds = %bb.h, %bb.i
  %i.bn = and i64 %i.au, -2                       ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !673
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %bb.o, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit

bb.o:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E7pop_allEb.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !669 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !669
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
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !1863
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE16load_hazptr_valsEv(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastSet") align 8 %0, ptr noundef nonnull align 64 dereferenceable(449) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.50", align 8     ; 3 uses
  %i.a = alloca [8 x ptr], align 16               ; 12 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !682
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
  %i.l = load i64, ptr %i.k, align 8, !tbaa !150
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !687
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8
  store ptr %i.ad, ptr %i.a, align 16, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !687
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !105
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !687
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 8
  store ptr %i.aj, ptr %i.p, align 16, !tbaa !105
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !687
  %i.am = load atomic ptr, ptr %i.al monotonic, align 8
  store ptr %i.am, ptr %i.q, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !687
  %i.ap = load atomic ptr, ptr %i.ao monotonic, align 8
  store ptr %i.ap, ptr %i.r, align 16, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !687
  %i.as = load atomic ptr, ptr %i.ar monotonic, align 8
  store ptr %i.as, ptr %i.s, align 8, !tbaa !105
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !687
  %i.av = load atomic ptr, ptr %i.au monotonic, align 8
  store ptr %i.av, ptr %i.t, align 16, !tbaa !105
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !687
  %i.ay = load atomic ptr, ptr %i.ax monotonic, align 8
  store ptr %i.ay, ptr %i.u, align 8, !tbaa !105
  br label %.preheader

bb.c:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.az = add nuw nsw i64 %i.aa, 8                ; 2 uses
  %.not29 = icmp samesign ugt i64 %i.az, %i.m
  br i1 %.not29, label %._crit_edge, label %.preheader.preheader, !llvm.loop !1864

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %.024.idx70 = phi i64 [ %.024.add, %.loopexit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.024.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.024.idx70
  %i.ba = load ptr, ptr %.024.ptr, align 8, !tbaa !105 ; 4 uses
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
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !686, !noalias !1871 ; 3 uses
  %i.bn = lshr i64 %i.bm, 8                       ; 3 uses
  %.not.i = icmp eq i64 %i.bn, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !682, !noalias !1871 ; 3 uses
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
  %i.bx = shl nsw i64 %i.bw, 7
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.bx ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1), !noalias !1871
  %i.ca = load <16 x i8>, ptr %i.by, align 16, !noalias !1871 ; 2 uses
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
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !105, !noalias !1871
  %i.co = icmp eq ptr %i.ba, %i.cn
  br i1 %i.co, label %.loopexit, label %.critedge.i.i, !prof !123

.critedge.i.i:                                    ; preds = %bb.g
  %i.cp = add nsw i32 %.sroa.042.0.i, -1
  %i.cq = and i32 %i.cp, %.sroa.042.0.i           ; 2 uses
  %i.cr = and i32 %i.cq, 16382
  %.not70.i = icmp eq i32 %i.cr, 0
  br i1 %.not70.i, label %.loopexit.i, label %bb.g, !llvm.loop !36

.loopexit.i:                                      ; preds = %.critedge.i.i, %bb.f
  %i.cs = icmp eq i8 %i.cf, 0
  br i1 %i.cs, label %.thread67.i, label %bb.h, !prof !123

bb.h:                                             ; preds = %.loopexit.i
  %i.ct = add i64 %.024.i80.i, -1                 ; 2 uses
  %i.cu = add i64 %i.bp, %.026.i79.i
  %.not.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i, label %.thread67.i, label %bb.f, !llvm.loop !37

.thread67.i:                                      ; preds = %bb.h, %.loopexit.i, %bb.d
  %.pre-phi91.i = phi i64 [ %i.bm, %bb.d ], [ %i.bt, %.loopexit.i ], [ %i.bt, %bb.h ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !103, !noalias !1871
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
  %.pre87.i = load i64, ptr %i.c, align 8, !tbaa !686, !noalias !1871
  %.pre88.i = load ptr, ptr %0, align 8, !tbaa !682, !noalias !1871
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
  %i.dg = load <16 x i8>, ptr %i.df, align 16, !tbaa !103, !noalias !1871
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
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !690, !noalias !1871 ; 2 uses
  %.not.i32.i = icmp eq i8 %i.dp, -2
  br i1 %.not.i32.i, label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = add i8 %i.dp, 1
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !690, !noalias !1871
  br label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.l, %bb.k
  %i.dr = add i64 %i.dl, %.028.i                  ; 2 uses
  %i.ds = and i64 %i.dr, %i.dc
  %i.dt = shl nsw i64 %i.ds, 7                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dt
  %i.dv = load <16 x i8>, ptr %i.du, align 16, !noalias !1871 ; 2 uses
  %i.dw = icmp eq <16 x i8> %i.dv, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %i.dy = and i16 %i.dx, 16383                    ; 2 uses
  %.not72.i = icmp eq i16 %i.dy, 0
  br i1 %.not72.i, label %bb.k, label %bb.m, !llvm.loop !38

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dt ; 2 uses
  %i.ea = extractelement <16 x i8> %i.dv, i64 14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 14
  %i.ec = add i8 %i.ea, 16
  store i8 %i.ec, ptr %i.eb, align 2, !tbaa !691, !noalias !1871
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i
  %.sroa.036.0.in.i = phi i16 [ %i.dj, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i ], [ %i.dy, %bb.m ]
  %.1.i = phi ptr [ %i.df, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i ], [ %i.dz, %bb.m ] ; 3 uses
  %i.ed = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in.i, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64              ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !103, !noalias !1871
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKvE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.25) #39, !noalias !1871
  unreachable

_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i: ; preds = %bb.n
  %i.ei = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i.i.i to i8
  store i8 %i.ei, ptr %i.ef, align 1, !tbaa !103, !noalias !1871
  %i.ej = shl nuw nsw i64 %i.ee, 3
  %i.ek = getelementptr i8, ptr %.1.i, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 16     ; 3 uses
  %i.em = icmp ne ptr %.1.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.em)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  store ptr %i.ba, ptr %i.el, align 8, !tbaa !105, !noalias !1871
  %i.en = lshr i64 %i.ee, 1
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = or i64 %i.en, %i.eo                     ; 2 uses
  %i.eq = load i64, ptr %i.n, align 8, !tbaa !692, !noalias !1871
  %i.er = icmp ult i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.p, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i

bb.p:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i
  store i64 %i.ep, ptr %i.n, align 8, !tbaa !150, !noalias !1871
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i: ; preds = %bb.p, %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i
  %i.es = load i64, ptr %i.c, align 8, !tbaa !686, !noalias !1871 ; 2 uses
  %i.et = and i64 %i.es, -256
  %i.eu = add i64 %i.et, 256
  %i.ev = and i64 %i.es, 255
  %i.ew = or disjoint i64 %i.eu, %i.ev
  store i64 %i.ew, ptr %i.c, align 8, !tbaa !686, !noalias !1871
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
  %i.ey = load ptr, ptr %.sroa.043.073, align 8, !tbaa !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ez = load atomic ptr, ptr %i.ey monotonic, align 8 ; 3 uses
  store ptr %i.ez, ptr %i.b, align 8, !tbaa !105
  %.not30 = icmp eq ptr %i.ez, null
  br i1 %.not30, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !1872
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
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE19tryEmplaceValueImplIS5_JRKS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbESB_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.50") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %i.fk, i64 %.sroa.speculated.i.i.i.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !1872
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
  %4 = alloca %class.anon.71, align 8             ; 4 uses
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
  store ptr %2, ptr %4, align 8, !tbaa !694
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !696
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.c, align 8, !tbaa !698
  call void @_ZN5folly13hazptr_domainISt6atomicE17list_walk_shardedIZNS2_12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_EEEEUliS6_E_EEvS7_T_(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef nonnull byval(%class.anon.71) align 8 %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !673
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 16, !tbaa !666
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !674  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.j = load i32, ptr %i.i, align 16, !tbaa !669 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %i.i, align 16, !tbaa !669
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
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !674
  %i.cz = load atomic i64, ptr %i.cv acquire, align 64 ; 2 uses
  %i.da = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.db = inttoptr i64 %i.cz to ptr
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !151
  %i.dd = cmpxchg weak ptr %i.cv, i64 %i.cz, i64 %i.da acq_rel acquire, align 8 ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 1
  br i1 %i.de, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4: ; preds = %bb.m, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4
  %i.df = phi { i64, i1 } [ %i.di, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4 ], [ %i.dd, %bb.m ]
  %i.dg = extractvalue { i64, i1 } %i.df, 0       ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !151
  %i.di = cmpxchg weak ptr %i.cv, i64 %i.dg, i64 %i.da acq_rel acquire, align 8 ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  br i1 %i.dj, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.4, %bb.m, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dl = load i32, ptr %i.dk, align 16, !tbaa !663
  %i.dm = load ptr, ptr %.ptr.5, align 8, !tbaa !666 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.do = icmp eq ptr %i.dm, null
  br i1 %i.do, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %bb.n

bb.n:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dq = load ptr, ptr %i.dp, align 16, !tbaa !674
  %i.dr = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.ds = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.dt = inttoptr i64 %i.dr to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !151
  %i.dv = cmpxchg weak ptr %i.dn, i64 %i.dr, i64 %i.ds acq_rel acquire, align 8 ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dw, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5: ; preds = %bb.n, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5
  %i.dx = phi { i64, i1 } [ %i.ea, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5 ], [ %i.dv, %bb.n ]
  %i.dy = extractvalue { i64, i1 } %i.dx, 0       ; 2 uses
  %i.dz = inttoptr i64 %i.dy to ptr
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !151
  %i.ea = cmpxchg weak ptr %i.dn, i64 %i.dy, i64 %i.ds acq_rel acquire, align 8 ; 2 uses
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  br i1 %i.eb, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5, %bb.n, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !663
  %i.ee = load ptr, ptr %.ptr.6, align 16, !tbaa !666 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.eg = icmp eq ptr %i.ee, null
  br i1 %i.eg, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %bb.o

bb.o:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !674
  %i.ej = load atomic i64, ptr %i.ef acquire, align 16 ; 2 uses
  %i.ek = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.el = inttoptr i64 %i.ej to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !151
  %i.en = cmpxchg weak ptr %i.ef, i64 %i.ej, i64 %i.ek acq_rel acquire, align 8 ; 2 uses
  %i.eo = extractvalue { i64, i1 } %i.en, 1
  br i1 %i.eo, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6: ; preds = %bb.o, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6
  %i.ep = phi { i64, i1 } [ %i.es, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6 ], [ %i.en, %bb.o ]
  %i.eq = extractvalue { i64, i1 } %i.ep, 0       ; 2 uses
  %i.er = inttoptr i64 %i.eq to ptr
  store ptr %i.er, ptr %i.em, align 8, !tbaa !151
  %i.es = cmpxchg weak ptr %i.ef, i64 %i.eq, i64 %i.ek acq_rel acquire, align 8 ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  br i1 %i.et, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6, %bb.o, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !663
  %i.ew = load ptr, ptr %.ptr.7, align 8, !tbaa !666 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ey = icmp eq ptr %i.ew, null
  br i1 %i.ey, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7, label %bb.p

bb.p:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !674
  %i.fb = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.fc = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.fd = inttoptr i64 %i.fb to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !151
  %i.ff = cmpxchg weak ptr %i.ex, i64 %i.fb, i64 %i.fc acq_rel acquire, align 8 ; 2 uses
  %i.fg = extractvalue { i64, i1 } %i.ff, 1
  br i1 %i.fg, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7: ; preds = %bb.p, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7
  %i.fh = phi { i64, i1 } [ %i.fk, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7 ], [ %i.ff, %bb.p ]
  %i.fi = extractvalue { i64, i1 } %i.fh, 0       ; 2 uses
  %i.fj = inttoptr i64 %i.fi to ptr
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !151
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
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !663
  %i.fu = add nsw i32 %i.ft, %i.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.fu
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !682    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !685
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !686  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.h = icmp ult i64 %i.f, 256
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.f, 255                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !150
  store i64 %i.i, ptr %i.e, align 8, !tbaa !686
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load i8, ptr %i.g, align 1, !tbaa !103
  %i.m = icmp eq i64 %i.k, 0
  %i.n = shl i8 %i.l, 3
  %i.o = and i8 %i.n, 120
  %narrow.i.i.i = add nuw i8 %i.o, 16
  %i.p = zext i8 %narrow.i.i.i to i64
  %i.q = shl i64 128, %i.k
  %.0.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.q
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !682
  store i64 0, ptr %i.e, align 8, !tbaa !686
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %.0.i.i.i.i) #26
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly32asymmetric_thread_fence_heavy_fn5impl_ESt12memory_order(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE19tryEmplaceValueImplIS5_JRKS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbESB_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !686  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !682   ; 3 uses
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
  %i.n = shl nsw i64 %i.m, 7
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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !123

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nsw i32 %.sroa.042.0, -1
  %i.ag = and i32 %i.af, %.sroa.042.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not70 = icmp eq i32 %i.ah, 0
  br i1 %.not70, label %.loopexit, label %bb.d, !llvm.loop !36

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread67, label %bb.e, !prof !123

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i80, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i79
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread67, label %bb.c, !llvm.loop !37

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread67:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi91 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !103
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi91              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.ar = shl nuw i64 1, %.pre-phi91
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !686
  %.pre88 = load ptr, ptr %1, align 8, !tbaa !682
  %.pre89 = and i64 %.pre87, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi91, %.thread67 ], [ %.pre89, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread67 ], [ %.pre88, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i31, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nsw i64 %i.au, 7                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !103
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
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !690 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !690
  br label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.028                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nsw i64 %i.bj, 7                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bp, 0
  br i1 %.not72, label %bb.i, label %bb.k, !llvm.loop !38

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !691
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !103
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKvE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.25) #39
  unreachable

_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !103
  %i.ca = shl nuw nsw i64 %i.bv, 3
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load ptr, ptr %5, align 8, !tbaa !105
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !105
  %i.cf = lshr i64 %i.bv, 1
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = or i64 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !692
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !150
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit, %bb.n
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !686 ; 2 uses
  %i.cm = and i64 %i.cl, -256
  %i.cn = add i64 %i.cm, 256
  %i.co = and i64 %i.cl, 255
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !686
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit
  %.sink107 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa102.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink107, ptr %0, align 8, !tbaa !1873
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa102.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !150
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !1876
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !686
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %7 = alloca %"struct.std::array.60", align 1    ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !150
  store i64 %2, ptr %i.b, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.k = load ptr, ptr %0, align 8, !tbaa !682    ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i70 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i70, ptr %i.g, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i70) #40 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !704
  store i8 0, ptr %i.i, align 1, !tbaa !677
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
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !103
  %i.bo = shl i64 %.054133, 3
  %i.bp = getelementptr i8, ptr %i.v, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  call void @llvm.assume(i1 %i.bi)
  %i.br = shl i64 %.056132, 3
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !105
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !105
  %i.bv = add nuw i64 %.054133, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.155 = phi i64 [ %i.bv, %bb.g ], [ %.054133, %bb.d ] ; 3 uses
  %i.bw = add i64 %.056132, 1
  %i.bx = icmp ult i64 %.155, %1
  br i1 %i.bx, label %bb.d, label %bb.i, !llvm.loop !1881

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
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !150
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
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !95

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #36
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
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !702
  %.pre141 = load i64, ptr %i.b, align 8, !tbaa !150
  %.pre142 = load i64, ptr %i.a, align 8, !tbaa !150 ; 2 uses
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
  br i1 %.not58, label %._crit_edge, label %.lr.ph131, !llvm.loop !1882

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.loopexit
  %.042130.pn = phi ptr [ %.042130, %.loopexit ], [ %i.co, %.lr.ph131.preheader ]
  %.041129 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cn, %.lr.ph131.preheader ] ; 2 uses
  %.042130 = getelementptr i8, ptr %.042130.pn, i64 -128 ; 5 uses
  %i.cp = load <16 x i8>, ptr %.042130, align 16, !tbaa !103
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
  br i1 %.not.i72, label %bb.q, label %bb.r, !prof !95

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
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !105
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
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !103
  %i.dr = zext i8 %i.dq to i64
  %i.ds = icmp eq i64 %.sroa.speculated.i.i, %i.dr
  br i1 %i.ds, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.25) #39
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dt = lshr i64 %i.dm, 22
  %i.du = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = load i64, ptr %i.ba, align 8, !tbaa !686
  %i.dx = and i64 %i.dw, 255
  %notmask.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !682   ; 2 uses
  %i.ea = and i64 %i.dt, %i.dy                    ; 4 uses
  %i.eb = shl nuw nsw i64 %i.ea, 7                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0113157, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !103 ; 2 uses
  %i.ee = icmp ult i8 %i.ed, 14
  br i1 %i.ee, label %._crit_edge.i, label %.lr.ph.i74, !prof !138

.lr.ph.i74:                                       ; preds = %bb.t, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i
  %i.ef = phi i64 [ %i.en, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ], [ %i.eb, %bb.t ]
  %i.eg = phi i64 [ %i.em, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ], [ %i.ea, %bb.t ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 15 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !690 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ej, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i74
  %i.ek = add i8 %i.ej, 1
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !690
  br label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.u, %.lr.ph.i74
  %i.el = add i64 %i.dv, %i.eg
  %i.em = and i64 %i.el, %i.dy                    ; 4 uses
  %i.en = shl nsw i64 %i.em, 7                    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0113157, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !103 ; 2 uses
  %i.eq = icmp ult i8 %i.ep, 14
  br i1 %i.eq, label %._crit_edge.i, label %.lr.ph.i74, !prof !139, !llvm.loop !1883

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, %bb.t
  %.lcssa22.i = phi i64 [ %i.ea, %bb.t ], [ %i.em, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.t ], [ 16, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.eb, %bb.t ], [ %i.en, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.ed, %bb.t ], [ %i.ep, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.pn.i ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0113157, i64 %.lcssa22.i
  %i.es = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.es, ptr %i.er, align 1, !tbaa !103
  %i.et = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !103
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKvE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.25) #39
  unreachable

bb.w:                                             ; preds = %._crit_edge.i
  %i.ex = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.ex, ptr %i.eu, align 1, !tbaa !103
  %i.ey = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !691
  %i.fa = add i8 %i.ez, %.0.lcssa.i
  store i8 %i.fa, ptr %i.ey, align 2, !tbaa !691
  %i.fb = shl nuw nsw i64 %i.et, 3
  %i.fc = getelementptr i8, ptr %.lcssa21.i, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 16     ; 2 uses
  %i.fe = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  %i.ff = load ptr, ptr %i.dd, align 8, !tbaa !105
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !105
  %.not114 = icmp eq i32 %.sroa.079.1, 0
  br i1 %.not114, label %.loopexit, label %bb.p, !llvm.loop !1884

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %.0113158 = phi ptr [ %i.ck, %bb.o ], [ %.0113157, %.loopexit ] ; 2 uses
  %i.fg = load i64, ptr %i.ba, align 8, !tbaa !686
  %i.fh = and i64 %i.fg, 255
  %i.fi = shl nuw i64 1, %i.fh
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.x
  %.0.in = phi i64 [ %i.fi, %._crit_edge ], [ %.0, %bb.x ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0113158, i64 %.0
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !103 ; 3 uses
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.x, label %bb.y, !llvm.loop !1885

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %0, align 8, !tbaa !682
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
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !150
  br i1 %.not, label %bb.z, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.0113158, i64 noundef %4) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !677
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !150
  %.not.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !702 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = load i64, ptr %i.e, align 8, !tbaa !150
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
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !165
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
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
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !165
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !707, !range !93, !noundef !94
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1890, !nonnull !94
  %i.e = load i8, ptr %i.d, align 1, !tbaa !677, !range !93, !noundef !94
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !123

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1891, !nonnull !94, !align !714
  %i.i = load i64, ptr %i.h, align 8, !tbaa !150
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1892, !nonnull !94, !align !714
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !702
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1893, !nonnull !94, !align !714
  %i.o = load i64, ptr %i.n, align 8, !tbaa !150
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1894 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1895, !nonnull !94, !align !714
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !704
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1896, !nonnull !94, !align !714
  %i.w = load i64, ptr %i.v, align 8, !tbaa !150
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1892, !nonnull !94, !align !714
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !702
  store ptr %i.z, ptr %i.q, align 8, !tbaa !682
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1897, !nonnull !94, !align !714
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !150 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !686
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !686
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

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #18

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: noreturn nounwind
declare void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE17list_walk_shardedIZNS2_12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_EEEEUliS6_E_EEvS7_T_(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef byval(%class.anon.71) align 8 %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader16:
  %i.a = alloca [8 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa !673
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !673  ; 10 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151
  store ptr %i.g, ptr %i.d, align 8, !tbaa !673
  %i.h = load ptr, ptr %2, align 8, !tbaa !1900, !nonnull !94, !align !714 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !686  ; 3 uses
  %i.k = icmp ult i64 %i.j, 512
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i64 %i.j, 256
  br i1 %i.l, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !692
  %i.o = and i64 %i.n, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
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
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !682
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.024.i.i53.i = phi i64 [ %i.aj, %bb.e ], [ %i.bj, %bb.h ]
  %.026.i.i52.i = phi i64 [ %i.ac, %bb.e ], [ %i.bk, %bb.h ] ; 2 uses
  %i.am = and i64 %.026.i.i52.i, %i.ak
  %i.an = shl nsw i64 %i.am, 7
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
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !105
  %i.be = icmp eq ptr %i.e, %i.bd
  br i1 %i.be, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %.critedge.i.i.i, !prof !123

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.bf = add nsw i32 %.sroa.014.0.i, -1
  %i.bg = and i32 %i.bf, %.sroa.014.0.i           ; 2 uses
  %i.bh = and i32 %i.bg, 16382
  %.not51.i = icmp eq i32 %i.bh, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.g, !llvm.loop !36

.loopexit.i:                                      ; preds = %.critedge.i.i.i, %bb.f
  %i.bi = icmp eq i8 %i.av, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.h, !prof !123

bb.h:                                             ; preds = %.loopexit.i
  %i.bj = add i64 %.024.i.i53.i, -1               ; 2 uses
  %i.bk = add i64 %i.ae, %.026.i.i52.i
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.f, !llvm.loop !37

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i: ; preds = %bb.g, %bb.d
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !1901, !nonnull !94, !align !714
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !151
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !674 ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.e, ptr %i.bp, align 8, !tbaa !151
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  store ptr %i.e, ptr %i.bm, align 8, !tbaa !666
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.e, ptr %i.bn, align 8, !tbaa !674
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !676
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !676
  br label %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i: ; preds = %bb.h, %.loopexit.i, %bb.d, %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !1902, !nonnull !94, !align !715
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !663
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !663
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !154
  %i.bz = and i64 %i.by, -2
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  br label %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i

_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i: ; preds = %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i
  %i.cc = load atomic ptr, ptr %i.cb acquire, align 8 ; 2 uses
  store ptr %i.cc, ptr %i.f, align 8, !tbaa !151
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
  br i1 %brmerge, label %.preheader, label %bb.a, !llvm.loop !1898
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE17list_walk_shardedIZNS2_22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_EEERbEUliS6_E_EEvS7_T_(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef byval(%class.anon.72) align 8 %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader16:
  %3 = alloca %"class.folly::hazptr_obj_list", align 8 ; 7 uses
  %i.a = alloca [8 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa !673
  %i.b = load ptr, ptr %2, align 8, !nonnull !94, !align !714 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !94, !align !714 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !94, !align !715
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !94
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !673  ; 10 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !151
  store ptr %i.p, ptr %i.m, align 8, !tbaa !673
  %i.q = load i64, ptr %i.c, align 8, !tbaa !686  ; 3 uses
  %i.r = icmp ult i64 %i.q, 512
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i64 %i.q, 256
  br i1 %i.s, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !692
  %i.u = and i64 %i.t, -8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105
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
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !682
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.024.i.i53.i = phi i64 [ %i.ap, %bb.e ], [ %i.bp, %bb.h ]
  %.026.i.i52.i = phi i64 [ %i.ai, %bb.e ], [ %i.bq, %bb.h ] ; 2 uses
  %i.as = and i64 %.026.i.i52.i, %i.aq
  %i.at = shl nsw i64 %i.as, 7
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
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !105
  %i.bk = icmp eq ptr %i.n, %i.bj
  br i1 %i.bk, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %.critedge.i.i.i, !prof !123

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.bl = add nsw i32 %.sroa.014.0.i, -1
  %i.bm = and i32 %i.bl, %.sroa.014.0.i           ; 2 uses
  %i.bn = and i32 %i.bm, 16382
  %.not51.i = icmp eq i32 %i.bn, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.g, !llvm.loop !36

.loopexit.i:                                      ; preds = %.critedge.i.i.i, %bb.f
  %i.bo = icmp eq i8 %i.bb, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.h, !prof !123

bb.h:                                             ; preds = %.loopexit.i
  %i.bp = add i64 %.024.i.i53.i, -1               ; 2 uses
  %i.bq = add i64 %i.ak, %.026.i.i52.i
  %.not.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.f, !llvm.loop !37

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i: ; preds = %bb.g, %bb.d
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !151
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !674 ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.n, ptr %i.bu, align 8, !tbaa !151
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  store ptr %i.n, ptr %i.br, align 8, !tbaa !666
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.n, ptr %i.bs, align 8, !tbaa !674
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !676
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !676
  br label %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i: ; preds = %bb.h, %.loopexit.i, %bb.d, %bb.c
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !663
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !663
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !664
  call void %i.cb(ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(20) %3), !inline_history !1903
  %i.cc = load ptr, ptr %3, align 8, !tbaa !666   ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i
  store i8 0, ptr %i.j, align 1, !tbaa !677
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 5 uses
  %i.cf = load i32, ptr %i.k, align 8, !tbaa !676 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !666
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !666
  br label %_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !674
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cc, ptr %i.cl, align 8, !tbaa !151
  br label %_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i

_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i: ; preds = %bb.n, %bb.m
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !674
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !674
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !676
  %i.cq = add nsw i32 %i.cp, %i.cf
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !676
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
  br i1 %brmerge, label %.preheader, label %bb.a, !llvm.loop !1904
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #22

declare void @_ZN5folly6detail26hazptr_inline_executor_addENS_8FunctionIFvvEEE(ptr noundef align 16) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly16ThreadedExecutorC1ESt10shared_ptrINS3_13ThreadFactoryEEE3$_0EEEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly16ThreadedExecutorC1ESt10shared_ptrINS3_13ThreadFactoryEEE3$_0EEEEE6_M_runEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1906
  tail call void @_ZN5folly16ThreadedExecutor7controlEv(ptr noundef nonnull align 64 dereferenceable(224) %.val)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16ThreadedExecutor7controlEv(ptr noundef nonnull align 64 dereferenceable(224) %0) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.232", align 8    ; 4 uses
  %2 = alloca %"class.std::tuple.235", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %4 = alloca %struct.timespec, align 8           ; 6 uses
  %5 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %6 = alloca %"class.folly::WaitOptions", align 8 ; 5 uses
  %7 = alloca %"struct.folly::ThreadedExecutor::Message", align 16 ; 9 uses
  %8 = alloca %"class.std::thread", align 8       ; 7 uses
  %9 = alloca %"class.folly::Function", align 16  ; 10 uses
  %10 = alloca %class.anon.225, align 16          ; 5 uses
  %11 = alloca %"class.std::thread::id", align 8  ; 7 uses
  %12 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %13 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr nonnull @.str.90, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.90, i64 12)) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E13getLocalCacheEvE5cache) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@_ZN5folly16ThreadedExecutor7controlEv:bb.a
  %i.dx = load <2 x ptr>, ptr %i.o, align 16, !tbaa !105
  store <2 x ptr> %i.dx, ptr %i.dv, align 16, !tbaa !105
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.o, align 16, !tbaa !106
  store ptr null, ptr %i.p, align 8, !tbaa !104
  %.not.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc79
  %i.dy = call noundef i64 %i.dw(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(64) %i.du) #26, !inline_history !1915 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc79
  store ptr %i.ds, ptr %9, align 16, !tbaa !103
  store <2 x ptr> <ptr @"_ZN5folly6detail8function5call_IZNS_16ThreadedExecutor7controlEvE3$_0Lb0ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr @"_ZN5folly6detail8function11DispatchBig4execIZNS_16ThreadedExecutor7controlEvE3$_0EEmNS1_2OpEPNS1_4DataES8_">, ptr %i.q, align 16, !tbaa !105
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !165
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr dead_on_unwind nonnull writable sret(%"class.std::thread") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 16 dereferenceable(64) %9)
          to label %bb.ad unwind label %bb.ak, !call_target !728

bb.ad:                                            ; preds = %bb.ac
  %i.ec = load ptr, ptr %i.r, align 8, !tbaa !104 ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i80, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = call noundef i64 %i.ec(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %9, ptr noundef null) #26, !inline_history !35 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.ad, %bb.ae
  %i.ee = load ptr, ptr %i.p, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i81, label %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit", label %bb.af

bb.af:                                            ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit
  %i.ef = call noundef i64 %i.ee(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef null) #26, !inline_history !72 ; 0 uses
  br label %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit"

"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit": ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %.sroa.0.0.copyload.i82 = load i64, ptr %8, align 8, !tbaa !150
  store i64 %.sroa.0.0.copyload.i82, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !1927
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !1927
  store ptr %11, ptr %2, align 8, !tbaa !1744, !alias.scope !1928, !noalias !1927
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1927
  %i.eg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPS9_IKS5_S4_EEEbERSB_DpOT_.exit.i unwind label %bb.ag, !noalias !1929 ; 2 uses

bb.ag:                                            ; preds = %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit"
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #35, !noalias !1929
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPS9_IKS5_S4_EEEbERSB_DpOT_.exit.i: ; preds = %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit"
  %i.ej = zext i64 %i.eg to i128
  %i.ek = mul nuw i128 %i.ej, 14181476777654086739
  %i.el = lshr i128 %i.ek, 64
  %i.em = trunc nuw i128 %i.el to i64
  %i.en = mul i64 %i.eg, -4265267296055464877
  %i.eo = xor i64 %i.en, %i.em
  %i.ep = mul i64 %i.eo, -4265267296055464877     ; 2 uses
  %i.eq = lshr i64 %i.ep, 14
  %i.er = and i64 %i.eq, 255
  %i.es = lshr i64 %i.ep, 22
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE19tryEmplaceValueImplIS5_JRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISH_ISD_S4_EEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.232") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 %i.es, i64 %.sroa.speculated.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPS9_IKS5_S4_EEEbERSB_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1927
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !1927
  %.sroa.03.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !1746, !noalias !1927
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !1927
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.et, align 8, !tbaa !150
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt9terminatev() #35
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.ah
  %i.eu = load i64, ptr %8, align 8, !tbaa !150
  store i64 %i.eu, ptr %i.et, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge33

bb.aj:                                            ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit87

bb.ak:                                            ; preds = %bb.ac
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %i.r, align 8, !tbaa !104 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i86, label %_ZN5folly8FunctionIFvvEED2Ev.exit87, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = call noundef i64 %i.ex(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %9, ptr noundef null) #26, !inline_history !35 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit87

_ZN5folly8FunctionIFvvEED2Ev.exit87:              ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn25 = phi { ptr, i32 } [ %i.ev, %bb.aj ], [ %i.ew, %bb.ak ], [ %i.ew, %bb.al ]
  %i.ez = load ptr, ptr %i.p, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i88, label %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit89", label %bb.am

bb.am:                                            ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit87
  %i.fa = call noundef i64 %i.ez(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef null) #26, !inline_history !72 ; 0 uses
  br label %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit89"

"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit89": ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit87, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt6threadD2Ev.exit92

bb.an:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE11try_emplaceIJEEESt4pairINS1_22ValueContainerIteratorIPS9_IKS5_S4_EEEbERSB_DpOT_.exit.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.sroa.0.0.copyload.i.i90 = load i64, ptr %8, align 8, !tbaa !150
  %.not.i91 = icmp eq i64 %.sroa.0.0.copyload.i.i90, 0
  br i1 %.not.i91, label %_ZNSt6threadD2Ev.exit92, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt9terminatev() #35
  unreachable

_ZNSt6threadD2Ev.exit92:                          ; preds = %bb.an, %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit89"
  %.pn27 = phi { ptr, i32 } [ %.pn25, %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit89" ], [ %i.fb, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bl

bb.ap:                                            ; preds = %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE11dequeueImplEv.exit
  %i.fc = load i64, ptr %i.b, align 16, !tbaa !686 ; 2 uses
  %i.fd = icmp ult i64 %i.fc, 512
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fe = icmp samesign ult i64 %i.fc, 256
  br i1 %i.fe, label %.thread187, label %.noexc47

.noexc47:                                         ; preds = %bb.aq
  %i.ff = load i64, ptr %i.l, align 8, !tbaa !1747 ; 2 uses
  %i.fg = and i64 %i.ff, -16
  %i.fh = inttoptr i64 %i.fg to ptr               ; 2 uses
  %i.fi = and i64 %i.ff, 15
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.i, align 16, !tbaa !150
  %.sroa.0.0.copyload.i.i95 = load i64, ptr %i.fh, align 16, !tbaa !150
  %i.fj = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i95
  br i1 %i.fj, label %.critedge31, label %.thread187

bb.ar:                                            ; preds = %bb.ap
  %i.fk = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 8, i64 noundef 3339675911)
          to label %.noexc49 unwind label %bb.as  ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #35
  unreachable

.noexc49:                                         ; preds = %bb.ar
  %i.fn = zext i64 %i.fk to i128
  %i.fo = mul nuw i128 %i.fn, 14181476777654086739
  %i.fp = lshr i128 %i.fo, 64
  %i.fq = trunc nuw i128 %i.fp to i64
  %i.fr = mul i64 %i.fk, -4265267296055464877
  %i.fs = xor i64 %i.fr, %i.fq
  %i.ft = mul i64 %i.fs, -4265267296055464877     ; 2 uses
  %i.fu = lshr i64 %i.ft, 14
  %i.fv = and i64 %i.fu, 255
  %i.fw = lshr i64 %i.ft, 22
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 1) ; 2 uses
  %i.fx = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.fy = or disjoint i64 %i.fx, 1
  %i.fz = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ga = insertelement <16 x i8> poison, i8 %i.fz, i64 0
  %i.gb = shufflevector <16 x i8> %i.ga, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.gc = load i64, ptr %i.b, align 16, !tbaa !686
  %i.gd = and i64 %i.gc, 255                      ; 2 uses
  %i.ge = shl nuw i64 1, %i.gd
  %notmask.i = shl nsw i64 -1, %i.gd
  %i.gf = xor i64 %notmask.i, -1
  %i.gg = load ptr, ptr %i.k, align 8, !tbaa !598
  %.sroa.01.0.copyload.i.i96 = load i64, ptr %i.i, align 16
  br label %.noexc52

.noexc52:                                         ; preds = %.noexc49, %bb.at
  %.024.i.i260 = phi i64 [ %i.ge, %.noexc49 ], [ %i.hd, %bb.at ]
  %.026.i.i259 = phi i64 [ %i.fw, %.noexc49 ], [ %i.he, %bb.at ] ; 2 uses
  %i.gh = and i64 %.026.i.i259, %i.gf
  %i.gi = shl nsw i64 %i.gh, 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gi ; 4 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 144
  call void @llvm.prefetch.p0(ptr %i.gk, i32 0, i32 3, i32 1)
  %i.gl = load <16 x i8>, ptr %i.gj, align 16     ; 2 uses
  %i.gm = icmp eq <16 x i8> %i.gl, %i.gb
  %i.gn = bitcast <16 x i1> %i.gm to i16
  %i.go = zext i16 %i.gn to i32                   ; 2 uses
  %i.gp = and i32 %i.go, 16383
  %.not = icmp eq i32 %i.gp, 0
  %i.gq = extractelement <16 x i8> %i.gl, i64 15
  br i1 %.not, label %.loopexit, label %.noexc55.preheader

.noexc55.preheader:                               ; preds = %.noexc52
  %i.gr = icmp ne ptr %i.gj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gr)
  br label %.noexc55

.noexc55:                                         ; preds = %.noexc55.preheader, %.critedge.i.i
  %.sroa.0139.0 = phi i32 [ %i.ha, %.critedge.i.i ], [ %i.go, %.noexc55.preheader ] ; 4 uses
  %i.gs = icmp ne i32 %.sroa.0139.0, 0
  call void @llvm.assume(i1 %i.gs)
  %i.gt = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0139.0, i1 true)
  %i.gu = zext nneg i32 %i.gt to i64              ; 2 uses
  %i.gv = shl nuw nsw i64 %i.gu, 4
  %i.gw = getelementptr i8, ptr %i.gj, i64 %i.gv  ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  %.sroa.0.0.copyload.i.i97 = load i64, ptr %i.gx, align 8, !tbaa !150
  %i.gy = icmp eq i64 %.sroa.01.0.copyload.i.i96, %.sroa.0.0.copyload.i.i97
  br i1 %i.gy, label %.critedge31.loopexit, label %.critedge.i.i, !prof !123

.critedge.i.i:                                    ; preds = %.noexc55
  %i.gz = add nsw i32 %.sroa.0139.0, -1
  %i.ha = and i32 %i.gz, %.sroa.0139.0            ; 2 uses
  %i.hb = and i32 %i.ha, 16382
  %.not208 = icmp eq i32 %i.hb, 0
  br i1 %.not208, label %.loopexit, label %.noexc55, !llvm.loop !73

.loopexit:                                        ; preds = %.critedge.i.i, %.noexc52
  %i.hc = icmp eq i8 %i.gq, 0
  br i1 %i.hc, label %.thread187, label %bb.at, !prof !123

bb.at:                                            ; preds = %.loopexit
  %i.hd = add i64 %.024.i.i260, -1                ; 2 uses
  %i.he = add i64 %i.fy, %.026.i.i259
  %.not.i.i41 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i41, label %.thread187, label %.noexc52, !llvm.loop !74

.thread187:                                       ; preds = %.noexc47, %bb.aq, %.loopexit, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str.43, i32 noundef 72)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %.thread187
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, ptr noundef nonnull @.str.91, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.av
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #35
  unreachable

bb.aw:                                            ; preds = %bb.bb, %.critedge31
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ax:                                            ; preds = %.thread187
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bl

bb.ay:                                            ; preds = %bb.av, %bb.au
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #35
  unreachable

.critedge31.loopexit:                             ; preds = %.noexc55
  %i.hk = getelementptr i8, ptr %i.gw, i64 16
  br label %.critedge31

.critedge31:                                      ; preds = %.critedge31.loopexit, %.noexc47
  %.sroa.7138.1195 = phi i64 [ %i.fi, %.noexc47 ], [ %i.gu, %.critedge31.loopexit ] ; 4 uses
  %.sroa.0137.1193 = phi ptr [ %i.fh, %.noexc47 ], [ %i.hk, %.critedge31.loopexit ] ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0137.1193, i64 8
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %.noexc57 unwind label %bb.aw

.noexc57:                                         ; preds = %.critedge31
  %.neg.i.i.i = mul nsw i64 %.sroa.7138.1195, -16 ; 2 uses
  %i.hm = getelementptr i8, ptr %.sroa.0137.1193, i64 %.neg.i.i.i
  %i.hn = getelementptr i8, ptr %i.hm, i64 -2
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !1749
  %.not.i104 = icmp ult i8 %i.ho, 16
  br i1 %.not.i104, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.noexc57
  %i.hp = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0137.1193, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE15computeItemHashERKSt4pairIKS4_S3_E.exit.i unwind label %bb.ba ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #35
  unreachable

_ZNK5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE15computeItemHashERKSt4pairIKS4_S3_E.exit.i: ; preds = %bb.az
  %i.hs = zext i64 %i.hp to i128
  %i.ht = mul nuw i128 %i.hs, 14181476777654086739
  %i.hu = lshr i128 %i.ht, 64
  %i.hv = trunc nuw i128 %i.hu to i64
  %i.hw = mul i64 %i.hp, -4265267296055464877
  %i.hx = xor i64 %i.hw, %i.hv
  %i.hy = mul i64 %i.hx, -4265267296055464877     ; 2 uses
  %i.hz = lshr i64 %i.hy, 14
  %i.ia = and i64 %i.hz, 255
  %i.ib = lshr i64 %i.hy, 22
  %.sroa.speculated.i.i.i105 = call i64 @llvm.umax.i64(i64 %i.ia, i64 1)
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE15computeItemHashERKSt4pairIKS4_S3_E.exit.i, %.noexc57
  %.sroa.04.0.i = phi i64 [ 0, %.noexc57 ], [ %i.ib, %_ZNK5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE15computeItemHashERKSt4pairIKS4_S3_E.exit.i ]
  %.sroa.5.0.i = phi i64 [ 0, %.noexc57 ], [ %.sroa.speculated.i.i.i105, %_ZNK5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE15computeItemHashERKSt4pairIKS4_S3_E.exit.i ]
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.0137.1193, i64 %.sroa.7138.1195, i64 %.sroa.04.0.i, i64 %.sroa.5.0.i)
          to label %.noexc70 unwind label %bb.aw

.noexc70:                                         ; preds = %bb.bb
  %i.ic = getelementptr inbounds i8, ptr %.sroa.0137.1193, i64 -16
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 %.neg.i.i.i ; 2 uses
  %.not19.i309 = icmp eq i64 %.sroa.7138.1195, 0
  br i1 %.not19.i309, label %.preheader.preheader, label %.lr.ph

.preheader.preheader:                             ; preds = %bb.bc, %.noexc70
  br label %.preheader

bb.bc:                                            ; preds = %.lr.ph
  %.not19.i = icmp eq i64 %i.ie, 0
  br i1 %.not19.i, label %.preheader.preheader, label %.lr.ph, !llvm.loop !75

.lr.ph:                                           ; preds = %.noexc70, %bb.bc
  %.sroa.10.0310 = phi i64 [ %i.ie, %bb.bc ], [ %.sroa.7138.1195, %.noexc70 ]
  %i.ie = add nsw i64 %.sroa.10.0310, -1          ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !103
  %.not209 = icmp eq i8 %i.ig, 0
  br i1 %.not209, label %bb.bc, label %.critedge33, !prof !95, !llvm.loop !75

bb.bd:                                            ; preds = %.noexc72
  %i.ih = add i64 %.0.i69262, 1                   ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.critedge33, label %.preheader, !llvm.loop !76

.preheader:                                       ; preds = %.preheader.preheader, %bb.bd
  %.0.i69262 = phi i64 [ %i.ih, %bb.bd ], [ 1, %.preheader.preheader ]
  %.017.i261 = phi ptr [ %i.im, %bb.bd ], [ %i.id, %.preheader.preheader ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.017.i261, i64 14
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !103
  %i.il = and i8 %i.ik, 15
  %.not210 = icmp eq i8 %i.il, 0
  br i1 %.not210, label %.noexc72, label %.critedge33, !prof !123

.noexc72:                                         ; preds = %.preheader
  %i.im = getelementptr inbounds i8, ptr %.017.i261, i64 -256 ; 3 uses
  %i.in = load <16 x i8>, ptr %i.im, align 16, !tbaa !103
  %i.io = icmp eq <16 x i8> %i.in, zeroinitializer
  %i.ip = bitcast <16 x i1> %i.io to i16
  %i.iq = and i16 %i.ip, 16383
  %.not211 = icmp eq i16 %i.iq, 16383
  br i1 %.not211, label %bb.bd, label %.noexc74, !prof !95

.noexc74:                                         ; preds = %.noexc72
  %i.ir = icmp ne ptr %i.im, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ir)
  br label %.critedge33

bb.be:                                            ; preds = %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE11dequeueImplEv.exit
  br i1 %.0, label %bb.bf, label %.critedge33, !prof !95

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull @.str.43, i32 noundef 78)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull @.str.92, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %bb.bh
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %13) #35
  unreachable

end_hunk_3
begin_hunk_4_@_ZN5folly6detail11MemoryIdler14futexWaitUntilISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EENS0_11FutexResultERT_jRKT0_jRKT1_mf:bb.a
  %.0 = phi i32 [ %i.k, %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit ], [ %i.h, %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5folly6detail11MemoryIdler23prepareUnmapUnusedStackEv() local_unnamed_addr #3

declare void @_ZN5folly6detail11MemoryIdler22flushLocalMallocCachesEv() local_unnamed_addr #2

declare void @_ZN5folly6detail11MemoryIdler16unmapUnusedStackEm(i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN5folly6detail11MemoryIdler24getVariationTimeoutCountEmf(i64 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE19advanceHeadToTicketEm(ptr noundef nonnull align 64 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148
  %i.e = icmp ult i64 %i.d, %1
  br i1 %i.e, label %.lr.ph.i, label %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE19advanceTailToTicketEm.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = ptrtoint ptr %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE16allocNextSegmentEPNS4_7SegmentE.exit.i, %.lr.ph.i
  %i.h = phi ptr [ %i.c, %.lr.ph.i ], [ %i.ag, %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE16allocNextSegmentEPNS4_7SegmentE.exit.i ]
  %storemerge6.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.af, %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE16allocNextSegmentEPNS4_7SegmentE.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %storemerge6.i, i64 32 ; 3 uses
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE16allocNextSegmentEPNS4_7SegmentE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.h, align 8, !tbaa !148
  %i.l = invoke noalias noundef nonnull align 64 dereferenceable(28736) ptr @_ZnwmSt11align_val_t(i64 noundef 28736, i64 noundef 64) #36
          to label %.noexc.i unwind label %bb.f   ; 16 uses

.noexc.i:                                         ; preds = %bb.c
  %i.m = add i64 %i.k, 256
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store i64 %i.m, ptr %i.p, align 8, !tbaa !148
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.noexc.i
  %.idx.i.i.i = phi i64 [ 64, %.noexc.i ], [ %.add.i.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i
  store i32 0, ptr %.ptr.i.i.i, align 64, !tbaa !153
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i
  %.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i32 0, ptr %.ptr.i.i.i.1, align 16, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i
  %.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  store i32 0, ptr %.ptr.i.i.i.2, align 32, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i
  %.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  store i32 0, ptr %.ptr.i.i.i.3, align 16, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i
  %.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  store i32 0, ptr %.ptr.i.i.i.4, align 64, !tbaa !153
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i
  %.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.u, i64 560
  store i32 0, ptr %.ptr.i.i.i.5, align 16, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i
  %.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.v, i64 672
  store i32 0, ptr %.ptr.i.i.i.6, align 32, !tbaa !153
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i
  %.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.w, i64 784
  store i32 0, ptr %.ptr.i.i.i.7, align 16, !tbaa !153
  %.add.i.i.i.7 = add nuw nsw i64 %.idx.i.i.i, 896 ; 2 uses
  %i.x = icmp eq i64 %.add.i.i.i.7, 28736
  br i1 %i.x, label %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE7SegmentC2Em.exit.i.i, label %bb.d

_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE7SegmentC2Em.exit.i.i: ; preds = %bb.d
  store i64 %i.g, ptr %i.o, align 16, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8
  %i.aa = add i64 %i.z, 1
  store atomic i64 %i.aa, ptr %i.y release, align 8
  %i.ab = cmpxchg ptr %i.i, ptr null, ptr %i.l release monotonic, align 8
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE16allocNextSegmentEPNS4_7SegmentE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE7SegmentC2Em.exit.i.i
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.l, i64 noundef 28736, i64 noundef 64) #34
  %i.ad = load atomic ptr, ptr %i.i acquire, align 8
  br label %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE16allocNextSegmentEPNS4_7SegmentE.exit.i

_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE16allocNextSegmentEPNS4_7SegmentE.exit.i: ; preds = %bb.e, %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE7SegmentC2Em.exit.i.i, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.l, %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE7SegmentC2Em.exit.i.i ], [ %i.ad, %bb.e ]
  %i.ae = cmpxchg ptr %i.a, ptr %storemerge6.i, ptr %.0.i release monotonic, align 8 ; 0 uses
  %i.af = load atomic ptr, ptr %i.a acquire, align 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !148
  %i.ai = icmp ult i64 %i.ah, %1
  br i1 %i.ai, label %bb.b, label %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE19advanceTailToTicketEm.exit, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE19advanceTailToTicketEm.exit: ; preds = %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE16allocNextSegmentEPNS4_7SegmentE.exit.i, %bb.a
  %i.al = load atomic ptr, ptr %0 acquire, align 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load atomic ptr, ptr %i.am acquire, align 8
  store atomic ptr %i.an, ptr %0 monotonic, align 64
  tail call void @_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE14reclaimSegmentEPNS4_7SegmentE(ptr noundef nonnull align 64 dereferenceable(80) %0, ptr noundef nonnull %i.al) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_16ThreadedExecutor7controlEvE3$_0Lb0ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !103   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !719
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN5folly16ThreadedExecutor4workERNS_8FunctionIFvvEEE(ptr noundef nonnull align 64 dereferenceable(224) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @"_ZN5folly6detail8function11DispatchBig4execIZNS_16ThreadedExecutor7controlEvE3$_0EEmNS1_2OpEPNS1_4DataES8_"(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 align 2 {
bb.a:
  switch i32 %0, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 16, !tbaa !103
  store ptr %i.a, ptr %2, align 16, !tbaa !103
  store ptr null, ptr %1, align 16, !tbaa !103
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 16, !tbaa !103   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = tail call noundef i64 %i.e(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.f, ptr noundef null) #26, !inline_history !72 ; 0 uses
  br label %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit"

"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit": ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #34
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @abort() #35
  unreachable

bb.g:                                             ; preds = %bb.c, %"_ZZN5folly16ThreadedExecutor7controlEvEN3$_0D2Ev.exit", %bb.b, %bb.a
  ret i64 80
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE19tryEmplaceValueImplIS5_JRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISH_ISD_S4_EEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.232") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !686  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !598   ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

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
  %.sroa.01.0.copyload.i.i = load i64, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.ah, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ai, %bb.e ] ; 2 uses
  %i.l = and i64 %.026.i81, %i.k
  %i.m = shl nsw i64 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.m ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 3, i32 1)
  %i.p = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = and i32 %i.s, 16383
  %.not71 = icmp eq i32 %i.t, 0
  %i.u = extractelement <16 x i8> %i.p, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.v)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ae, %.critedge.i ], [ %i.s, %.preheader ] ; 4 uses
  %i.w = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ab, align 8, !tbaa !150
  %i.ac = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.ac, label %bb.f, label %.critedge.i, !prof !123

.critedge.i:                                      ; preds = %bb.d
  %i.ad = add nsw i32 %.sroa.044.0, -1
  %i.ae = and i32 %i.ad, %.sroa.044.0             ; 2 uses
  %i.af = and i32 %i.ae, 16382
  %.not72 = icmp eq i32 %i.af, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !73

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ag = icmp eq i8 %i.u, 0
  br i1 %i.ag, label %.thread69, label %bb.e, !prof !123

bb.e:                                             ; preds = %.loopexit
  %i.ah = add i64 %.024.i82, -1                   ; 2 uses
  %i.ai = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !74

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.aa, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !103
  %i.am = and i8 %i.al, 15
  %i.an = zext nneg i8 %i.am to i64               ; 2 uses
  %i.ao = shl i64 %i.an, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ao
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ap = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ap, i64 noundef %i.an, i64 noundef %i.ao)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !686
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !598
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.aq = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.ar = xor i64 %notmask.i33, -1                ; 2 uses
  %i.as = and i64 %2, %i.ar
  %i.at = shl nsw i64 %i.as, 8                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at ; 2 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16, !tbaa !103
  %i.aw = icmp eq <16 x i8> %i.av, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = and i16 %i.ax, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ay, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16reserveForInsertEm.exit
  %i.az = shl i64 %3, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bb = phi i64 [ %i.at, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bg, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 15 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !1837 ; 2 uses
  %.not.i34 = icmp eq i8 %i.be, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = add i8 %i.be, 1
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !1837
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bg = add i64 %i.ba, %.030                    ; 2 uses
  %i.bh = and i64 %i.bg, %i.ar
  %i.bi = shl nsw i64 %i.bh, 8                    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bi
  %i.bk = load <16 x i8>, ptr %i.bj, align 16     ; 2 uses
  %i.bl = icmp eq <16 x i8> %i.bk, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %i.bn = and i16 %i.bm, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bn, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !2526

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bi ; 2 uses
  %i.bp = extractelement <16 x i8> %i.bk, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.br = add i8 %i.bp, 16
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !1749
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ay, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16reserveForInsertEm.exit ], [ %i.bn, %bb.k ]
  %.1 = phi ptr [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16reserveForInsertEm.exit ], [ %i.bo, %bb.k ] ; 3 uses
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !103
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.25) #39
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.bx = trunc i64 %3 to i8
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !103
  %i.by = shl nuw nsw i64 %i.bt, 4
  %i.bz = getelementptr i8, ptr %.1, i64 %i.by    ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16     ; 4 uses
  %i.cb = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cb)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  %i.cc = load i64, ptr %6, align 8, !tbaa !1744
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !150
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !150
  %i.cf = getelementptr i8, ptr %i.bz, i64 24
  store i64 0, ptr %i.cf, align 8, !tbaa !107
  %i.cg = ptrtoint ptr %i.ca to i64
  %i.ch = or i64 %i.cg, %i.bt                     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1747
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE6setTagEmm.exit
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !150
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE6setTagEmm.exit, %bb.n
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !686 ; 2 uses
  %i.cm = and i64 %i.cl, -256
  %i.cn = add i64 %i.cm, 256
  %i.co = and i64 %i.cl, 255
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !686
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.aj, %bb.f ], [ %i.ca, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.y, %bb.f ], [ %i.bt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESC_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISD_S4_EEEEESJ_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !1746
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !150
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !2529
  ret void
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !686
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.238", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.60", align 1    ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !150
  store i64 %2, ptr %i.b, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.k = load ptr, ptr %0, align 8, !tbaa !598    ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !1838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8                            ; 2 uses
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i72 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i72, ptr %i.g, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i72) #40 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !704
  store i8 0, ptr %i.i, align 1, !tbaa !677
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %i.x = shl nsw i64 %.08.i, 8
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = shl i64 %.08.i, 8
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = shl i64 %.08.i, 8
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE10rehashImplEmmmmm:bb.a
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !150
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !150
  %i.bw = getelementptr i8, ptr %i.bp, i64 24
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !150
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !150
  store i64 0, ptr %i.bu, align 8, !tbaa !150
  %i.by = add nuw i64 %.055136, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.156 = phi i64 [ %i.by, %bb.f ], [ %.055136, %bb.c ] ; 3 uses
  %i.bz = add i64 %.057135, 1
  %i.ca = icmp ult i64 %.156, %1
  br i1 %i.ca, label %bb.c, label %._crit_edge139, !llvm.loop !2534

._crit_edge139:                                   ; preds = %bb.g
  %i.cb = add i64 %.156, -1                       ; 2 uses
  %i.cc = shl i64 %i.cb, 4
  %i.cd = getelementptr i8, ptr %i.v, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 16     ; 2 uses
  %i.cf = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %i.cg = and i64 %i.cb, 255                      ; 2 uses
  %i.ch = icmp samesign ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = or i64 %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !150
  br label %bb.aa

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %7, i8 0, i64 %4, i1 false)
  br label %.lr.ph134.preheader

bb.i:                                             ; preds = %bb.h
  %i.cl = icmp slt i64 %4, 0
  br i1 %i.cl, label %bb.j, label %bb.k, !prof !95

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #36
          to label %bb.m unwind label %bb.l       ; 3 uses

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  resume { ptr, i32 } %i.cn

bb.m:                                             ; preds = %bb.k
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1838
  %.pre150 = load i64, ptr %i.b, align 8, !tbaa !150
  %.pre151 = load i64, ptr %i.a, align 8, !tbaa !150 ; 2 uses
  %.pre152 = shl i64 %.pre150, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cm, i8 0, i64 %4, i1 false)
  %.not59131 = icmp eq i64 %.pre151, 0
  br i1 %.not59131, label %._crit_edge, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.thread, %bb.m
  %.0115166 = phi ptr [ %7, %.thread ], [ %i.cm, %bb.m ] ; 4 uses
  %i.co = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.m ]
  %i.cp = phi i64 [ %1, %.thread ], [ %.pre151, %bb.m ]
  %.pre-phi165 = phi i64 [ %i.p, %.thread ], [ %.pre152, %bb.m ]
  %i.cq = getelementptr i8, ptr %i.co, i64 %.pre-phi165
  br label %.lr.ph134

.loopexit:                                        ; preds = %bb.w, %.lr.ph134
  %.1.lcssa = phi i64 [ %.041132, %.lr.ph134 ], [ %i.cx, %bb.w ] ; 2 uses
  %.not59 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph134, !llvm.loop !2535

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %.loopexit
  %.042133.pn = phi ptr [ %.042133, %.loopexit ], [ %i.cq, %.lr.ph134.preheader ]
  %.041132 = phi i64 [ %.1.lcssa, %.loopexit ], [ %i.cp, %.lr.ph134.preheader ] ; 2 uses
  %.042133 = getelementptr i8, ptr %.042133.pn, i64 -256 ; 5 uses
  %i.cr = load <16 x i8>, ptr %.042133, align 16, !tbaa !103
  %i.cs = icmp eq <16 x i8> %i.cr, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = and i16 %i.ct, 16383                    ; 2 uses
  %.not116126 = icmp eq i16 %i.cu, 16383
  br i1 %.not116126, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph134
  %i.cv = xor i16 %i.cu, 16383
  %.sroa.081.0.extract.trunc = zext nneg i16 %i.cv to i32
  %i.cw = icmp ne ptr %.042133, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cw)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.w
  %.1129 = phi i64 [ %.041132, %.lr.ph ], [ %i.cx, %bb.w ]
  %.sroa.081.0128 = phi i32 [ %.sroa.081.0.extract.trunc, %.lr.ph ], [ %.sroa.081.1, %bb.w ] ; 3 uses
  %.sroa.8.0127 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %i.cx = add i64 %.1129, -1                      ; 2 uses
  %i.cy = and i32 %.sroa.081.0128, 1
  %.not.i74 = icmp eq i32 %i.cy, 0
  br i1 %.not.i74, label %bb.o, label %bb.p, !prof !95

bb.o:                                             ; preds = %bb.n
  %i.cz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.081.0128, i1 true) ; 2 uses
  %i.da = add i32 %i.cz, %.sroa.8.0127
  %i.db = add nuw nsw i32 %i.cz, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.8.1.in = phi i32 [ %i.da, %bb.o ], [ %.sroa.8.0127, %bb.n ] ; 2 uses
  %.pn117 = phi i32 [ %i.db, %bb.o ], [ 1, %bb.n ]
  %.sroa.081.1 = lshr i32 %.sroa.081.0128, %.pn117 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.dc = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 4
  %i.de = getelementptr i8, ptr %.042133, i64 %i.dd ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16     ; 2 uses
  %i.dg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 noundef 8, i64 noundef 3339675911)
          to label %bb.r unwind label %bb.q       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #35
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.dj = zext i64 %i.dg to i128
  %i.dk = mul nuw i128 %i.dj, 14181476777654086739
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64
  %i.dn = mul i64 %i.dg, -4265267296055464877
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = mul i64 %i.do, -4265267296055464877     ; 2 uses
  %i.dq = lshr i64 %i.dp, 14
  %i.dr = and i64 %i.dq, 255
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dr, i64 1) ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.042133, i64 %i.dc
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !103
  %i.du = zext i8 %i.dt to i64
  %i.dv = icmp eq i64 %.sroa.speculated.i.i, %i.du
  br i1 %i.dv, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.25) #39
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dw = lshr i64 %i.dp, 22
  %i.dx = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.dy = or disjoint i64 %i.dx, 1
  %i.dz = load i64, ptr %i.ba, align 8, !tbaa !686
  %i.ea = and i64 %i.dz, 255
  %notmask.i.i = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ec = load ptr, ptr %0, align 8, !tbaa !598   ; 2 uses
  %i.ed = and i64 %i.dw, %i.eb                    ; 4 uses
  %i.ee = shl nuw nsw i64 %i.ed, 8                ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0115166, i64 %i.ed
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !103 ; 2 uses
  %i.eh = icmp ult i8 %i.eg, 14
  br i1 %i.eh, label %._crit_edge.i, label %.lr.ph.i76, !prof !138

.lr.ph.i76:                                       ; preds = %bb.t, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i
  %i.ei = phi i64 [ %i.eq, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.ee, %bb.t ]
  %i.ej = phi i64 [ %i.ep, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i ], [ %i.ed, %bb.t ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 15 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !1837 ; 2 uses
  %.not.i.i = icmp eq i8 %i.em, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i76
  %i.en = add i8 %i.em, 1
  store i8 %i.en, ptr %i.el, align 1, !tbaa !1837
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.u, %.lr.ph.i76
  %i.eo = add i64 %i.dy, %i.ej
  %i.ep = and i64 %i.eo, %i.eb                    ; 4 uses
  %i.eq = shl nsw i64 %i.ep, 8                    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0115166, i64 %i.ep
  %i.es = load i8, ptr %i.er, align 1, !tbaa !103 ; 2 uses
  %i.et = icmp ult i8 %i.es, 14
  br i1 %i.et, label %._crit_edge.i, label %.lr.ph.i76, !prof !139, !llvm.loop !2536

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i, %bb.t
  %.lcssa22.i = phi i64 [ %i.ed, %bb.t ], [ %i.ep, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.t ], [ 16, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.ee, %bb.t ], [ %i.eq, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.eg, %bb.t ], [ %i.es, %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.pn.i ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0115166, i64 %.lcssa22.i
  %i.ev = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !103
  %i.ew = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.ew ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !103
  %i.ez = icmp eq i8 %i.ey, 0
  br i1 %i.ez, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.25) #39
  unreachable

bb.w:                                             ; preds = %._crit_edge.i
  %i.fa = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.fa, ptr %i.ex, align 1, !tbaa !103
  %i.fb = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !1749
  %i.fd = add i8 %i.fc, %.0.lcssa.i
  store i8 %i.fd, ptr %i.fb, align 2, !tbaa !1749
  %i.fe = shl nuw nsw i64 %i.ew, 4
  %i.ff = getelementptr i8, ptr %.lcssa21.i, i64 %i.fe ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 16     ; 2 uses
  %i.fh = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr i8, ptr %i.de, i64 24     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %i.fj = load i64, ptr %i.df, align 8, !tbaa !150
  store i64 %i.fj, ptr %i.fg, align 8, !tbaa !150
  %i.fk = getelementptr i8, ptr %i.ff, i64 24     ; 2 uses
  store i64 0, ptr %i.fk, align 8, !tbaa !107
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !150
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !150
  store i64 0, ptr %i.fi, align 8, !tbaa !150
  %.not116 = icmp eq i32 %.sroa.081.1, 0
  br i1 %.not116, label %.loopexit, label %bb.n, !llvm.loop !2537

._crit_edge:                                      ; preds = %.loopexit, %bb.m
  %.0115167 = phi ptr [ %i.cm, %bb.m ], [ %.0115166, %.loopexit ] ; 2 uses
  %i.fm = load i64, ptr %i.ba, align 8, !tbaa !686
  %i.fn = and i64 %i.fm, 255
  %i.fo = shl nuw i64 1, %i.fn
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.x
  %.0.in = phi i64 [ %i.fo, %._crit_edge ], [ %.0, %bb.x ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0115167, i64 %.0
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !103 ; 3 uses
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.x, label %bb.y, !llvm.loop !2538

bb.y:                                             ; preds = %bb.x
  %i.fs = load ptr, ptr %0, align 8, !tbaa !598
  %i.ft = shl nsw i64 %.0, 8
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 %i.ft ; 2 uses
  %i.fv = zext nneg i8 %i.fq to i64
  %i.fw = add nsw i64 %i.fv, -1                   ; 2 uses
  %i.fx = shl nuw nsw i64 %i.fw, 4
  %i.fy = getelementptr i8, ptr %i.fu, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 16     ; 2 uses
  %i.ga = icmp ne ptr %i.fu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ga)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fz) ]
  %i.gb = icmp ult i8 %i.fq, 17
  call void @llvm.assume(i1 %i.gb)
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = or i64 %i.fw, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !150
  br i1 %.not, label %bb.z, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.0115167, i64 noundef %4) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge139, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !677
  %i.gf = load i64, ptr %i.d, align 8, !tbaa !150
  %.not.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !1838 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gh = load i64, ptr %i.e, align 8, !tbaa !150
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gh) #26
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !707, !range !93, !noundef !94
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2543, !nonnull !94
  %i.e = load i8, ptr %i.d, align 1, !tbaa !677, !range !93, !noundef !94
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !123

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2544, !nonnull !94, !align !714
  %i.i = load i64, ptr %i.h, align 8, !tbaa !150
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2545, !nonnull !94, !align !714
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1838
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2546, !nonnull !94, !align !714
  %i.o = load i64, ptr %i.n, align 8, !tbaa !150
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2547 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2548, !nonnull !94, !align !714
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !704
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2549, !nonnull !94, !align !714
  %i.w = load i64, ptr %i.v, align 8, !tbaa !150
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2545, !nonnull !94, !align !714
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1838
  store ptr %i.z, ptr %i.q, align 8, !tbaa !598
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2550, !nonnull !94, !align !714
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !150 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !686
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !686
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #26
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyINSt6thread2idES6_vvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !150
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE11destroyItemERSt4pairIKS4_S3_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZN5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE11destroyItemERSt4pairIKS4_S3_E.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !686
  %i.d = add i64 %i.c, -256                       ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !686
  %i.e = and i64 %2, 255                          ; 2 uses
  %i.f = icmp samesign ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.f)
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1747
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit

bb.c:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE11destroyItemERSt4pairIKS4_S3_E.exit
  %i.l = icmp ult i64 %i.d, 256
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.e, %bb.d
  br label %.critedge.i.i.i

bb.e:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.d, %bb.e
  %i.o = phi i64 [ %i.q, %bb.e ], [ %2, %bb.d ]
  %i.p = phi ptr [ %i.r, %bb.e ], [ %1, %bb.d ]
  %i.q = add i64 %i.o, -1                         ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !103
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i, !prof !95, !llvm.loop !75

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.n, %.critedge.i.i.i.preheader ]
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256 ; 4 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16, !tbaa !103
  %i.w = icmp eq <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.y, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.f, !prof !95, !llvm.loop !76

bb.f:                                             ; preds = %.critedge.i.i.i
  %i.z = xor i16 %i.y, 16383
  %i.aa = zext nneg i16 %i.z to i32
  %i.ab = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aa, i1 true)
  %i.ac = xor i32 %i.ab, 31
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i64 %i.ad, 4
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.f, %bb.c
  %.sroa.01.0.i = phi ptr [ null, %bb.c ], [ %i.ah, %bb.f ], [ %i.r, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.c ], [ %i.ad, %bb.f ], [ %i.q, %thread-pre-split.i.i ]
  %i.ai = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = ptrtoint ptr %.sroa.01.0.i to i64
  %i.al = or i64 %i.ai, %i.ak
  store i64 %i.al, ptr %i.i, align 8, !tbaa !150
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit: ; preds = %_ZN5folly3f146detail20ValueContainerPolicyINSt6thread2idES3_vvvE11destroyItemERSt4pairIKS4_S3_E.exit, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKNSt6thread2idES5_EEEE17precheckedAdvanceEv.exit.i
  %i.am = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -16
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %.neg.i.i.i ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %2 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !103
  %.not.i.i7 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i7, label %bb.g, label %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE8clearTagEm.exit.i

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.25) #39
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEE.exit
  store i8 0, ptr %i.ao, align 1, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 14
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !1749
  %.not.i = icmp ult i8 %i.ar, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE8clearTagEm.exit.i
  %i.as = shl i64 %4, 1
  %i.at = or disjoint i64 %i.as, 1
  %i.au = load i64, ptr %i.b, align 8, !tbaa !686
  %i.av = and i64 %i.au, 255
  %notmask.i.i = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !598   ; 4 uses
  %i.ay = and i64 %3, %i.aw
  %i.az = shl nsw i64 %i.ay, 8                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = icmp eq ptr %i.ba, %i.an
  br i1 %i.bb, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %.010.lcssa.i = phi i8 [ 0, %bb.h ], [ -16, %bb.j ]
  %i.bc = phi i64 [ %i.az, %bb.h ], [ %i.bo, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 14 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !1749
  %i.bg = add i8 %i.bf, %.010.lcssa.i
  store i8 %i.bg, ptr %i.be, align 2, !tbaa !1749
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %i.bh = phi i64 [ %i.bo, %bb.j ], [ %i.az, %bb.h ]
  %.01126.i = phi i64 [ %i.bm, %bb.j ], [ %3, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 15 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !1837 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bk, -2
  br i1 %.not.i17.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bl = add i8 %i.bk, -1
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !1837
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.bm = add i64 %i.at, %.01126.i                ; 2 uses
  %i.bn = and i64 %i.bm, %i.aw
  %i.bo = shl nsw i64 %i.bn, 8                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bo
  %i.bq = icmp eq ptr %i.bp, %i.an
  br i1 %i.bq, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyINSt6thread2idES4_vvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS5_S4_EEEEESA_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKNSt6thread2idES4_EE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1 align 2

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #30 section ".text.startup" comdat($_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E6uniqueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E6uniqueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E6uniqueE, align 8
  tail call void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEJvS7_EEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS8_IJSB_EEENS8_IJSD_EEEE3arg) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_() #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.94() #30 section ".text.startup" comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_17hazptr_tc_tls_tagEvE6uniqueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_17hazptr_tc_tls_tagEvE6uniqueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_17hazptr_tc_tls_tagEvE6uniqueE, align 8
  tail call void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #32

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noreturn }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind }
attributes #27 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { nounwind willreturn memory(none) }
attributes #38 = { noreturn }
attributes #39 = { cold noreturn nounwind }
attributes #40 = { allocsize(0) }
attributes #41 = { cold }

!llvm.module.flags = !{!80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}
!llvm.errno.tbaa = !{!91}

!0 = distinct !{null, null}
!1 = distinct !{!1, !149}
!2 = distinct !{null, null, null}
!3 = distinct !{!3, !149}
!4 = distinct !{null, null, null}
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::thread::_State>", scope: !187, file: !245, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !322, templateParams: !324, identifier: "_ZTSSt14default_deleteINSt6thread6_StateEE")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<std::thread::_State, std::default_delete<std::thread::_State>, void>", scope: !17, file: !245, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !328, identifier: "_ZTSNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE4_PtrIS1_S3_vEE")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !187, file: !265, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !401, identifier: "_ZTSSt13__conditionalILb1EE")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !10, file: !475, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !485, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !187, file: !475, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !94, identifier: "_ZTSSt17__uses_alloc_base")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !187, file: !475, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !478, identifier: "_ZTSSt13__uses_alloc0")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !187, file: !475, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !490, identifier: "_ZTSSt15allocator_arg_t")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, std::thread::_State *, false>", scope: !187, file: !370, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !474, templateParams: !494, identifier: "_ZTSSt10_Head_baseILm0EPNSt6thread6_StateELb0EE")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<std::thread::_State>, true>", scope: !187, file: !370, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !553, templateParams: !557, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<std::thread::_State> >", scope: !187, file: !370, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !525, templateParams: !561, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !187, file: !370, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !446, templateParams: !565, identifier: "_ZTSSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !187, file: !370, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !399, templateParams: !566, identifier: "_ZTSSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!17 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !187, file: !245, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !369, templateParams: !568, identifier: "_ZTSSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<std::thread::_State, void>", scope: !187, file: !265, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !569, identifier: "_ZTSSt29__add_lvalue_reference_helperINSt6thread6_StateEvE")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::thread::_State>", scope: !187, file: !265, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !324, identifier: "_ZTSSt20add_lvalue_referenceINSt6thread6_StateEE")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<std::thread::_State, std::default_delete<std::thread::_State>, true, true>", scope: !187, file: !245, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !580, templateParams: !581, identifier: "_ZTSSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EE")
!21 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !187, file: !245, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !312, templateParams: !583, identifier: "_ZTSSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE")
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !23, file: !182, line: 92, size: 64, flags: DIFlagPublic | DIFlagTypePassByValue | DIFlagNonTrivial, elements: !592, identifier: "_ZTSNSt6thread2idE")
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !187, file: !182, line: 78, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !244, identifier: "_ZTSSt6thread")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_State", scope: !23, file: !182, line: 225, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt6thread6_StateE")
!25 = distinct !{null, null, null}
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !187, file: !652, line: 92, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt9type_info")
!27 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !656, file: !655, line: 49, baseType: !235, size: 32, elements: !660, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!28 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Mutex_base<(__gnu_cxx::_Lock_policy)2>", scope: !187, file: !602, line: 106, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !654, identifier: "_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE")
!29 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !187, file: !602, line: 125, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !651, vtableHolder: !29, templateParams: !662, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!30 = distinct !{null, null}
!31 = distinct !{!31, !149}
!32 = distinct !{!32, !149}
!33 = distinct !{null}
!34 = distinct !{!34, !149}
!35 = distinct !{null, null}
!36 = distinct !{!36, !149}
!37 = distinct !{!37, !149}
!38 = distinct !{!38, !149}
!39 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void ()>", scope: !187, file: !801, line: 111, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFvvEE")
!40 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (), false, void>", scope: !803, file: !729, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFvvELb0EvJEEE")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CoerceTag", scope: !803, file: !729, line: 248, size: 8, flags: DIFlagTypePassByValue, elements: !94, identifier: "_ZTSN5folly6detail8function9CoerceTagE")
!42 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void () const>", scope: !723, file: !729, line: 630, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8FunctionIKFvvEEE")
!43 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Op", scope: !803, file: !729, line: 234, baseType: !608, size: 32, flags: DIFlagEnumClass, elements: !807, identifier: "_ZTSN5folly6detail8function2OpE")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aligned_storage<48UL, 16UL>", scope: !802, file: !810, line: 652, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !816, identifier: "_ZTSN5folly6detail15aligned_storageILm48ELm16EEE")
!45 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "byte", scope: !187, file: !822, line: 69, baseType: !823, size: 8, flags: DIFlagEnumClass, elements: !94, identifier: "_ZTSSt4byte")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type", scope: !44, file: !810, line: 653, size: 384, flags: DIFlagTypePassByValue, elements: !821, identifier: "_ZTSN5folly6detail15aligned_storageILm48ELm16EE4typeE")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BigTrivialLayout", scope: !48, file: !729, line: 237, size: 192, flags: DIFlagTypePassByValue, elements: !827, identifier: "_ZTSN5folly6detail8function4Data16BigTrivialLayoutE")
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Data", scope: !803, file: !729, line: 236, size: 384, flags: DIFlagTypePassByValue, elements: !813, identifier: "_ZTSN5folly6detail8function4DataE")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FunctionTraits<void ()>", scope: !803, file: !729, line: 351, size: 8, flags: DIFlagTypePassByValue, elements: !835, templateParams: !837, identifier: "_ZTSN5folly6detail8function14FunctionTraitsIFvvEEE")
!50 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void ()>", scope: !723, file: !729, line: 630, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !800, templateParams: !837, identifier: "_ZTSN5folly8FunctionIFvvEEE")
!51 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !187, file: !1300, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!52 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !187, file: !1300, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!53 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !187, file: !1301, line: 45, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIcE")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !187, file: !1312, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !1354, identifier: "_ZTSSt15iterator_traitsIPKcE")
!55 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !656, file: !1300, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1352, templateParams: !1356, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<char *>", scope: !187, file: !1312, line: 198, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !1407, identifier: "_ZTSSt15iterator_traitsIPcE")
!57 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !656, file: !1300, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1405, templateParams: !1408, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sv_wrapper", scope: !70, file: !868, line: 160, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperE")
!59 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !187, file: !1300, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !187, file: !1557, line: 337, size: 8, flags: DIFlagTypePassByValue, elements: !1605, templateParams: !1606, identifier: "_ZTSSt11char_traitsIcE")
!61 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !187, file: !1409, line: 106, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1553, templateParams: !1556, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!62 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<const void *>", scope: !187, file: !1630, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1680, templateParams: !1682, identifier: "_ZTSSt15__new_allocatorIPKvE")
!63 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<char>", scope: !187, file: !1630, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1655, templateParams: !1684, identifier: "_ZTSSt15__new_allocatorIcE")
!64 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !187, file: !1607, line: 287, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1629, templateParams: !1684, identifier: "_ZTSSaIcE")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !69, file: !870, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !94, templateParams: !1684, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !868, line: 204, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !1690, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt0_E")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !70, file: !868, line: 181, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1701, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !187, file: !871, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !1723, templateParams: !1725, identifier: "_ZTSSt16allocator_traitsISaIcEE")
end_hunk_5
